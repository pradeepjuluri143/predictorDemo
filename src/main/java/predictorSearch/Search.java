package predictorSearch;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.ws.rs.core.MultivaluedMap;

import com.sun.jersey.api.client.Client;
import com.sun.jersey.api.client.ClientResponse;
import com.sun.jersey.api.client.WebResource;
import com.sun.jersey.api.client.filter.HTTPBasicAuthFilter;
import com.sun.jersey.core.util.MultivaluedMapImpl;

	 
public class Search extends HttpServlet {
	
	
		private static final String API_URL="https://ussouthcentral.services.azureml.net/workspaces/243426397da54efe9c2fb07178c3275a/services/ae31ab226c4541e69b8aae8c87f7c713/execute?api-version=2.0&details=true";
		private static final String API_KEY="gieDIjxOKiWBzrbPHUiUjDxB4HfU1w7ttTkQ/2O12uQ//6J3iUsnIHxI5lI6wFy1AVU81A7lg4tAX0cN08YBHg==";
	 
	    protected void doPost(HttpServletRequest request, HttpServletResponse response)
	            throws ServletException, IOException {
	        response.setContentType("text/html");
	        PrintWriter out = response.getWriter();
	 
	        Statement st;
	        try {
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
	            
	            Client client = Client.create();
	            WebResource webResource = client
	         		   .resource(API_URL);
	            MultivaluedMap<String, String> queryParams = new MultivaluedMapImpl();
	            queryParams.add("age", "44"); //set parametes for request
	            queryParams.add("education", "Doctorate");
	            queryParams.add("marital-status", "Married-civ-spouse");
	            queryParams.add("relationship", "Own-Child");
	            queryParams.add("race", "white");
	            queryParams.add("sex", "female");
	            String appKey = "Bearer " + API_KEY;

	            ClientResponse webresponse = webResource.queryParams(queryParams).header("Content-Type", "application/json;charset=UTF-8")
	            							.header("Authorization", appKey).get(ClientResponse.class);

	            if (webresponse.getStatus() != 201) {
	    			throw new RuntimeException("Failed : HTTP error code : "
	    			     + webresponse.getStatus());
	    		}

	    		System.out.println("Output from Server .... \n");
	    		String output = webresponse.getEntity(String.class);
	    		System.out.println(output);

	            
	            
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