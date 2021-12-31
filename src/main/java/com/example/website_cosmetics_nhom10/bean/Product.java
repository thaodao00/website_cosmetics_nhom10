package com.example.website_cosmetics_nhom10.bean;

import java.io.Serializable;

public class Product implements Serializable {
    Long id ;
    String name;
    String thumnailImg;
    double price;
    double discount;
    int sold;
    String shortDescription;
    String longDescription;
    double rate;
    String weight;
    String dimension;

    public Product(){

    }

    public Product(Long id, String name, String thumnailImg, double price, double discount, int sold, String shortDescription, String longDescription, double rate, String weight, String dimension) {
        this.id = id;
        this.name = name;
        this.thumnailImg = thumnailImg;
        this.price = price;
        this.discount = discount;
        this.sold = sold;
        this.shortDescription = shortDescription;
        this.longDescription = longDescription;
        this.rate = rate;
        this.weight = weight;
        this.dimension = dimension;
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

    public String getThumnailImg() {
        return thumnailImg;
    }

    public void setThumnailImg(String thumnailImg) {
        this.thumnailImg = thumnailImg;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public double getDiscount() {
        return discount;
    }

    public void setDiscount(double discount) {
        this.discount = discount;
    }

    public int getSold() {
        return sold;
    }

    public void setSold(int sold) {
        this.sold = sold;
    }

    public String getShortDescription() {
        return shortDescription;
    }

    public void setShortDescription(String shortDescription) {
        this.shortDescription = shortDescription;
    }

    public String getLongDescription() {
        return longDescription;
    }

    public void setLongDescription(String longDescription) {
        this.longDescription = longDescription;
    }

    public double getRate() {
        return rate;
    }

    public void setRate(double rate) {
        this.rate = rate;
    }

    public String getWeight() {
        return weight;
    }

    public void setWeight(String weight) {
        this.weight = weight;
    }

    public String getDimension() {
        return dimension;
    }

    public void setDimension(String dimension) {
        this.dimension = dimension;
    }
}
