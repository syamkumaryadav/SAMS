package com.syam.model;

import java.sql.Date;

public class Achievement {
    private String registrationId;
    private String name;
    private String branch;
    private String aType;
    private String achievements;
    private String prize;
    private String event;
    private String aYear;
    private Date eventDate;
    private String imagePath;

    // Getters and setters
    public String getRegistrationId() {
        return registrationId;
    }

    public void setRegistrationId(String registrationId) {
        this.registrationId = registrationId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getBranch() {
        return branch;
    }

    public void setBranch(String branch) {
        this.branch = branch;
    }

    public String getaType() {
        return aType;
    }

    public void setaType(String aType) {
        this.aType = aType;
    }

    public String getAchievements() {
        return achievements;
    }

    public void setAchievements(String achievements) {
        this.achievements = achievements;
    }

    public String getPrize() {
        return prize;
    }

    public void setPrize(String prize) {
        this.prize = prize;
    }

    public String getEvent() {
        return event;
    }

    public void setEvent(String event) {
        this.event = event;
    }

    public String getaYear() {
        return aYear;
    }

    public void setaYear(String aYear) {
        this.aYear = aYear;
    }

	public Date getEventDate() {
		return eventDate;
	}

	public void setEventDate(Date date) {
		this.eventDate = date;
	}

	public String getImagePath() {
		return imagePath;
	}

	public void setImagePath(String imagePath) {
		this.imagePath = imagePath;
	}
	
    
}
