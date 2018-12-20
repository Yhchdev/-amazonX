package com.amazon.dao;

import com.amazon.entity.Category;
import com.amazon.util.DBUtil;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;


public class CategoryDao {
    public List<Category> findParent(){
        List<Category> list = new ArrayList<Category>();
        String sql = "select * from hwua_product_category where hpc_id=hpc_parent_id";
        Connection con = DBUtil.getConnection();
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()){
                Category category = new Category();
                category.setHpc_id(rs.getLong("hpc_id"));
                category.setHpc_name(rs.getString("hpc_name"));
                category.setHpc_parent_id(rs.getLong("hpc_parent_id"));
                list.add(category);
            }
        }catch (SQLException e){
            e.printStackTrace();
        }finally {
            DBUtil.close(con);
        }
        return list;
    }

    public List<Category> findChild(){
        List<Category> list = new ArrayList<Category>();
        String sql = "select * from hwua_product_category where hpc_id!=hpc_parent_id";
        Connection con = DBUtil.getConnection();
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()){
                Category category = new Category();
                category.setHpc_id(rs.getLong("hpc_id"));
                category.setHpc_name(rs.getString("hpc_name"));
                category.setHpc_parent_id(rs.getLong("hpc_parent_id"));
                list.add(category);
            }
        }catch (SQLException e){
            e.printStackTrace();
        }finally {
            DBUtil.close(con);
        }
        return list;
    }

//    public static  void main(){
//        CategoryDao categoryDao = new CategoryDao();
//        System.out.println(categoryDao.findChild());
//    }
}
