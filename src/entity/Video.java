package entity;

import java.util.Date;

public class Video {
	int id;
	String name;
	int haveSe;
	int haveEp;
	int watchedSe;
	int watchedEp;
	int newestSe;
	int newestEp;
	int rate;
	String watchUrl;
	String downloadUrl;
	String filePath;
	Date modifyDate ;

	public Video() {
	}


	
	public int getId() {
		return id;
	}



	public void setId(int id) {
		this.id = id;
	}



	public String getName() {
		return name;
	}



	public void setName(String name) {
		this.name = name;
	}



	public int getHaveSe() {
		return haveSe;
	}



	public void setHaveSe(int haveSe) {
		this.haveSe = haveSe;
	}



	public int getHaveEp() {
		return haveEp;
	}



	public void setHaveEp(int haveEp) {
		this.haveEp = haveEp;
	}



	public int getWatchedSe() {
		return watchedSe;
	}



	public void setWatchedSe(int watchedSe) {
		this.watchedSe = watchedSe;
	}



	public int getWatchedEp() {
		return watchedEp;
	}



	public void setWatchedEp(int watchedEp) {
		this.watchedEp = watchedEp;
	}



	public int getNewestSe() {
		return newestSe;
	}



	public void setNewestSe(int newestSe) {
		this.newestSe = newestSe;
	}



	public int getNewestEp() {
		return newestEp;
	}



	public void setNewestEp(int newestEp) {
		this.newestEp = newestEp;
	}



	public int getRate() {
		return rate;
	}



	public void setRate(int rate) {
		this.rate = rate;
	}



	public String getWatchUrl() {
		return watchUrl;
	}



	public void setWatchUrl(String watchUrl) {
		this.watchUrl = watchUrl;
	}



	public String getDownloadUrl() {
		return downloadUrl;
	}







	public void setDownloadUrl(String downloadUrl) {
		this.downloadUrl = downloadUrl;
	}



	public String getFilePath() {
		return filePath;
	}



	public void setFilePath(String filePath) {
		this.filePath = filePath;
	}



	public Date getModifyDate() {
		return modifyDate;
	}



	public void setModifyDate(Date modifyDate) {
		this.modifyDate = modifyDate;
	}



	public String toString(){
		
		return id+":"+name+":"+haveSe+":"+haveEp+":"+watchedSe+":"+watchedEp+":"+newestSe+":"+newestEp+":"+rate+":"+watchUrl+":"+downloadUrl+":"+filePath+":"+modifyDate;
	}
	
}
