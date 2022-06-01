/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import entities.Account;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import utilities.DBUtil;

/**
 *
 * @author quckh
 */
public class loginDAO {

    Connection con = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    public Account checkLogin(String userName, String password) {
        try {
            String query = "select * from [ChatbotShop1].[dbo].[Account] where userName = ? and password =?";
            con = DBUtil.getConnection();
            ps = con.prepareStatement(query);
            ps.setString(1, userName);
            ps.setString(2, password);
            rs = ps.executeQuery();
            while (rs.next()) {
                Account account = new Account(rs.getString(1), rs.getString(2));
                return account;
            }
        } catch (SQLException e) {

        }
        return null;
    }
}
