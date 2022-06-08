package com.example.website_cosmetics_nhom10.beans;

public class Origin {
    private static Origin instance;

    public static Origin getInstance() {
        if (instance == null) {
            instance = new Origin();
        }
        return instance;
    }

    Long id;
    String name;

    public Origin() {

    }

    public Origin(Long id, String tagName) {
        this.id = id;
        this.name = tagName;
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

    @Override
    public String toString() {
        return "Origin{" +
                "id=" + id +
                ", name='" + name + '\'' +
                '}';
    }
}
