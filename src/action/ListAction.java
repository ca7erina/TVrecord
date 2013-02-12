package action;

import java.util.ArrayList;
import java.util.List;

import dao.TVDao;


import entity.Video;

public class ListAction {
	List<Video> videos = new ArrayList<Video>();

	public String execute() {
		TVDao dao = new TVDao();
		videos =dao.listAll();
	//	System.out.println("video : " + videos);
		return "success";
	}

	public List<Video> getVideos() {
		return videos;
	}

	public void setVideos(List<Video> videos) {
		this.videos = videos;
	}



}
