package controllers;

import java.io.IOException;
import java.sql.Timestamp;

import javax.persistence.EntityManager;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import models.Enquete;
import utils.DBUtil;

@WebServlet("/create")
public class CreateServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public CreateServlet() {
        super();

    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        session.getAttribute("enquete");

        String _token = request.getParameter("_token");
        if (_token != null && _token.equals(request.getSession().getId())) {
            EntityManager em = DBUtil.createEntityManager();

            Enquete e = new Enquete();

            Enquete enquete = (Enquete) session.getAttribute("enquete");
            e.setTreatment(enquete.getTreatment());

            e.setPrice(enquete.getPrice());

            e.setCounseling(enquete.getCounseling());

            e.setAtmosphere(enquete.getAtmosphere());

            e.setSupport(enquete.getSupport());

            e.setName(enquete.getName());

            e.setSex(enquete.getSex());

            e.setAge(enquete.getAge());

            e.setContent(enquete.getContent());

            Timestamp currentTime = new Timestamp(System.currentTimeMillis());
            e.setCreated_at(currentTime);

            if (request.getParameter("send") != null) {
                em.getTransaction().begin();
                em.persist(e);
                em.getTransaction().commit();
                em.close();
                RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/enquetes/end.jsp");
                rd.forward(request, response);
            } else {
                RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/enquetes/new.jsp");
                rd.forward(request, response);
            }
        }
    }

}
