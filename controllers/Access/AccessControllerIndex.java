package controllers.Access;

import java.util.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.time.*;
import java.time.format.DateTimeFormatter;

import javax.jdo.PersistenceManager;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.*;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.appengine.api.users.UserServiceFactory;

import model.entity.*;

@SuppressWarnings("serial")


public class AccessControllerIndex extends HttpServlet { 
	public void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		com.google.appengine.api.users.User cuentaGoogle = UserServiceFactory.getUserService().getCurrentUser();
		if(cuentaGoogle == null){ //no esta logeado
			RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/WEB-INF/Views/Errors/deny1.jsp");
			dispatcher.forward(req, resp);
		}
		else{  // lista de usuarios esta vacia
			PersistenceManager pm = PMF.get().getPersistenceManager();
			String query = "select from " + model.entity.User.class.getName() + " where email=='" + cuentaGoogle.getEmail() + "'" + "&& status==true";
			List<model.entity.User> uSearch = (List<model.entity.User>) pm.newQuery(query).execute();
			if(uSearch.isEmpty()){
				RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/WEB-INF/Views/Errors/deny2.jsp");
				dispatcher.forward(req, resp);
			}
			else{   // recursos estan vacios
				System.out.println(req.getServletPath());
				String query2 = "select from " + Resources.class.getName() + " where url=='" + req.getServletPath() + "'" + " && status==true";
				List<Resources> rSearch = (List<Resources>) pm.newQuery(query2).execute();
				if(rSearch.isEmpty()){
					RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/WEB-INF/Views/Errors/deny3.jsp");
					dispatcher.forward(req, resp);
				}
				else{
					String query3 = "SELECT FROM "+ Access.class.getName();
					List<Access> access = (List<Access>)pm.newQuery(query3).execute();
					req.setAttribute("access", access);

					String query4 = "SELECT FROM "+ Rol.class.getName();
					List<Rol> roles = (List<Rol>)pm.newQuery(query4).execute();
					req.setAttribute("roles", roles);

					String query5 = "SELECT FROM "+ Resources.class.getName();
					List<Resources> resources = (List<Resources>)pm.newQuery(query5).execute();
					req.setAttribute("resources", resources);
					pm.close();
					RequestDispatcher rd = this.getServletContext().getRequestDispatcher("/WEB-INF/Views/Access/index.jsp");
					rd.forward(req, resp);
				}
			}
		}
	}
}

