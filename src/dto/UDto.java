package dto;

/**
 * Created by jeonjin-il on 2017. 2. 6..
 */
public class UDto {
    int uKey;
    String uId;
    String uPass;
    String uName;

    public UDto() {
    }

    public UDto(int uKey,String uId, String uPass, String uName) {
        this.uKey = uKey;
        this.uId = uId;
        this.uPass = uPass;
        this.uName = uName;
    }

    public String getuId() {
        return uId;
    }

    public void setuId(String uId) {
        this.uId = uId;
    }

    public String getuPass() {
        return uPass;
    }

    public void setuPass(String uPass) {
        this.uPass = uPass;
    }

    public String getuName() {
        return uName;
    }

    public void setuName(String uName) {
        this.uName = uName;
    }

    public int getuKey() {
        return uKey;
    }
}
