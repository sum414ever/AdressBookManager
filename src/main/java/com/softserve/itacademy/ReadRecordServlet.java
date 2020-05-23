package com.softserve.itacademy;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/records/read")
public class ReadRecordServlet extends HttpServlet {

  private AddressBook addressBook;
  private String firstname;
  private String lastname;
  private String address;

  @Override
  public void init() {
    addressBook = AddressBook.getInstance();
  }

  protected void doGet(HttpServletRequest request, HttpServletResponse response)
      throws ServletException, IOException {

    firstname = request.getParameter("firstname");
    lastname = request.getParameter("lastname");
    address = addressBook.read(request.getParameter("firstname"), request.getParameter("lastname"));

    request.setAttribute("firstname", firstname);
    request.setAttribute("lastname", lastname);
    if (address == null) {
      response.sendError(HttpServletResponse.SC_NOT_FOUND);
    } else {
      request.setAttribute("address", address);
      request.getRequestDispatcher("/WEB-INF/read-record.jsp").forward(request, response);
    }

  }
}
