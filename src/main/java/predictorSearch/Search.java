package predictorSearch;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import java.util.ArrayList;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
	 
public class Search extends HttpServlet {
	 
	    protected void doPost(HttpServletRequest request, HttpServletResponse response)
	            throws ServletException, IOException {
	        response.setContentType("text/html");
	        PrintWriter out = response.getWriter();
//	        Connection conn = null;
//	        String url = "jdbc:mysql://localhost:3306/";
//	        String dbName = "dbname";
//	        String driver = "com.mysql.jdbc.Driver";
//	        String userName = "root";
//	        String password = "dbpass";
	 
	        Statement st;
	        try {
//	            Class.forName(driver).newInstance();
//	            conn = DriverManager.getConnection(url + dbName, userName, password);
//	            System.out.println("Connected!");
	            String age = request.getParameter("age");
	            String foodpref = request.getParameter("foodpref");
	            String country = request.getParameter("country");
	            String married = request.getParameter("married");
	            String height = request.getParameter("height");
	            String weight = request.getParameter("weight");
	            String allergies = request.getParameter("allergies");
	            String smoking = request.getParameter("smoking");
	            String drinking = request.getParameter("drinking");
	            String diabetic = request.getParameter("diabetic");
	            String bp = request.getParameter("bp");
	            String hd = request.getParameter("hd");
	 
	            ArrayList al = null;
	            ArrayList pid_list = new ArrayList();
	 
//	            st = conn.createStatement();
//	            ResultSet rs = st.executeQuery(query);
//	 
//	            while (rs.next()) {
//	                al = new ArrayList();
//	 
////	                out.println(rs.getString(1));
////	                out.println(rs.getString(2));
////	                out.println(rs.getString(3));
////	                out.println(rs.getString(4));
//	                al.add(rs.getString(1));
//	                al.add(rs.getString(2));
//	                al.add(rs.getString(3));
//	                al.add(rs.getString(4));
//	 
//	                System.out.println("al :: " + al);
//	                pid_list.add(al);
//	            }
//	 
//	            request.setAttribute("piList", pid_list);
//	            RequestDispatcher view = request.getRequestDispatcher("/searchview.jsp");
//	            view.forward(request, response);
//	            conn.close();
	            System.out.println("Disconnected!");
	        } catch (Exception e) {
	            e.printStackTrace();
	        }
	    }
	 
	    /** 
	     * Returns a short description of the servlet.
	     * @return a String containing servlet description
	     */
	    @Override
	    public String getServletInfo() {
	        return "Short description";
	    }// </editor-fold>
	}