package com.donut.web.dto;

public class FavoriteDTO {

	private int favoriteNo;
	private String id;
	private int projectNo;

	public FavoriteDTO() {}

	public FavoriteDTO(int favoriteNo, String id, int projectNo) {
		this.favoriteNo = favoriteNo;
		this.id = id;
		this.projectNo = projectNo;
	}

	public int getFavoriteNo() {
		return favoriteNo;
	}

	public void setFavoriteNo(int favoriteNo) {
		this.favoriteNo = favoriteNo;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public int getProjectNo() {
		return projectNo;
	}

	public void setProjectNo(int projectNo) {
		this.projectNo = projectNo;
	}

	@Override
	public String toString() {
		return "FavoriteDTO [favoriteNo=" + favoriteNo + ", id=" + id + ", projectNo=" + projectNo + "]";
	}
	
}
