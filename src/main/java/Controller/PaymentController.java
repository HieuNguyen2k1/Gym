/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller;

import DAO.OrderDAO;
import DAO.OrderDetailDAO;
import DAO.PaymentDAO;
import DAO.ProductDAO;
import Model.Config;
import Model.Order;
import Model.OrderDetail;
import Model.Payment;
import Model.Product;
import java.io.IOException;
import java.io.PrintWriter;
import java.net.URLEncoder;
import java.nio.charset.StandardCharsets;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Random;
import java.util.TimeZone;
import com.google.gson.JsonObject;
import com.google.gson.Gson;
import java.text.ParseException;
import java.util.Date;

import java.util.Enumeration;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author HP
 */
public class PaymentController extends HttpServlet {

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
            out.println("<title>Servlet PaymentController</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet PaymentController at " + request.getContextPath() + "</h1>");
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

        PaymentDAO paymentDao = new PaymentDAO();
        OrderDAO orderDao = new OrderDAO();
        String vnp_OrderInfo = request.getParameter("vnp_OrderInfo");
        String vnp_CreateDate = request.getParameter("vnp_CreateDate");
        SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");
        Date date = new Date();
        if (vnp_CreateDate != null) {
            try {
                date = sdf.parse(vnp_CreateDate);
            } catch (ParseException ex) {
                Logger.getLogger(PaymentController.class.getName()).log(Level.SEVERE, null, ex);
            }
        }

        String[] stringNumbers = vnp_OrderInfo.replaceAll(",$", "").split(",");
        List<Integer> idOrders = new ArrayList<>();
        for (String str : stringNumbers) {
            idOrders.add(Integer.parseInt(str));
        }
        if (!idOrders.isEmpty()) {
            for (Integer id : idOrders) {
                Order order = orderDao.GetOrderById(id);
                Payment payment = new Payment(order.getTotalPrice(), date, "Done", id);
                paymentDao.AddPayment(payment);
                orderDao.UpdateOrder(id);
            }
        }

        response.sendRedirect("index.jsp?success=success");

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
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {

        String[] selectedOrders = req.getParameterValues("SelectOrder");
        List<Order> orders = new ArrayList<>();
        List<OrderDetail> orderDetails = new ArrayList<>();
        List<Product> products = new ArrayList<>();
        String listId = "";

        if (selectedOrders != null) {

            ProductDAO proDao = new ProductDAO();
            OrderDAO orderDao = new OrderDAO();
            OrderDetailDAO orderDetailDao = new OrderDetailDAO();

            for (String orderId : selectedOrders) {
                listId += orderId + ",";
                int id = Integer.parseInt(orderId);
                Order order = orderDao.GetOrderById(id);
                if (order != null) {
                    orders.add(order);
                }
                OrderDetail orderDetail = orderDetailDao.GetOrderDetailByIdOrder(id);
                if (orderDetail != null) {
                    orderDetails.add(orderDetail);
                    Product product = proDao.GetProductById(orderDetail.getProId());
                    if (product != null) {
                        products.add(product);
                    }
                }
            }
        } else {
            RequestDispatcher dispatcher = req.getRequestDispatcher("index.jsp");
            dispatcher.forward(req, resp);
        }

        Random random = new Random();
        int randomNumber = 10000000 + random.nextInt(90000000);
        double amount = 0;

        for (Order order : orders) {
            if (order.getDiscount() > 0) {
                amount += order.getTotalPrice() * order.getDiscount();
            } else {
                amount += order.getTotalPrice();
            }
        }
        int price = (int) Math.round(amount) * 100 * 1000;
        String vnp_Version = "2.1.0";
        String vnp_Command = "pay";
        String vnp_TmnCode = getServletContext().getInitParameter("vnp_TmnCode");
        String vnp_OrderInfo = listId;
        String orderType = "Order";
        String vnp_TxnRef = String.valueOf(randomNumber);
        String vnp_IpAddr = Config.getIpAddress(req);

        Map vnp_Params = new HashMap<>();
        vnp_Params.put("vnp_Version", vnp_Version);
        vnp_Params.put("vnp_Command", vnp_Command);
        vnp_Params.put("vnp_TmnCode", vnp_TmnCode);
        vnp_Params.put("vnp_Amount", String.valueOf(price));
        vnp_Params.put("vnp_CurrCode", "VND");

        vnp_Params.put("vnp_OrderInfo", vnp_OrderInfo);
        vnp_Params.put("vnp_OrderType", orderType);
        vnp_Params.put("vnp_Locale", "vn");

        vnp_Params.put("vnp_ReturnUrl", getServletContext().getInitParameter("ReturnUrl"));
        vnp_Params.put("vnp_IpAddr", vnp_IpAddr);
        vnp_Params.put("vnp_TxnRef", vnp_TxnRef);

        Calendar cld = Calendar.getInstance(TimeZone.getTimeZone("Etc/GMT+7"));

        SimpleDateFormat formatter = new SimpleDateFormat("yyyyMMddHHmmss");
        String vnp_CreateDate = formatter.format(cld.getTime());

        vnp_Params.put("vnp_CreateDate", vnp_CreateDate);
        cld.add(Calendar.MINUTE, 15);
        String vnp_ExpireDate = formatter.format(cld.getTime());
        vnp_Params.put("vnp_ExpireDate", vnp_ExpireDate);

        List fieldNames = new ArrayList(vnp_Params.keySet());
        Collections.sort(fieldNames);
        StringBuilder hashData = new StringBuilder();
        StringBuilder query = new StringBuilder();
        Iterator itr = fieldNames.iterator();
        while (itr.hasNext()) {
            String fieldName = (String) itr.next();
            String fieldValue = (String) vnp_Params.get(fieldName);
            if ((fieldValue != null) && (fieldValue.length() > 0)) {
                //Build hash data
                hashData.append(fieldName);
                hashData.append('=');
                hashData.append(URLEncoder.encode(fieldValue, StandardCharsets.US_ASCII.toString()));
                //Build query
                query.append(URLEncoder.encode(fieldName, StandardCharsets.US_ASCII.toString()));
                query.append('=');
                query.append(URLEncoder.encode(fieldValue, StandardCharsets.US_ASCII.toString()));
                if (itr.hasNext()) {
                    query.append('&');
                    hashData.append('&');
                }
            }
        }

        String queryUrl = query.toString();
        String vnp_HashSecret = getServletContext().getInitParameter("vnp_HashSecret");
        String vnp_PayUrl = getServletContext().getInitParameter("vnp_Url");
        String vnp_SecureHash = Config.hmacSHA512(vnp_HashSecret, hashData.toString());
        queryUrl += "&vnp_SecureHash=" + vnp_SecureHash;

        String paymentUrl = vnp_PayUrl + "?" + queryUrl;
        resp.sendRedirect(paymentUrl);
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
