package com.example.website_cosmetics_nhom10.beans;

public class Company {
    private static Company instance;
    Long id;
    String name;

    public Company() {

    }

    public Company getInstance() {
        if (instance == null)
            instance = new Company();
        return instance;
    }

    public Company(Long id, String name) {
        this.id = id;
        this.name = name;
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
        return "Company{" +
                "id='" + id + '\'' +
                ", name='" + name + '\'' +
                '}';
    }
}
