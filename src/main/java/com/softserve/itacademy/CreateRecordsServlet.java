package com.softserve.itacademy;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/records/create")
public class CreateRecordsServlet extends HttpServlet {

  String firstname;
  String lastname;
  String address;
  private AddressBook addressBook;

  @Override
  public void init() {
    addressBook = AddressBook.getInstance();
  }

  protected void doPost(HttpServletRequest request, HttpServletResponse response)
      throws IOException, ServletException {

    firstname = request.getParameter("firstname");
    lastname = request.getParameter("lastname");
    address = request.getParameter("address");

    if (!addressBook.create(firstname, lastname, address)) {

      request.setAttribute("error", "An error occurred! Please tru again");
      request.setAttribute("firstname", firstname);
      request.setAttribute("lastname", lastname);
      request.setAttribute("address", address);
      request.getRequestDispatcher("/WEB-INF/create-record.jsp").forward(request, response);
    }
    response.sendRedirect("/records/list");
  }

  protected void doGet(HttpServletRequest request, HttpServletResponse response)
      throws IOException, ServletException {
    request.getRequestDispatcher("/WEB-INF/create-record.jsp").forward(request, response);
  }
}
