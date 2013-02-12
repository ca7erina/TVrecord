package dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

import util.DBUtil;
import util.JdbcUtil;

import entity.Video;

public class TVDao {
	
	public void delete(Integer[] ids){
		  Connection con = null;
		  PreparedStatement pstm=null;
		  try {
			  String sql="delete from video where id=?";
			  con= DBUtil.getConnection();
			  pstm =con.prepareStatement(sql);
			
			  con.setAutoCommit(false);
			
			  for (int i = 0; i < ids.length; i++) {
				pstm.setInt(1, ids[i]);
				pstm.addBatch();		
			   }
			  
			  pstm.executeBatch();
			  con.commit();		  
		//	System.out.println("recordes delected...");
		  } catch (Exception e) {
			e.printStackTrace();
		  } finally{
			  JdbcUtil.close(pstm, con);
		  }
		  
	  }
	  
	  
	
	public List<Video> listAll(String colName) {
		List<Video> videos= new ArrayList<Video>();
		Connection conn = null;
		PreparedStatement pstm = null;
		ResultSet rs = null;
		System.out.println("listAll:"+colName);
		try {
			String sql="select *from video order by "+colName+" desc";

			conn = DBUtil.getConnection();
			pstm=conn.prepareStatement(sql);
		
			rs=pstm.executeQuery();
			
							
			while (rs.next()) {
				Video v = new Video();
				v.setId(rs.getInt("id"));
				v.setName(rs.getString("name"));
				
				v.setHaveEp(rs.getInt("haveEp"));
				v.setHaveSe(rs.getInt("haveSe"));
				v.setWatchedEp(rs.getInt("watchedEp"));
				v.setWatchedSe(rs.getInt("watchedSe"));
				v.setNewestEp(rs.getInt("newestEp"));
				v.setNewestSe(rs.getInt("newestSe"));
				
				v.setRate(rs.getInt("rate"));
				v.setWatchUrl(rs.getString("watchUrl"));
				v.setDownloadUrl(rs.getString("downloadUrl"));
				v.setFilePath(rs.getString("filePath"));
				v.setModifyDate(rs.getDate("modifyDate"));
				//System.out.println("listall-->"+v);
				videos.add(v);
			}
		
		//	System.out.println("ListAll done...");
			return videos;
		} catch (SQLException e) {

			e.printStackTrace();
		} catch (Exception e) {

			e.printStackTrace();
		}finally {
			JdbcUtil.close(rs,pstm, conn);
		}
		return null;
	}
	public Video findVideoById(int id) {

		Connection conn = null;
		PreparedStatement pstm = null;
		ResultSet rs = null;

		try {
			String sql="select id,name,haveSe,haveEp,watchedSe,watchedEp,newestSe,newestEp,rate,watchUrl,downloadUrl,filePath,modifyDate from video where id=?";

			conn=DBUtil.getConnection();
			pstm=conn.prepareStatement(sql);
			pstm.setInt(1, id);
			rs=pstm.executeQuery();
			while (rs.next()) {
				Video v = new Video();
				v.setId(rs.getInt("id"));
				v.setName(rs.getString("name"));
				
				v.setHaveEp(rs.getInt("haveEp"));
				v.setHaveSe(rs.getInt("haveSe"));
				v.setWatchedEp(rs.getInt("watchedEp"));
				v.setWatchedSe(rs.getInt("watchedSe"));
				v.setNewestEp(rs.getInt("newestEp"));
				v.setNewestSe(rs.getInt("newestSe"));
				
				v.setRate(rs.getInt("rate"));
				v.setWatchUrl(rs.getString("watchUrl"));
				v.setDownloadUrl(rs.getString("downloadUrl"));
				v.setFilePath(rs.getString("filePath"));
				v.setModifyDate(rs.getDate("modifyDate"));
				
		//		System.out.println("finded video by id: "+v);
				return v;
				
			}
			
		} catch (Exception e) {

			e.printStackTrace();
			return null;
		}finally {
			JdbcUtil.close(rs,pstm, conn);
		}
	
		
		return null;
	}
	public List<Video> listAll() {
		List<Video> videos= new ArrayList<Video>();
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;

		try {
			rs = DBUtil.getConnection().createStatement().executeQuery(
							"select id,name,haveSe,haveEp,watchedSe,watchedEp,newestSe,newestEp,rate,watchUrl,downloadUrl,filePath,modifyDate from video order by modifyDate desc");

			while (rs.next()) {
				Video v = new Video();
				v.setId(rs.getInt("id"));
				v.setName(rs.getString("name"));
				
				v.setHaveEp(rs.getInt("haveEp"));
				v.setHaveSe(rs.getInt("haveSe"));
				v.setWatchedEp(rs.getInt("watchedEp"));
				v.setWatchedSe(rs.getInt("watchedSe"));
				v.setNewestEp(rs.getInt("newestEp"));
				v.setNewestSe(rs.getInt("newestSe"));
				
				v.setRate(rs.getInt("rate"));
				v.setWatchUrl(rs.getString("watchUrl"));
				v.setDownloadUrl(rs.getString("downloadUrl"));
				v.setFilePath(rs.getString("filePath"));
				v.setModifyDate(rs.getDate("modifyDate"));
				
				videos.add(v);
			}
		//	System.out.println("ListAll done...");
			return videos;
		} catch (SQLException e) {

			e.printStackTrace();
		} catch (Exception e) {

			e.printStackTrace();
		}finally {
			JdbcUtil.close(stmt, conn);
		}
		return null;
	}

	public void add(Video v) throws Exception {
		Connection con = null;
		PreparedStatement pstm = null;
		
		try {
			con = DBUtil.getConnection();
			String sql = "insert into video(name,haveSe,haveEp,watchedSe,watchedEp,newestSe,newestEp,rate,watchUrl,downloadUrl,filePath,modifyDate) values(?,?,?,?,?,?,?,?,?,?,?,?)";
			pstm = con.prepareStatement(sql);
			int index = 1;
			pstm.setString(index++, v.getName());
			pstm.setInt(index++,v.getHaveSe() );
			pstm.setInt(index++,v.getHaveEp() );
			pstm.setInt(index++,v.getWatchedSe() );
			pstm.setInt(index++,v.getWatchedEp());
			pstm.setInt(index++,v.getNewestSe());
			pstm.setInt(index++,v.getNewestEp());
			pstm.setInt(index++, v.getRate());
			
			pstm.setString(index++,v.getWatchUrl());
			pstm.setString(index++,v.getDownloadUrl());
			pstm.setString(index++,v.getFilePath());

		
			Date date=new Date(System.currentTimeMillis());
			SimpleDateFormat dayft= new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			
			pstm.setString(index++,dayft.format(date) );
			
			
			pstm.executeUpdate();
		//	System.out.println("video added :"+v);
		} catch (Exception e) {
			e.printStackTrace();
		
		} finally {
			JdbcUtil.close(pstm, con);
		}
	}
	public void modify(Video v) throws Exception {
		Connection con = null;
		PreparedStatement pstm = null;
		
		try {
			con = DBUtil.getConnection();
			String sql = "update video set name=?,haveSe=?,haveEp=?,watchedSe=?,watchedEp=?,newestSe=?,newestEp=?,rate=?,watchUrl=?,downloadUrl=?,filePath=?,modifyDate=? where id =?";
			pstm = con.prepareStatement(sql);
			int index = 1;

			pstm.setString(index++, v.getName());
			pstm.setInt(index++,v.getHaveSe() );
			pstm.setInt(index++,v.getHaveEp() );
			pstm.setInt(index++,v.getWatchedSe() );
			pstm.setInt(index++,v.getWatchedEp());
			pstm.setInt(index++,v.getNewestSe());
			pstm.setInt(index++,v.getNewestEp());
		
			pstm.setInt(index++, v.getRate());
			
			pstm.setString(index++,v.getWatchUrl());
			pstm.setString(index++,v.getDownloadUrl());
			pstm.setString(index++,v.getFilePath());

			Date date=new Date(System.currentTimeMillis());
			SimpleDateFormat dayft= new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			String datetime=dayft.format(date);
			pstm.setString(index++,datetime );
			
			pstm.setInt(index++,v.getId());
			pstm.executeUpdate();
		//	System.out.println("video updated :"+v);
		} catch (Exception e) {
			e.printStackTrace();
		
		} finally {
			JdbcUtil.close(pstm, con);
		}
	}
}
