package test;

import dao.TVDao;
import entity.Video;

public class TestDao {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		TVDao d = new TVDao();
//		Video v= new Video();
//		v.setId(1);
//		
//		try {
//			
//			d.modify(v);
//		} catch (Exception e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
		System.out.println(d.listAll("id"));
	}

}
