package com.example.board.model;

public class BoardVO {
    private int CatID;
    private String CatName;
    private String CatGender;
    private String CatType;
    private String CatColor;
    private int CatOld;
    private String CatBirthday;
    private String CatPersonality;
    private String CatHealth;

    public String getCatName() {
        return CatName;
    }

    public int getCatID() {
        return CatID;
    }

    public void setCatID(int catID) {
        CatID = catID;
    }

    public void setCatName(String catName) {
        CatName = catName;
    }

    public String getCatGender() {
        return CatGender;
    }

    public void setCatGender(String catGender) {
        CatGender = catGender;
    }

    public String getCatType() {
        return CatType;
    }

    public void setCatType(String catType) {
        CatType = catType;
    }

    public String getCatColor() {
        return CatColor;
    }

    public void setCatColor(String catColor) {
        CatColor = catColor;
    }

    public int getCatOld() {
        return CatOld;
    }

    public void setCatOld(int catOld) {
        CatOld = catOld;
    }

    public String getCatBirthday() {
        return CatBirthday;
    }

    public void setCatBirthday(String catBirthday) {
        CatBirthday = catBirthday;
    }

    public String getCatPersonality() {
        return CatPersonality;
    }

    public void setCatPersonality(String catPersonality) {
        CatPersonality = catPersonality;
    }

    public String getCatHealth() {
        return CatHealth;
    }

    public void setCatHealth(String catHealth) {
        CatHealth = catHealth;
    }
}

