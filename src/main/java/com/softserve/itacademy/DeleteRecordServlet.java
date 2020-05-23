package com.softserve.itacademy;

import java.io.IOException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/records/delete")
public class DeleteRecordServlet extends HttpServlet {

  private AddressBook addressBook;
  private String firstname;
  private String lastname;

  @Override
  public void init() {
    addressBook = AddressBook.getInstance();
  }

  protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {

    firstname = request.getParameter("firstname");
    lastname = request.getParameter("lastname");
    addressBook.delete(firstname, lastname);
    response.sendRedirect("/records/list");
  }
}
