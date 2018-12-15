package com.donut.web.dto;

public class ItemDTO {

	private int projectItemNo;
	private int ProjectNo;
	private String ItemName;
	private int ItemPrice;
	private int itemAmount;
	private int goalAmount;

	public ItemDTO() {}

	public ItemDTO(int projectItemNo, int projectNo, String itemName, int itemPrice, int itemAmount, int goalAmount) {
		this.projectItemNo = projectItemNo;
		this.ProjectNo = projectNo;
		this.ItemName = itemName;
		this.ItemPrice = itemPrice;
		this.itemAmount = itemAmount;
		this.goalAmount = goalAmount;
	}

	public int getProjectItemNo() {
		return projectItemNo;
	}

	public void setProjectItemNo(int projectItemNo) {
		this.projectItemNo = projectItemNo;
	}

	public int getProjectNo() {
		return ProjectNo;
	}

	public void setProjectNo(int projectNo) {
		ProjectNo = projectNo;
	}

	public String getItemName() {
		return ItemName;
	}

	public void setItemName(String itemName) {
		ItemName = itemName;
	}

	public int getItemPrice() {
		return ItemPrice;
	}

	public void setItemPrice(int itemPrice) {
		ItemPrice = itemPrice;
	}

	public int getItemAmount() {
		return itemAmount;
	}

	public void setItemAmount(int itemAmount) {
		this.itemAmount = itemAmount;
	}

	public int getGoalAmount() {
		return goalAmount;
	}

	public void setGoalAmount(int goalAmount) {
		this.goalAmount = goalAmount;
	}

	@Override
	public String toString() {
		return "ItemDTO [projectItemNo=" + projectItemNo + ", ProjectNo=" + ProjectNo + ", ItemName=" + ItemName
				+ ", ItemPrice=" + ItemPrice + ", itemAmount=" + itemAmount + ", goalAmount=" + goalAmount + "]";
	}


	
	
}
