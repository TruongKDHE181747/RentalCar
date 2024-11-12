<%-- 
    Document   : profile
    Created on : May 24, 2024, 1:21:04 PM
    Author     : Dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.Customer" %>
<%@page import="java.util.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Profile Page</title>
        <link rel="icon" href="img/webLogo.jpg" type="image/x-icon" />
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
        <!-- CSS Bootstrap -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" 
              integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" 
              crossorigin="anonymous">
        <!-- Script Link Bootstrap -->
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js" integrity="sha384-0pUGZvbkm6XF6gxjEnlmuGrJXVbNuzT9qBBavbLwCsOGabYfZo0T0to5eqruptLy" crossorigin="anonymous"></script>


    </head>
    <body class="bg-body-tertiary">

        <div class="container">
            <header class="d-flex flex-wrap justify-content-center py-3 mb-4 border-bottom">
                <a href="home.jsp" class="d-flex align-items-center mb-3 mb-md-0 me-md-auto link-body-emphasis text-decoration-none">
                    <i style="margin-right: 10px;
                       font-size: 24px;" class="bi bi-arrow-90deg-left"></i>
                    <span class="fs-4">Back to home</span>
                </a>                
            </header>
        </div>


        <div class="container">
            <main>
                <div class="py-5 text-center" >
                    <img class="d-block mx-auto mb-4" src="img/user.png" alt="" width="72">
                    <h2>Your profile</h2>
                </div>

                <div class="row g-5" style="justify-content: center;">

                    
                    <%
                    
                    Customer c = (Customer)session.getAttribute("customer");
                    String firstname = c.getFirstName();
                    String lastname = c.getLastName();
                    String gender = c.getGender();
                    Date dob = c.getDob();
                    String username = c.getUsername();
                    String phonenumber = c.getPhoneNumber();
                    String email = c.getEmail();
                    String address = c.getAddress();
                    
                    
                    %>
                    
                    <div class="col-md-8">
                        <form class="needs-validation" action="profile" method="post">
                            <div class="row g-3">
                                <div class="col-sm-6">
                                    <label for="firstname" class="form-label">First name</label>
                                    <input name="firstname" type="text" class="form-control" id="firstname" value="<%=firstname%>" required>

                                </div>

                                <div class="col-sm-6">
                                    <label for="lastname" class="form-label">Last name</label>
                                    <input value="<%=lastname%>" name="lastname" type="text" class="form-control" id="lastname" placeholder="" value="" required>

                                </div>



                                <div class="my-3 col-sm-6">
                                    <label for="gender" class="form-label">Gender</label>
                                    <div class="form-check">
                                        <input <%=gender.equals("male")?"checked":""%> value="male" id="gender" name="gender" type="radio" class="form-check-input">
                                        <label class="form-check-label" for="gender">Male</label>
                                    </div>
                                    <div class="form-check">
                                        <input <%=gender.equals("female")?"checked":""%> value="female" id="gender" name="gender" type="radio" class="form-check-input">
                                        <label class="form-check-label" for="gender">Female</label>
                                    </div>
                                </div>
                                <div class="col-sm-6">
                                    <label for="dob" class="form-label">Date of birth</label>
                                    <input value="<%=dob%>" type="date" class="form-control" id="dob" name="dob" value="">
                                </div>

                                <div class="col-12">
                                    <label for="username" class="form-label">Username</label>
                                    <input value="<%=username%>" disabled="" type="text" class="form-control" id="username" placeholder="Username">
                                </div>

                                <div class="col-12">
                                    <label for="phonenumber" class="form-label">Phone number</label>
                                    <input value="<%=phonenumber%>" type="text" class="form-control" name="phonenumber" id="phonenumber" placeholder="Phone number">
                                </div>
                                
                                <div class="col-12">
                                    <label for="email" class="form-label">Email</label>
                                    <div class="input-group has-validation">
                                        <span class="input-group-text">@</span>
                                        <input value="<%=email%>" type="email" class="form-control" name="email" id="email" placeholder="you@example.com" required>
                                    </div>
                                </div>



                                <div class="col-12">
                                    <label for="address" class="form-label">Address</label>
                                    <input value="<%=address%>" type="text" class="form-control" id="address" name="address" placeholder="1234 Main St">
                                    
                                </div>

                            </div>

                            <hr class="my-4">
                             <!-- Error check Username and Password -->
                             <%
                                 String e = session.getAttribute("loiprofile")+"";
                                 if(e.equals("null")) e = "";                   
                             %>
                             <div style="text-align: left;
                                        color: red;
                                        margin-left: 5px;">
                                 <%=e%>
                             </div>

                            <button class="w-100 btn btn-primary btn-lg" type="submit">Save</button>
                        </form>
                    </div>
                </div>
            </main>

            <footer class="my-5 pt-5 text-body-secondary text-center text-small">

            </footer>
        </div>

    </body>
</html>
