<%--
  Created by IntelliJ IDEA.
  User: jeonjin-il
  Date: 2017. 2. 11.
  Time: 오후 1:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <meta charset="UTF-8">
    <title>Title</title>
    <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>


</head>
<body>
<div class="container">
<form id="joinForm" action="join.do" method="post">
    <div class="boardWrite ">
        <table class="table table-bordered" border="1" summary="">
            <caption>회원 기본정보</caption>
            <tbody>
            <tr>
                <th scope="row">아이디 </th>
                <td><input id="uId" name="uId" type="text" >
                    <input type="button" id="checkid" value="중복검사" />
                    <div class="console"></div>
                </td>
            </tr>
            <tr>
                <th scope="row">비밀번호 </th>
                <td><input id="uPass" name="uPass"  type="password"> </td>
            </tr>
            <tr>
                <th scope="row">비밀번호 확인 </th>
                <td><input id="uPassConfirm" name="uPassConfirm"  type="password"> <span class="pwConfirm" id="pwConfirmMsg"></span> </td>
            </tr>

            <tr>
                <th scope="row" id="nameTitle">이름 </th>
                <td>
                    <span id="nameContents"><input type="text" name="uName" id="uName" maxlength="20"></span>

                </td>
            </tr>

            <tr >
                <th scope="row">성별 </th>
                <td><input id="sex1" name="uSex"  value="M" type="radio"><label >남자</label>
                    <input id="sex2" name="uSex"  value="F" type="radio"><label >여자</label></td>
            </tr>


            </tbody>
        </table>
    </div>
    <input type="button" id="join_button" value="가입하기"/>

</form>
</div>

<script>
    var idCheck = false;
    $("#checkid").click(function() {

        var input_id = $("input[name='uId']").val();
        console.log(input_id);


        var url = "idConfirm.jsp";
        $.get(url,{
            "user_id" : input_id
        }, function(data){
            var resut_text = $(data).find("result").text();
            console.log(resut_text);
            var result = eval($(data).find("result").text());

            if (result) {
                $(".console").html("<span style='color:blue'>사용할 수 있는 아이디 입니다.</span>");
                idCheck=true;
            } else {
                $(".console").html("<span style='color:red'>사용할 수 없는 아이디 입니다.</span>");
                idCheck=false;
            }
        });
    });

    $("#join_button").click(function(){

        if(!$("#uId").val()){
            alert("아이디를 입력해주세요");
            $("#uId").focus();
            return false;
        }
        else if(!$("#uPass").val() ){
            alert("비밀번호를 입력해주세요");
            $("#uPass").focus();
            return false;
        }
        else if(!$("#uPassConfirm").val()){
            alert("비밀번호를 입력해주세요");
            $("#uPassConfirm").focus();
            return false;
        }

        else if(!$("#uName").val()){
            alert("이름을 입력해주세요");
            $("#uName").focus();
            return false;
        }

        else if(!$("#sex1").is(":checked") && !$("#sex2").is(":checked")){
            alert("성별을 선택해주세요");
            return false;
        }
        else if(!idCheck){
            alert("아이디 중복 검사해주세요");
            return false;
        }
        else{
            alert("회원가입이 완료 되었습니다.");
            $("#joinForm").submit();
        }

    });

    $("#uPass ,#uPassConfirm").blur(function() {
        if( $("#uPass").val() == $("#uPassConfirm").val()){
            $(".pwConfirm").html("<span style='color:blue'>비밀번호가 같습니다.</span>");
        }else{
            $(".pwConfirm").html("<span style='color:red'>비밀번호가 다릅니다.</span>");
        }
        return false;
    });



</script>
</body>
</html>