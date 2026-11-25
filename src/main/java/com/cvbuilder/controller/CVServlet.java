/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.cvbuilder.controller;
import com.cvbuilder.model.CVBean;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 *
 * @author YOON
 */
public class CVServlet extends HttpServlet{
    
    
@Override
protected void doPost(HttpServletRequest req, HttpServletResponse res)
        throws IOException, ServletException {

    CVBean cvBean = new CVBean();

    // Personal Information
    cvBean.setFullName(req.getParameter("fullname"));
    cvBean.setProfessionalTitle(req.getParameter("professionaltitle"));
    cvBean.setEmail(req.getParameter("email"));
    cvBean.setPhoneno(req.getParameter("phoneno"));
    cvBean.setLinkedin(req.getParameter("linkedin"));
    cvBean.setProfileSummary(req.getParameter("profilesummary"));

    // Education
    cvBean.setHighDegree(req.getParameter("highDegree"));
    cvBean.setInstitution(req.getParameter("institution"));
    cvBean.setGradYear(req.getParameter("gradyear"));
    cvBean.setMajor(req.getParameter("major"));

    // Work Experience
    cvBean.setJobtitle(req.getParameter("jobtitle"));
    cvBean.setCompany(req.getParameter("company"));
    cvBean.setDuration(req.getParameter("duration"));
    cvBean.setResponsibilities(req.getParameter("responsibilities"));

    // Skills
    cvBean.setSoftSkills(req.getParameter("softSkills"));
    cvBean.setTechnicalSkills(req.getParameter("technicalSkills"));

    
    // Validate CV
    boolean isValid = cvBean.validate();

    if (isValid) {

        // Validation successful
        req.setAttribute("cvData", cvBean);
        req.getRequestDispatcher("/cvView.jsp").forward(req, res);

    } else {

        // Validation failed
        req.setAttribute("errorMessage", cvBean.getErrorMessage());
        req.getRequestDispatcher("/cvError.jsp").forward(req, res);
    }
}


    // GET method request to display as preview in page

@Override
protected void doGet(HttpServletRequest req, HttpServletResponse res)
        throws ServletException, IOException {

    String action = req.getParameter("action");

    if ("sample".equals(action)) {

        CVBean cvBean = new CVBean();

        // Personal Information
        cvBean.setFullName("Tengku Muhammad bin Tengku Ahmad");
        cvBean.setProfessionalTitle("Junior Software Developer");
        cvBean.setEmail("AhmadTg@gmail.com");
        cvBean.setPhoneno("010-4696881");
        cvBean.setLinkedin("linkedin.com/in/ahmadtg");
        cvBean.setProfileSummary("Motivated software developer "
                + "eager to earn experience");

        // Education
        cvBean.setHighDegree("Bachelor in Computer Science");
        cvBean.setInstitution("Universiti Teknologi MARA (UiTM)");
        cvBean.setGradYear("2026");
        cvBean.setMajor("Computer Science");

        // Work Experience
        cvBean.setJobtitle("Junior Software Developer");
        cvBean.setCompany("Alice TechCo Sdn Bhd");
        cvBean.setDuration("2024-2026");
        cvBean.setResponsibilities("Developed web application and maintained "
                + "software system");

        // Skills
        cvBean.setSoftSkills("Communication, Teamwork, Problem Solving");
        cvBean.setTechnicalSkills("Java, HTML, CSS, SQL");

        // Validate sample CV
        boolean isValid = cvBean.validate();

        if (isValid) {

            // Validation successful
            req.setAttribute("cvData", cvBean);
            req.getRequestDispatcher("/cvView.jsp").forward(req, res);

        } else {

            // Validation failed
            req.setAttribute("errorMessage", cvBean.getErrorMessage());
            req.getRequestDispatcher("/cvError.jsp").forward(req, res);
        }

    } else {

        // Display CV form
        req.getRequestDispatcher("/cvForm.jsp").forward(req, res);
    }
}
}