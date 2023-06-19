package Phone;

import jakarta.servlet.*;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

import javax.sql.DataSource;
import java.io.*;
import java.util.List;

@WebServlet(value = "/PhoneServlet")
public class PhoneServlet extends HttpServlet {
    private PhoneDb phoneDb;
    private DataSource dataSource;


    @Override
    public void init() throws ServletException {
        super.init();
        try {
            phoneDb = new PhoneDb(dataSource);
        } catch (Exception exc) {
            throw new ServletException(exc);
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            String theCommand = request.getParameter("command");
            if (theCommand == null) {
                listPhone(request, response);
            } else {
                switch (theCommand) {
                    case "ADD":
                        addPhone(request, response);
                        break;
                    case "LOAD":
                        loadPhone(request, response);
                        break;
                    default:
                        listPhone(request, response);
                }
            }
        } catch (Exception exc) {
            throw new ServletException(exc);
        }
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    public void addPhone(HttpServletRequest request, HttpServletResponse response) throws Exception {
        String name = request.getParameter("name");
        String brand = request.getParameter("brand");
        double price = Double.parseDouble(request.getParameter("price"));
        String description = request.getParameter("description");
        Phone phone = new Phone(name, brand, price, description);
        phoneDb.addPhone(phone);

        // Chuyển hướng về trang chủ sau khi thêm thành công
        response.sendRedirect(request.getContextPath() + "/PhoneServlet");
    }


    public void loadPhone(HttpServletRequest request, HttpServletResponse response) throws Exception {
    }
    private void listPhone(HttpServletRequest request, HttpServletResponse response) throws Exception {
        List<Phone> p = phoneDb.getlistphone();
        request.setAttribute("PHONE_LIST", p);
        RequestDispatcher dispatcher = request.getRequestDispatcher("/listphone.jsp");
        dispatcher.forward(request, response);
    }
}