package entity;

import java.util.Date;

public class Customer {
    private String name;
    private Date dob;
    private String address;
    private String img;

    public Customer(String name) {
        this.name = name;
    }
    public Customer(String name, Date dob, String address, String img) {
        this.name = name;
        this.dob = dob;
        this.address = address;
        this.img = img;
    }
    public String getName() {
        return name;
    }
    public void setName(String name) {
        this.name = name;
    }
    public Date getDob() {
        return dob;
    }
    public void setDob(Date dob) {
        this.dob = dob;
    }
    public String getAddress() {
        return address;
    }
    public void setAddress(String address) {
        this.address = address;
    }
    public String getImg() {
        return img;
    }
    public void setImg(String img) {
        this.img = img;
    }

    @Override
    public String toString() {
        return "Customer{" +
                "name='" + name + '\'' +
                ", dob=" + dob +
                ", address='" + address + '\'' +
                ", img='" + img + '\'' +
                '}';
    }
}

