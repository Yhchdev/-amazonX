package com.amazon.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.amazon.entity.News;
import com.amazon.util.DBUtil;

public class NewsDao {
	//一条数据库记录对应一个对象   用什么写什么
	public List<News> findAll(){
		List<News> list = new ArrayList<News>();
		Connection con = DBUtil.getConnection();
		String sql = "select * from hwua_news";
		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				News n = new News();
				n.setHn_content(rs.getString("hn_content"));
				n.setHn_create_time(rs.getString("hn_create_time"));
				n.setHn_id(rs.getLong("hn_id"));
				n.setHn_title(rs.getString("hn_title"));
				list.add(n);
			}
			System.out.println(list);
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			DBUtil.close(con);
		}
		return list;
	}

    public News newsDetails(int nid){
        News news = new News();
        Connection con = DBUtil.getConnection();
        String sql = "select * from hwua_news where hn_id = ?";
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1,nid);
            ResultSet rs = ps.executeQuery();
            rs.next();
            news.setHn_id(rs.getLong("hn_id"));
            news.setHn_title(rs.getString("hn_title"));
            news.setHn_content(rs.getString("hn_content"));
            news.setHn_create_time(rs.getString("hn_create_time"));

        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            DBUtil.close(con);
        }
        return news;
    }
    public static void main(String arg[]){
	    NewsDao newsDao = new NewsDao();
	    News news = newsDao.newsDetails(2);
	    System.out.println(news);
    }
}

