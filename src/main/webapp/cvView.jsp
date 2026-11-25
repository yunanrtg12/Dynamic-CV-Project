<%-- 
    Document   : cvView
    Created on : Nov 21, 2026, 11:27:23 AM
    Author     : YOON
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title><c:out value="${cvData.fullName}"/> - CV</title>
    
    <script src="https://cdn.tailwindcss.com"></script>
</head>

<body class="bg-slate-100 min-h-screen py-8 px-4"> 

<div class="max-w-4xl mx-auto flex justify-between items-center mb-6 print:hidden">
    <a href="${pageContext.request.contextPath}/cvForm.jsp" class="bg-white text-slate-700 border border-slate-300 px-5 py-2.5 rounded-lg font-medium hover:bg-slate-50 transition">
        &larr; Back to Form</a>
    <button type="button" class="bg-blue-900 text-white px-5 py-2.5 rounded-lg font-medium hover:bg-blue-800 transition" onclick="window.print()">Print CV</button>
</div>

<main class="max-w-4xl mx-auto bg-white shadow-xl rounded-xl px-8 py-10 md:px-14 md:py-12 print:shadow-none print:rounded-none print:p-0 print:max-w-none">

    <!-- HEADER -->
    <header class="text-center border-b-4 border-blue-900 pb-6 mb-8"">
        <h1><c:out value="${cvData.fullName}"/></h1>
        
        <c:if test="${not empty cvData.professionalTitle}">
            <p class="text-lg text-slate-600 mt-2 font-medium"><c:out value="${cvData.professionalTitle}"/></p>
        </c:if>
            
        <p class="text-sm text-slate-600 mt-4 leading-7">
            <c:out value="${cvData.email}"/>
            
            <c:if test="${not empty cvData.phoneno}">
                    <span class="mx-2">|</span>
                    <c:out value="${cvData.phoneno}"/>
                </c:if>

                <c:if test="${not empty cvData.linkedin}">
                    <span class="mx-2">|</span>
                    <c:out value="${cvData.linkedin}"/>
                </c:if>
            </p>
    </header>

    <!-- PROFILE -->
    <c:if test="${not empty cvData.summary}">
        <section class="mb-8">
            <h2 class="text-lg font-bold text-blue-900 uppercase tracking-wider border-b border-slate-300 pb-2 mb-3" >Profile Summary</h2>
            
            <p class="text-slate-700 leading-7 whitespace-pre-line"><c:out value="${cvData.summary}"/></p>
        </section>
    </c:if>

    <!-- EDUCATION -->
    <section class="mb-8">
        <h2 class="text-lg font-bold text-blue-900 uppercase tracking-wider border-b border-slate-300 pb-2 mb-4">Education</h2>
        <div class="mb-4">
            <h3 class="font-semibold text-slate-800 text-base"><c:out value="${cvData.highDegree}"/>
                
                <c:if test="${not empty cvData.major}"> in <c:out value="${cvData.major}"/></c:if>
            </h3>
            <p class="text-slate-600 text-sm mt-1">
                <c:out value="${cvData.institution}"/>
                
                 <c:if test="${not empty cvData.gradYear}">
                        <span class="mx-1">&bull;</span>
                        <c:out value="${cvData.gradYear}"/>
                 </c:if>
            </p>
        </div>
    </section>

    <!-- EXPERIENCE -->
    <c:if test="${not empty cvData.jobtitle}">
        <section class="mb-8">
            <h2 class="text-lg font-bold text-blue-900 uppercase tracking-wider border-b border-slate-300 pb-2 mb-4" >Experience</h2>
            <div class="mb-4">
                <h3 class=" font-semibold text-slate-800 text-base">
                    <c:out value="${cvData.jobtitle}"/>
                </h3>
                
                <p class="text-slate-600 text-sm mt-1">
                    <c:out value="${cvData.company}"/>
                    
                    <c:if test="${not empty cvData.duration}"> &bull; 
                        <c:out value="${cvData.duration}"/>
                    </c:if>
                </p>
                
                <c:if test="${not empty cvData.responsibilities}">
                    <p class="text-slate-700 leading-7 mt-3 whitespace-pre-line">
                        <c:out value="${cvData.responsibilities}"/>
                    </p>
                </c:if>
            </div>
        </section>
    </c:if>

    <!-- SKILLS -->
    <section class="mb-4">
        <h2 class="text-lg font-bold text-blue-900 uppercase tracking-wider border-b border-slate-300 pb-2 mb-4">Skills</h2>

        <c:if test="${not empty cvData.technicalSkills}">
                <div class="mb-5">

                    <h3 class="font-semibold text-slate-800 mb-3">
                        Technical Skills
                    </h3>

                    <ul class="flex flex-wrap gap-2">

                        <c:forTokens items="${cvData.technicalSkills}" delims="," var="skill">
                            <li class="bg-blue-50 text-blue-900 border border-blue-200 px-4 py-2 rounded-full text-sm font-medium">
                                <c:out value="${skill}"/>
                            </li>
                        </c:forTokens>

                    </ul>
                </div>
        </c:if>

        <c:if test="${not empty cvData.softSkills}">
                <div class="mb-4">

                    <h3 class="font-semibold text-slate-800 mb-3">
                        Soft Skills
                    </h3>

                    <ul class="flex flex-wrap gap-2">

                        <c:forTokens items="${cvData.softSkills}" delims="," var="skill">
                            <li class="bg-slate-100 text-slate-700 border border-slate-200 px-4 py-2 rounded-full text-sm font-medium">
                                <c:out value="${skill}"/>
                            </li>
                        </c:forTokens>

                    </ul>
                </div>
        </c:if>
    </section>
</main>
</body>
</html>
