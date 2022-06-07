package com.example.website_cosmetics_nhom10.beans;

public class Origin {
    private static Origin instance;

    public static Origin getInstance() {
        if (instance == null) {
            instance = new Origin();
        }
        return instance;
    }

    String id;
    String name;

    public Origin() {

    }

    public Origin(String id, String tagName) {
        this.id = id;
        this.name = tagName;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

}
