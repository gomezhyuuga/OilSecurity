/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package admin;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

/**
 *
 * @author gomezhyuuga
 */
public class UpdateInventory extends HttpServlet {

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
        // GET PARAMS
        String type, location = "";
        int quantity = 0;

        int id = Integer.parseInt(request.getParameter("id"));
        type = request.getParameter("type");
        location = request.getParameter("location");
        quantity = Integer.parseInt(request.getParameter("quantity"));

        StringBuilder error = new StringBuilder();
        boolean err = false;

        String query = "UPDATE inventory SET "
                + "`type`='" + type + "',"
                + "`quantity`=" + quantity + ","
                + "`location`='" + location + "'"
                + "WHERE `id`= " + id + ";";

        Connection conn = null;
        try {
            DataSource ds = (DataSource) new InitialContext().lookup("java:/comp/env/jdbc/oilsec");
            conn = ds.getConnection();
        } catch (SQLException ex) {
            error.append(ex.getMessage()).append("\n");
            error.append(ex.getSQLState()).append("\n");
            error.append(ex.getErrorCode()).append("\n");
            System.out.println(error);
            err = true;
        } catch (NamingException ex) {
            Logger.getLogger(UpdateInventory.class.getName()).log(Level.SEVERE, null, ex);
            error.append(ex.getMessage());
            err = true;
        }

        // assume that conn is an already created JDBC connection (see previous examples)
        Statement stmt = null;
        ResultSet rs = null;

        try {
            stmt = conn.createStatement();
            int res = stmt.executeUpdate(query);
            if (res > 0) {
                System.out.println("AGREGADO CORRECTAMENTE");
                response.sendRedirect(request.getContextPath() + "/inventory");
            } else {
                err = true;
                error.append("NO SE MODIFICÓ NADA");
            }

        } catch (SQLException ex) {
            error.append(ex.getMessage()).append("\n");
            error.append(ex.getSQLState()).append("\n");
            error.append(ex.getErrorCode()).append("\n");
            System.out.println(error);
            err = true;
        }

        if (err) {
            response.sendError(500, error.toString());
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
        processRequest(request, response);
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
        processRequest(request, response);
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
