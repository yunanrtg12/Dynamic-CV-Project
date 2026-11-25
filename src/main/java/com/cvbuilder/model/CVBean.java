/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.cvbuilder.model;

/**
 *
 * @author YOON
 */
public class CVBean {
  
    //personal information like name etc
    private String fullname;
    private String professionaltitle;
    private String email;
    private String title;
    private String phoneno;
    private String linkedin;
    private String profilesummary;

    //education level 
    private String highDegree;
    private String Institution;
    private String gradyear;
    private String major;
    
    //experience of work
    private String Jobtitle;
    private String company;
    private String duration;
    private String responsibilities;
    
    //skills 
    private String technicalSkills;
    private String softskills; 
    
    //validation error message
    private String errorMessage;
    
    //zero-argument constructor
    public CVBean(){
    }
    //getter method
    public String getFullName(){return fullname;}
    public String getProfessionalTitle(){return professionaltitle;}
    public String getEmail(){return email;}
    public String getTitle(){return title;}
    public String getPhoneno(){return phoneno;}
    public String getLinkedin(){return linkedin;}
    public String getSummary(){return profilesummary;}
    
    public String getHighDegree(){return highDegree;}
    public String getInstitution(){return Institution;}
    public String getGradYear(){return gradyear;}
    public String getMajor(){return major;}
    
    public String getJobtitle(){return Jobtitle;}
    public String getCompany(){return company;}
    public String getDuration(){return duration;}
    public String getResponsibilities(){return responsibilities;}
    
    public String getTechnicalSkills(){return technicalSkills;}
    public String getSoftSkills(){return softskills;}
    public String getErrorMessage() {return errorMessage;}
    
    //setter method
    public void setFullName(String fullname){this.fullname = fullname;}
    public void setProfessionalTitle(String professionaltitle){this.professionaltitle = professionaltitle;}
    public void setEmail(String email){this.email = email;}
    public void setTitle(String title){this.title = title;}
    public void setPhoneno(String phoneno){this.phoneno = phoneno;}
    public void setLinkedin(String linkedin){this.linkedin = linkedin;}
    public void setProfileSummary(String profilesummary){this.profilesummary = profilesummary;}
    
    public void setHighDegree(String highDegree){this.highDegree = highDegree;}
    public void setInstitution(String Institution){this.Institution = Institution;}
    public void setGradYear(String gradyear){this.gradyear = gradyear;}
    public void setMajor(String major){this.major = major;}
    
    public void setJobtitle(String Jobtitle){this.Jobtitle = Jobtitle;}
    public void setCompany(String company){this.company = company;}
    public void setDuration(String duration){this.duration = duration;}
    public void setResponsibilities(String responsibilities){this.responsibilities = responsibilities;}
    
    public void setTechnicalSkills(String technicalSkills){this.technicalSkills = technicalSkills;}
    public void setSoftSkills(String softskills){this.softskills = softskills;}
    
    
    
public boolean validate() {

    // Reset previous error message
    errorMessage = "";

    // Check Full Name
    if (fullname == null || fullname.trim().isEmpty()) {
        errorMessage = "Please enter your full name.";
        return false;
    }

    // Check Email
    if (email == null || email.trim().isEmpty()) {
        errorMessage = "Please enter your email address.";
        return false;
    }

    // Check Email Format
    String emailPattern =
            "^[A-Za-z0-9+_.-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}$";

    if (!email.trim().matches(emailPattern)) {
        errorMessage = "Please enter a valid email address.";
        return false;
    }

    // Check Highest Degree
    if (highDegree == null || highDegree.trim().isEmpty()) {
        errorMessage = "Please enter your highest degree.";
        return false;
    }

    // Check at least one skill
    boolean hasTechnicalSkill =
            technicalSkills != null &&
            !technicalSkills.trim().isEmpty();

    boolean hasSoftSkill =
            softskills != null &&
            !softskills.trim().isEmpty();

    if (!hasTechnicalSkill && !hasSoftSkill) {
        errorMessage = "Please enter at least one skill.";
        return false;
    }

    // All validation checks passed
    return true;
}

}
