package repository;

import entity.Customer;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class CustomerRepo {
    private static List<Customer> customers = new ArrayList<>();

    static {
        SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
        try {
            Date dob = sdf.parse("20/08/1987");
            customers.add(new Customer("Mai Van Hoan", dob, "Hà Nội", "images/hinh1.png"));
            customers.add(new Customer("Nguyen Van Nam", dob, "Đà Nẵng", "images/hinh2.png"));
            customers.add(new Customer("Nguyễn Thái Hoà", dob, "Thanh Hoá", "images/hinh3.png"));
            customers.add(new Customer("Trần Đăng Khoa", dob, "Hải Dương", "images/hinh5.png"));
            customers.add(new Customer("Nguyễn Đình Thi", dob, "Phú Yên", "images/hinh4.png"));
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public List<Customer> findAll() {
        return customers;
    }

    public boolean addCustomer(Customer customer) {
        customers.add(customer);
        return true;
    }

}
