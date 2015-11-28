/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package admin;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;
import model.Item;

/**
 *
 * @author gomezhyuuga
 */
public class EditInventory extends HttpServlet {

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
        int id = Integer.parseInt(request.getParameter("id"));
        String query = "SELECT * FROM inventory WHERE id = " + id + ";";

        StringBuilder error = new StringBuilder();
        boolean err = false;

        Connection conn = null;
        try {
            DataSource ds = (DataSource) new InitialContext().lookup("java:/comp/env/jdbc/oilsec");
            conn = ds.getConnection();
        } catch (SQLException ex) {
            error.append(ex.getMessage()).append("\n");
            error.append(ex.getSQLState()).append("\n");
            error.append(ex.getErrorCode()).append("\n");
            err = true;
            System.out.println(error);
        } catch (NamingException ex) {
            Logger.getLogger(EditInventory.class.getName()).log(Level.SEVERE, null, ex);
            err = true;
            error.append(ex.getMessage());
        }

        // assume that conn is an already created JDBC connection (see previous examples)
        Statement stmt = null;
        ResultSet rs = null;

        try {
            stmt = conn.createStatement();

            if (stmt.execute(query)) {
                rs = stmt.getResultSet();

                System.out.println("QUERY");
                rs.next();
                String type = rs.getString("type");
                String location = rs.getString("location");
                int quantity = rs.getInt("quantity");
                Item item = new Item(location, type, quantity, id);
                System.out.println(item);

                ServletContext sc = getServletContext();
                RequestDispatcher rd = sc.getRequestDispatcher("/edit.jsp");
                request.setAttribute("item", item);
                rd.forward(request, response);
            } else {
                err = true;
                error.append("NO SE PUDO EDITAR");
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
