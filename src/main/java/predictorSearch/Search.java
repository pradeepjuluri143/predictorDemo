package predictorSearch;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;

import javax.servlet.RequestDispatcher;
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
	        String output;
	        try {
	            String age = request.getParameter("age");
	            String gender = request.getParameter("gender");
	            String maritalStatus = request.getParameter("maritalStatus");
	            String country = request.getParameter("country");
	            String smoking = request.getParameter("smoking");
	            String drinking = request.getParameter("drinking");
	            String diabetic = request.getParameter("diabetic");
	            String bis = request.getParameter("bis");
	            String biu = request.getParameter("biu");
	            String ciu = request.getParameter("ciu");
	            String lbc = request.getParameter("lbc");
	            String dis = request.getParameter("dis");
	            String  freqHeadAches=request.getParameter("freqHeadAches");
	            
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
	    		 output = webresponse.getEntity(String.class);
	    		System.out.println(output);

	            request.getSession().setAttribute("ResponseResults", "85% chances for Cancer");
	            
	        } catch (Exception e) {
	            e.printStackTrace();
	        }
	        
	        RequestDispatcher rd=request.getRequestDispatcher("searchResults.jsp");  
	        rd.forward(request, response);
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