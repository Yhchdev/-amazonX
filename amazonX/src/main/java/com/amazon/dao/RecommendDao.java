package com.amazon.dao;
import com.amazon.entity.Recomments;
import com.amazon.util.DBUtil;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import java.sql.SQLException;



public class RecommendDao {

    public List<Recomments> top_5(){
        List<Recomments> list = new ArrayList<Recomments>();
        Connection conn = DBUtil.getConnection();
        String sql ="SELECT HP_ID,HP_NAME,HP_DESCRIPTION,HP_PRICE,HP_STOCK,HPC_CHILD_ID,HPC_ID,HP_FILE_NAME,Hp_SELLING_COUNT from hwua_product ORDER BY Hp_SELLING_COUNT desc LIMIT 5";
        try{
            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()){
                Recomments recomments = new Recomments();
                recomments.setHp_id(rs.getLong("hp_id"));
                recomments.setHp_name(rs.getString("hp_name"));
                recomments.setHp_description(rs.getString("hp_description"));
                recomments.setHp_price(rs.getLong("hp_price"));
                recomments.setHp_stock(rs.getLong("hp_stock"));
                recomments.setHpc_child_id(rs.getLong("hpc_child_id"));
                recomments.setHpc_id(rs.getLong("hpc_id"));
                recomments.setHp_file_name(rs.getString("hp_file_name"));
                recomments.setHp_selling_count(rs.getLong("hp_selling_count"));
                System.out.println(recomments);
                list.add(recomments);
            }


        }catch (SQLException e){
            e.printStackTrace();
        }finally{
            DBUtil.close(conn);
        }
        return list;
    }

}
