package action;



import dao.TVDao;

import entity.Video;

public class GoModifyAction {
	private Video video= new Video();
	private int id;
	private TVDao dao = new TVDao();
	
	
	public String execute() {
		
		try {
		video=dao.findVideoById(id);
		} catch (Exception e) {
			
			e.printStackTrace();
		}
		
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
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}




}
