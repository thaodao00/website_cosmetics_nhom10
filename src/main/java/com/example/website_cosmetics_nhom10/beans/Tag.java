package com.example.website_cosmetics_nhom10.beans;

public class Tag {
    private static Tag instance;

    public static Tag getInstance() {
        if (instance == null) {
            instance = new Tag();
        }
        return instance;
    }

    Long id;
    String name;

    public Tag() {

    }

    public Tag(Long id, String tagName) {
        this.id = id;
        this.name = tagName;
    }

    @Override
    public String toString() {
        return "Tag{" +
                "id='" + id + '\'' +
                ", tagName='" + name + '\'' +
                '}';
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
}
