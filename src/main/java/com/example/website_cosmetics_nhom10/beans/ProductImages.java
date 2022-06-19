package com.example.website_cosmetics_nhom10.beans;

public class ProductImages {
    Long id;
    String link;
    Long pid;

    private static ProductImages instance;

    public ProductImages() {

    }

    public ProductImages getInstance() {
        if (instance == null)
            instance = new ProductImages();
        return instance;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getLink() {
        return link;
    }

    public void setLink(String link) {
        this.link = link;
    }

    public Long getPid() {
        return pid;
    }

    public void setPid(Long pid) {
        this.pid = pid;
    }

    @Override
    public String toString() {
        return "ProductImages{" +
                "id=" + id +
                ", link='" + link + '\'' +
                ", pid=" + pid +
                '}';
    }
}
