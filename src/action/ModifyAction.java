package action;

import java.util.ArrayList;
import java.util.List;

import dao.TVDao;


import entity.Video;

public class ModifyAction {
	private Video video= new Video();
	private TVDao dao = new TVDao();
	public String execute() {
		
		try {
			dao.modify(video);
		} catch (Exception e) {
			
			e.printStackTrace();
		}
		System.out.println("video : " + video);
		return "success";
	}
	public Video getVideo() {
		return video;
	}
	public void setVideo(Video video) {
		this.video = video;
	}
	public TVDao getDao() {
		return dao;
	}
	public void setDao(TVDao dao) {
		this.dao = dao;
	}




}
