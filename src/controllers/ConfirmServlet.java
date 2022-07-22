package controllers;

import java.io.IOException;
import java.sql.Timestamp;
import java.util.List;

import javax.persistence.EntityManager;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import models.Enquete;
import models.validators.EnqueteValidator;
import utils.DBUtil;

@WebServlet("/confirm")
public class ConfirmServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public ConfirmServlet() {
        super();

    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String _token = request.getParameter("_token");
        if (_token != null && _token.equals(request.getSession().getId())) {
            EntityManager em = DBUtil.createEntityManager();

            Enquete e = new Enquete();

            String treatment = request.getParameter("treatment");
            e.setTreatment(treatment);

            String price = request.getParameter("price");
            e.setPrice(price);

            String counseling = request.getParameter("counseling");
            e.setCounseling(counseling);

            String atmosphere = request.getParameter("atmosphere");
            e.setAtmosphere(atmosphere);

            String support = request.getParameter("support");
            e.setSupport(support);

            String name = request.getParameter("name");
            e.setName(name);

            String sex = request.getParameter("sex");
            e.setSex(sex);

            String age = request.getParameter("age");
            e.setAge(age);

            String content = request.getParameter("content");
            e.setContent(content);

            Timestamp currentTime = new Timestamp(System.currentTimeMillis());
            e.setCreated_at(currentTime);

            HttpSession session = request.getSession();
            session.setAttribute("enquete", e);

            List<String> errors = EnqueteValidator.validate(e);
            if (errors.size() > 0) {
                em.close();

                request.setAttribute("_token", request.getSession().getId());
                request.setAttribute("enquete", e);
                request.setAttribute("errors", errors);

                RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/enquetes/new.jsp");
                rd.forward(request, response);
            } else {

                request.setAttribute("_token", request.getSession().getId());

                em.close();

                RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/enquetes/confirm.jsp");
                rd.forward(request, response);
            }
        }
    }
}
