package dao;

import dto.BDto;
import dto.UDto;

import java.sql.*;
import java.util.ArrayList;

/**
 * Created by jeonjin-il on 2017. 1. 24..
 */
public class BDao {
    final String JDBC_DRIVER = "com.mysql.jdbc.Driver";
    final String DB_URL = "jdbc:mysql://localhost:3306/test?autoReconnect=true&useSSL=false&characterEncoding=euckr";
    final String USER = "root";
    final String PASS = "1234";
    Connection conn = null;
    Statement stmt = null;

    public BDao() {
        try {
            Class.forName("com.mysql.jdbc.Driver");
        } catch (Exception e) {
            e.getMessage();
        }
    }

    public void write(String bName, String bTitle, String bContent) {
        try {
            conn = DriverManager.getConnection(DB_URL, USER, PASS);

            String sql = "insert into mvc_board (bName,bTitle,bContent,bHit)" +
                    "values (?,?,?,?)";

            PreparedStatement preparedStatement = conn.prepareStatement(sql);

            preparedStatement.setString(1, bName);
            preparedStatement.setString(2, bTitle);
            preparedStatement.setString(3, bContent);
            preparedStatement.setInt(4, 0);

            int result = preparedStatement.executeUpdate();


        } catch (Exception e) {
            e.getMessage();
        } finally {
            try {
                if (stmt != null)
                    conn.close();
            } catch (SQLException se) {
            }// do nothing
            try {
                if (conn != null)
                    conn.close();
            } catch (SQLException se) {
                se.printStackTrace();
            }//end finally try
        }//end try

    }

    public ArrayList<BDto> list() {
        ArrayList<BDto> dtos = new ArrayList<BDto>();
        try {
            conn = DriverManager.getConnection(DB_URL, USER, PASS);

            String sql = "select * from mvc_board ";
            PreparedStatement preparedStatement = conn.prepareStatement(sql);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                int bId = resultSet.getInt("bId");
                String bName = resultSet.getString("bName");
                String bTitle = resultSet.getString("bTitle");
                String bContent = resultSet.getString("bContent");
                Timestamp bDate = resultSet.getTimestamp("bDate");
                int bHit = resultSet.getInt("bHit");
                BDto dto = new BDto(bId, bName, bTitle, bContent, bDate, bHit);
                dtos.add(dto);
            }

        } catch (Exception e) {
            e.getMessage();
        } finally {
            try {
                if (stmt != null)
                    conn.close();
            } catch (SQLException se) {
            }// do nothing
            try {
                if (conn != null)
                    conn.close();
            } catch (SQLException se) {
                se.printStackTrace();
            }//end finally try
        }//end try
        return  dtos;
    }

    public BDto contentView(int bId){
        changeHit(bId);
        BDto dto = new BDto();
        try {
            conn = DriverManager.getConnection(DB_URL, USER, PASS);

            String sql = "select * from mvc_board where bId=?";
            PreparedStatement preparedStatement = conn.prepareStatement(sql);
            preparedStatement.setInt(1,bId);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                String bName = resultSet.getString("bName");
                String bTitle = resultSet.getString("bTitle");
                String bContent = resultSet.getString("bContent");
                Timestamp bDate = resultSet.getTimestamp("bDate");
                int bHit = resultSet.getInt("bHit");
                dto = new BDto(bId, bName, bTitle, bContent, bDate, bHit);
            }

        } catch (Exception e) {
            e.getMessage();
        } finally {
            try {
                if (stmt != null)
                    conn.close();
            } catch (SQLException se) {
            }// do nothing
            try {
                if (conn != null)
                    conn.close();
            } catch (SQLException se) {
                se.printStackTrace();
            }//end finally try
        }//end try
        return dto;
    }

    public void changeHit(int bId) {
        try {
            conn = DriverManager.getConnection(DB_URL, USER, PASS);

            String sql = "update mvc_board set bHit = bHit +1 where bId = ?";

            PreparedStatement preparedStatement = conn.prepareStatement(sql);

            preparedStatement.setInt(1, bId);

            int result = preparedStatement.executeUpdate();

        } catch (Exception e) {
            e.getMessage();
        } finally {
            try {
                if (stmt != null)
                    conn.close();
            } catch (SQLException se) {
            }// do nothing
            try {
                if (conn != null)
                    conn.close();
            } catch (SQLException se) {
                se.printStackTrace();
            }//end finally try
        }//end try
    }

    public void modify(String bId,String bTitle,String bContent){
        try {
            conn = DriverManager.getConnection(DB_URL, USER, PASS);

            String sql = "update mvc_board set  bTitle=?, bContent=? where bId = ?";

            PreparedStatement preparedStatement = conn.prepareStatement(sql);

            preparedStatement.setString(1, bTitle);
            preparedStatement.setString(2, bContent);
            preparedStatement.setInt(3, Integer.parseInt(bId));

            int result = preparedStatement.executeUpdate();

        } catch (Exception e) {
            e.getMessage();
        } finally {
            try {
                if (stmt != null)
                    conn.close();
            } catch (SQLException se) {
            }// do nothing
            try {
                if (conn != null)
                    conn.close();
            } catch (SQLException se) {
                se.printStackTrace();
            }//end finally try
        }//end try
    }


    public void delete(String bId){
        try {
            conn = DriverManager.getConnection(DB_URL, USER, PASS);

            String sql = "DELETE FROM mvc_board where bId = ?";

            PreparedStatement preparedStatement = conn.prepareStatement(sql);

            preparedStatement.setInt(1, Integer.parseInt(bId));

            int result = preparedStatement.executeUpdate();

        } catch (Exception e) {
            e.getMessage();
        } finally {
            try {
                if (stmt != null)
                    conn.close();
            } catch (SQLException se) {
            }// do nothing
            try {
                if (conn != null)
                    conn.close();
            } catch (SQLException se) {
                se.printStackTrace();
            }//end finally try
        }//end try
    }

    public void reply(int bId,String bName, String bTitle ,String bContent){


        try {
            conn = DriverManager.getConnection(DB_URL, USER, PASS);

            String sql = "insert into mvc_board (bName,bTitle,bContent)" +
                    "values (?,?,?)";

            PreparedStatement preparedStatement = conn.prepareStatement(sql);

            preparedStatement.setString(1, bName);
            preparedStatement.setString(2, bTitle);
            preparedStatement.setString(3, bContent);

            int result = preparedStatement.executeUpdate();

        } catch (Exception e) {
            e.getMessage();
        } finally {
            try {
                if (stmt != null)
                    conn.close();
            } catch (SQLException se) {
            }// do nothing
            try {
                if (conn != null)
                    conn.close();
            } catch (SQLException se) {
                se.printStackTrace();
            }//end finally try
        }//end try

    }

    //아이디 중복검사
    public boolean idConfirm(String id){
        boolean result = true;
        try {
            conn = DriverManager.getConnection(DB_URL, USER, PASS);

            String sql ="select uId from mvc_user where uId= ? ";

            PreparedStatement preparedStatement = conn.prepareStatement(sql);
            preparedStatement.setString(1,id);

            ResultSet rs = preparedStatement.executeQuery();

            if(rs.next()){
                result= false;
            }

        } catch (Exception e) {
            e.getMessage();
        } finally {
            try {
                if (stmt != null)
                    conn.close();
            } catch (SQLException se) {
            }// do nothing
            try {
                if (conn != null)
                    conn.close();
            } catch (SQLException se) {
                se.printStackTrace();
            }//end finally try
        }//end try
        return result;
    }

    //로그인 확인
    public UDto login(String id,String pass){
        UDto dto = null;
        try {
            conn = DriverManager.getConnection(DB_URL, USER, PASS);

            String sql = "select * from mvc_user ";
            PreparedStatement preparedStatement = conn.prepareStatement(sql);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                int uKey = resultSet.getInt("uKey");
                String uId = resultSet.getString("uId");
                String uPass = resultSet.getString("uPass");
                String uName = resultSet.getString("uName");
                if(id.equals(uId) && pass.equals(uPass))
                    dto = new UDto(uKey,uId,uPass,uName);
            }

        } catch (Exception e) {
            e.getMessage();
        } finally {
            try {
                if (stmt != null)
                    conn.close();
            } catch (SQLException se) {
            }// do nothing
            try {
                if (conn != null)
                    conn.close();
            } catch (SQLException se) {
                se.printStackTrace();
            }//end finally try
        }//end try
        return dto;
    }

    //회원가입 하기
    public void join(String uId, String uPass, String uName,String uSex) {
        try {
            conn = DriverManager.getConnection(DB_URL, USER, PASS);

            String sql = "insert into mvc_user (uId,uPass,uName,uSex)" +
                    "values (?,?,?,?)";

            PreparedStatement preparedStatement = conn.prepareStatement(sql);

            preparedStatement.setString(1, uId);
            preparedStatement.setString(2, uPass);
            preparedStatement.setString(3, uName);
            preparedStatement.setString(4, uSex);

            int result = preparedStatement.executeUpdate();


        } catch (Exception e) {
            e.getMessage();
        } finally {
            try {
                if (stmt != null)
                    conn.close();
            } catch (SQLException se) {
            }// do nothing
            try {
                if (conn != null)
                    conn.close();
            } catch (SQLException se) {
                se.printStackTrace();
            }//end finally try
        }//end try

    }

}
