/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller;

import DAO.OrderDAO;
import DAO.OrderDetailDAO;
import DAO.ProductDAO;
import Model.Order;
import Model.OrderDetail;
import Model.Product;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.time.LocalDate;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author HP
 */
public class ProductDetail extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet ProductDetail</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ProductDetail at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String proId = request.getParameter("productid");

        ProductDAO proDao = new ProductDAO();
        if (proId != null) {
            int id = Integer.parseInt(proId);
            Product product = proDao.GetProductById(id);
            request.setAttribute("product", product);
        }
        RequestDispatcher dispatcher = request.getRequestDispatcher("productDetail.jsp");
        dispatcher.forward(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String proId = request.getParameter("proId");
        String quantity = request.getParameter("quantity");
        HttpSession session = request.getSession();

        if (proId != null && quantity != null) {
            ProductDAO proDao = new ProductDAO();
            OrderDAO orderDao = new OrderDAO();
            OrderDetailDAO orderDetailDao = new OrderDetailDAO();

            int idPro = Integer.parseInt(proId);
            int count = Integer.parseInt(quantity);
            int idUser = (int) session.getAttribute("IdUser");

            Product product = proDao.GetProductById(idPro);
            double price = count * product.getPrice();
            LocalDate today = LocalDate.now();
            Date now = Date.valueOf(today);

            Order order = new Order(now, now, price, 0, "Ship Extra", "c", idUser);
            int idOrder = orderDao.AddOrder(order);
            OrderDetail orderDetail = new OrderDetail(idOrder, count, price, idPro, product.getPrice());
            orderDetailDao.AddOrderDetail(orderDetail);
            response.sendRedirect("ProductController");
        } else {
            response.sendRedirect("ProductController");
        }

    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
