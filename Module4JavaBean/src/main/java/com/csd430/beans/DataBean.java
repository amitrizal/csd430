package com.csd430.beans;

import java.io.Serializable;

public class DataBean implements Serializable {
    private String name;
    private String city;
    private String state;
    private int zipCode;
    private String email;

    public DataBean() {}

    public String getName() { return name; }
    public void setName(String name) { this.name = name; }

    public String getCity() { return city; }
    public void setCity(String city) { this.city = city; }

    public String getState() { return state; }
    public void setState(String state) { this.state = state; }

    public int getZipCode() { return zipCode; }
    public void setZipCode(int zipCode) { this.zipCode = zipCode; }

    public String getEmail() { return email; }
    public void setEmail(String email) { this.email = email; }
}
