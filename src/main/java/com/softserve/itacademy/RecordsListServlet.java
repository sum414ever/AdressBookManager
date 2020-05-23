package com.softserve.itacademy;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/records/list")
public class RecordsListServlet extends HttpServlet {

  private AddressBook addressBook;

  @Override
  public void init() {
    addressBook = AddressBook.getInstance();
  }

  protected void doGet(HttpServletRequest request, HttpServletResponse response)
      throws ServletException, IOException {

    RequestDispatcher requestDispatcher = request.getRequestDispatcher("/WEB-INF/record-list.jsp");
    if (request.getParameter("sort") != null) {
      SortOrder sortOrder = request.getParameter("sort").equals("asc")
          ? SortOrder.ASC
          : SortOrder.DESC;
      addressBook.sortedBy(sortOrder);
    }
    request.setAttribute("records", addressBook);
    requestDispatcher.forward(request, response);

  }
}
