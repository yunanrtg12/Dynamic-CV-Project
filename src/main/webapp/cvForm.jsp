<%-- 
    Document   : cvForm
    Created on : Nov 14, 2026, 10:28:14 AM
    Author     : YOON
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Dynamic Online CV Builder</title>
        <script src="https://cdn.tailwindcss.com"></script>
    </head>
    <body class="bg-slate-100 min-h-screen py-10 px-4">
        <div class="max-w-4xl mx-auto">
            <!--Header-->
            <div class="text-center mb-8">
                <h1 class="text-3xl font-bold text-blue-900">Dynamic Online CV Builder</h1>
                <p> Create your professional CV by filling 
                in all the requirement needed in the form below.</p>
            </div>
            
            <!--Container for form -->
            <div class="bg-white rounded-2xl shadow-lg p-8">
                <form action="${pageContext.request.contextPath}/CVServlet"
                      method="post" class="space-y-8" >
                    
                <section>
                <h2 class="text-xl font-bold text-blue-900 border-b pb-3 mb-5">Personal Information</h2>
                
                <div class="grid grid-cols-1 md:grid-cols-2 gap-5">

                <div>
                <label class="block text-sm font-semibold text-gray-700 mb-2">Full Name * : </label>
                <input type="text" name="fullname" required placeholder="Enter your fullname." 
                       class="w-full border border-gray-300 rounded-lg px-4 py-3 focus:outline-none focus:ring-2 focus:ring-blue-500">
                </div>
                
                    <div>
                <label class="block text-sm font-semibold text-gray-700 mb-2">Professional Title</label>
                <input type="text" name="professionaltitle" placeholder="e.g. Software Developer"
                class="w-full border border-gray-300 rounded-lg px-4 py-3 focus:outline-none focus:ring-2 focus:ring-blue-500">
                    </div>
                    
                <div> 
                <label class="block text-sm font-semibold text-gray-700 mb-2">Email Address * : </label>
                <input type="email" name="email" required placeholder="example@gmail.com"
                       class="w-full border border-gray-300 rounded-lg px-4 py-3 focus:outline-none focus:ring-2 focus:ring-blue-500">
                </div>
                    
                <div>
                <label class="block text-sm font-semibold text-gray-700 mb-2">Phone Number * : </label>
                <input type="text" name="phoneno" required placeholder="e.g. 01234567890"
                       class="w-full border border-gray-300 rounded-lg px-4 py-3 focus:outline-none focus:ring-2 focus:ring-blue-500">
                </div>
                    
                <div class="md:col-span-2">
                <label class="block text-sm font-semibold text-gray-700 mb-2">Linked In Profile *: </label>
                <input type="text" name="linkedin" required placeholder="https://linkedin.com/in/yourprofile"
                       class="w-full border border-gray-300 rounded-lg px-4 py-3 focus:outline-none focus:ring-2 focus:ring-blue-500">
                
                <div class="md:col-span-2">
                <label class="block text-sm font-seibold text-gray-700 mb-2">Profile Summary * : </label>
                <textarea type="text" name="profilesummary" rows="4" required placeholder="Write a short summary about yourself...."
                          class="w-full border border-gray-300 rounded-lg px-4 py-3 focus:outline-none focus:ring-2 focus:ring-blue-500"></textarea>
                
                </div>
              </div>
            </section>
                    
            <!--Educational Section-->
            <section>
                <h2 class="text-xl font-bold text-blue-900 border-b pb-3 mb-5">Education Level </h2>
                
                <div class="grid grid-cols-1 md:grid-cols-2 gap-5">
                    <div>
                <label class="block text-sm font-semibold text-gray-700 mb-2">Highest Degree * : </label>
                <input type="text" name="highDegree" required placeholder="e.g. Bachelor's Degree"
                       class="w-full border border-gray-300 rounded-lg px-4 py-3 focus:outline-none focus:ring-2 focus:ring-blue-500">
                    </div>
                    
                    <div>
                <label class="block text-sm font-semibold text-gray-700 mb-2">Institution : </label>
                <input type="text" name="institution" placeholder="Enter your institution"
                       class="w-full border border-gray-300 rounded-lg px-4 py-3 focus:outline-none focus:ring-2 focus:ring-blue-500">
                    </div>
                  
                    <div>
                <label class="block text-sm font-semibold text-gray-700 mb-2">Graduation Year : </label>
                <input type="text" name="gradyear" placeholder="e.g. 2026"
                       class="w-full border border-gray-300 rounded-lg px-4 py-3 focus:outline-none focus:ring-2 focus:ring-blue-500">
                    </div>
                
                    <div>
                <label class="block text-sm font-semibold text-gray-700 mb-2">Major : </label>
                <input type="text" name="major" placeholder="e.g. Computer Science"
                       class="w-full border border-gray-300 rounded-lg px-4 py-3 focus:outline-none focus:ring-2 focus:ring-blue-500">
                    </div>
                </div>
            </section>
                
            <section>
                <h2 class="text-xl font-bold text-blue-900 border-b pb-3 mb-5">Work Experience </h2>
                
                <div class="grid grid-cols-1 md:grid-cols-2 gap-5">
                
                <!--Job Section-->
                <div>
                <label class="block text-sm font-semibold text-gray-700 mb-2">Job Title : </label>
                <input type="text" name="jobtitle"  placeholder="e.g. Junior Software Developer"
                       class="w-full border border-gray-300 rounded-lg px-4 py-3 focus:outline-none focus:ring-2 focus:ring-blue-500">
                </div>
                
                <div>
                <label class="block text-sm font-semibold text-gray-700 mb-2">Company: </label>
                <input type="text" name="company" placeholder="Enter company name"
                       class="w-full border border-gray-300 rounded-lg px-4 py-3 focus:outline-none focus:ring-2 focus:ring-blue-500">
                </div>
                <div class="md:col-span-2">
                    <label class="block text-sm font-semibold text-gray-700 mb-2">Duration : </label>
                <input type="text" name="duration" placeholder="e.g. January 2024 - December 2025"
                       class="w-full border border-gray-300 rounded-lg px-4 py-3 focus:outline-none focus:ring-2 focus:ring-blue-500">
                </div>
                
                <div class="md:col-span-2">
                <label class="block text-sm font-semibold text-gray-700 mb-2">Responsibilities : </label>
                <textarea name="responsibilities" placeholder="Describe your job responsibilities and achievements..."
                          class="w-full border border-gray-300 rounded-lg px-4 py-3
                          focus:outline-none focus:ring-2 focus:ring-blue-500"></textarea>
                </div>
              </div>
            </section>
                
            <section>
                <h2 class="text-xl font-bold text-blue-900 border-b pb-3 mb-5">Skills</h2>
                
                 <div class="grid grid-cols-1 md:grid-cols-2 gap-5">
                <div>
                <label class="block text-sm font-semibold text-gray-700 mb-2">Technical Skills : </label>
                <textarea name="technicalSkills" rows="4" required
                      placeholder="Example : Java, HTML, CSS, SQL"  class="w-full border border-gray-300 rounded-lg px-4 py-3 focus:outline-none focus:ring-2 focus:ring-blue-500"></textarea>
            
                <p class="text-xs text-gray-400 mt-2">
                    List your technical knowledge and abilities.
                </p>
                </div>
                     
                     <div>
                <label class="block text-sm font-semibold text-gray-700 mb-2">Soft Skills : </label>
                <textarea name="softSkills" rows="4"
                      placeholder="Example : Communication , Teamwork" class="w-full border border-gray-300 rounded-lg px-4 py-3 focus:outline-none focus:ring-2 focus:ring-blue-500"></textarea>
                
                <p class="text-xs text-gray-400 mt-2">
                    List your personal and interpersonal abilities.
                </p>
            </div>

        </div>
    </section>
            
                <p>* Required fields</p>
                <div class="border-t pt-6 flex flex-col sm:flex-row gap-4">
                <button type="submit" class="flex-1 bg-blue-900 text-white font-semibold py-3 px-6
                       rounded-lg hover:bg-blue-800 transition duration-200">Generate My CV</button>
                
                <a href="${pageContext.request.contextPath}/CVServlet?action=sample"
                   class="flex-1 text-center bg-gray-100 text-gray-700 font-semibold
                  py-3 px-6 rounded-lg hover:bg-gray-200 transition duration-200">
                View Sample CV </a>
                </div>
            </form>
          </div>
        </div>
     </body>
</html>
