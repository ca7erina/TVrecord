package action;

import java.util.ArrayList;
import java.util.List;

import dao.TVDao;


import entity.Video;

public class ListAllAction {
	List<Video> videos = new ArrayList<Video>();
	TVDao dao = new TVDao();
	String col;
	public String execute() {
		
		videos =dao.listAll(col);
		System.out.println("list order by ->"+ col+" :" + videos);
		return "success";
	}

	public List<Video> getVideos() {
		return videos;
	}

	public void setVideos(List<Video> videos) {
		this.videos = videos;
	}

	public TVDao getDao() {
		return dao;
	}

	public void setDao(TVDao dao) {
		this.dao = dao;
	}

	public String getCol() {
		return col;
	}

	public void setCol(String col) {
		this.col = col;
	}



}
