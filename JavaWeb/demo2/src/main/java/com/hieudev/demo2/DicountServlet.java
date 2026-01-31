package com.hieudev.demo2;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet (name = "DicountServlet", value = "/discount")
public class DicountServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String describe = req.getParameter("describe");
        float price = Float.parseFloat(req.getParameter("price"));
        float discount = Float.parseFloat(req.getParameter("discount"));

        float result = price * discount * 0.01f;

        req.setAttribute("describe", describe);
        req.setAttribute("price", price);
        req.setAttribute("discount", discount);
        req.setAttribute("result", result);
        req.getRequestDispatcher("/index.jsp").forward(req, resp);
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String describe = req.getParameter("describe");
        float price = Float.parseFloat(req.getParameter("price"));
        float discount = Float.parseFloat(req.getParameter("discount"));

        float result = price * discount * 0.01f;

        req.setAttribute("describe", describe);
        req.setAttribute("price", price);
        req.setAttribute("discount", discount);
        req.setAttribute("result", result);
        req.getRequestDispatcher("/index.jsp").forward(req, resp);
    }
}