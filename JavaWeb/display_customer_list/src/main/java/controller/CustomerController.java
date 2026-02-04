package controller;


import entity.Customer;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import repository.CustomerRepo;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@WebServlet (name = "CustomerController" , value = "/list-customer")
public class CustomerController extends  HttpServlet {
    private CustomerRepo customerRepo = new CustomerRepo();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        req.setAttribute("customers", customerRepo.findAll());

        req.getRequestDispatcher("WEB-INF/demo.jsp").forward(req, resp);
    }
}
