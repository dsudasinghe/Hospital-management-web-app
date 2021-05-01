<%-- 
    Document   : giveprescriptions
    Created on : 27-Apr-2021, 23:58:39
    Author     : lalin
--%>


<%@page import="java.text.DateFormat"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Statement"%>
<%@page import="model.DBCon"%>
<%@page import="java.sql.Connection"%>
<%@page import="javax.servlet.http.HttpSession"%>
<%@ page import="java.util.*" %>
<%@ page import="java.text.SimpleDateFormat" %>



<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <title>JSP Page</title>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Favicons -->
  <link href="assets/img/favicon.png" rel="icon">
  <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="assets/vendor/icofont/icofont.min.css" rel="stylesheet">
  <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="assets/vendor/venobox/venobox.css" rel="stylesheet">
  <link href="assets/vendor/animate.css/animate.min.css" rel="stylesheet">
  <link href="assets/vendor/remixicon/remixicon.css" rel="stylesheet">
  <link href="assets/vendor/owl.carousel/assets/owl.carousel.min.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap-datepicker/css/bootstrap-datepicker.min.css" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="assets/css/style.css" rel="stylesheet">


  <!-- bootstrap File -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">




  <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>






































  <style type="text/css">




.doctors {
  background: #fff;
}
/*
.member {
  position: relative;
  box-shadow: 0px 2px 15px rgba(44, 73, 100, 0.08);
  padding: 30px;
  border-radius: 10px;
}
*/
.member .pic {
  overflow: hidden;
  width: 180px;
  border-radius: 50%;
}

.member .pic img {
  transition: ease-in-out 0.3s;
}

.member:hover img {
  transform: scale(1.1);
}
.member .member-info {
  padding-left: 30px;
}

.member h4 {
  font-weight: 700;
  margin-bottom: 5px;
  font-size: 20px;
  color: #2c4964;
}

.member span {
  display: block;
  font-size: 15px;
  padding-bottom: 10px;
  position: relative;
  font-weight: 500;
}

.member span::after {
  content: '';
  position: absolute;
  display: block;
  width: 50px;
  height: 1px;
  background: #b2c8dd;
  bottom: 0;
  left: 0;

.member p {
  margin: 10px 0 0 0;
  font-size: 14px;
}

.member .social {
  margin-top: 12px;
  display: flex;
  align-items: center;
  justify-content: flex-start;
}

.member .social a {
  transition: ease-in-out 0.3s;
  display: flex;
  align-items: center;
  justify-content: center;
  border-radius: 50px;
  width: 32px;
  height: 32px;
  background: #a0bcd5;
}
/*
.member .social a i {
  color: #fff;
  font-size: 16px;
  margin: 0 2px;
}

.member .social a:hover {
  background: #1977cc;
}

.member .social a + a {
  margin-left: 8px;
}
*/






</style>





















</head>

<body>

    
    
    
    
    
    
  
    
    
    
    
    
    
    
    
  <!-- ======= Top Bar ======= -->
  <div id="topbar" class="d-none d-lg-flex align-items-center fixed-top">
    
  </div>

  <!-- ======= Header ======= -->
  <header id="header" class="fixed-top">
    <div class="container d-flex align-items-center">

      <h1 class="logo mr-auto"><a href="index.html">Medilab</a></h1>
      <!-- Uncomment below if you prefer to use an image logo -->
      <!-- <a href="index.html" class="logo mr-auto"><img src="assets/img/logo.png" alt="" class="img-fluid"></a>-->

      <nav class="nav-menu d-none d-lg-block">
        <ul>
                       <li class="active"><a href="doctordash.jsp">Home</a></li>
          <li><a href="appointmentsdocview.jsp">appointments</a></li>
          <li><a href="patientsdocview.jsp">patients
              </a></li>
          <li><a href="logout.jsp">logout</a></li>
   
   
   
     
          

            </ul>
          </li>
          

        </ul>
      </nav><!-- .nav-menu -->

    

    </div>
  </header><!-- End Header -->


  <main id="main">

  
          <!-- ======= Breadcrumbs Section ======= -->
    <section class="breadcrumbs">
      <div class="container">

        <div class="d-flex justify-content-between align-items-center">
          <h2> <%   
  
String nameid=(String)session.getAttribute("docids");    //Getting Session Attribute

DBCon con2 = new DBCon();

String name1 =con2.getfulDocNameUsingId(nameid);

out.print(""+name1+"");  
  
%></h2>
          <ol>
           
          </ol>
        </div>

      </div>
    </section><!-- End Breadcrumbs Section -->
      
          
      
      
     
      <div class="container" style="
    margin-left: 20%;
    margin-right: 5%;">
  <div class="row">
  
      
      
      
      
        <table  width="100%">
      <tr>
    <td width="50%">
 
    
    
  
  
  
  
    <!-- =======  Section ======= -->
    <section id="result" class="contact">

                                      <div class="container">
                                       <div class="row mt-5">
                                         <div class="col-lg-8 mt-5 mt-lg-0">

            
                                             
                                             
         
                                             
                                             
                                             
                              <div class="row">

       
          
        </div>                      
                                             
                                             
                                             
                                             
                                             
                                             
                                             
                                                                           
                                             
        <%
            if(request.getParameter("pid") != null)
            {
            if(!request.getParameter("pid").equals(" "))
                    {
                        String dic =request.getParameter("pid");
                        
                      %><div class="row"><%  
                        
                        
                        
                            try {
                          
                                DBCon con = new DBCon();
                                PreparedStatement ps = con.createConnection().prepareStatement("SELECT * FROM patiant WHERE id = ?"); 
                                ps.setString(1, dic);
                                ResultSet rs = ps.executeQuery();
                                while (rs.next()) {
                         %>
                        <div >
                    

                                
                  
               
            <div class="col-lg-14" style="
    margin-bottom: 5%; margin-top: 5%"  >
            <div class="member d-flex align-items-start">
                <div class="pic">
                    <img src="assets/img/pat.JPG" class="img-fluid" alt=""></div>
              <div class="member-info">
                <h4><%=rs.getString(3)%> <%=rs.getString(4)%></h4>
                <span><%=rs.getString(5)%></span>
                <p><%=rs.getString(2)%></p>
                 <p><%=rs.getString(2)%></p>
                 <p><%=rs.getString(5)%></p>
                 <p><%=rs.getString(6)%></p>
                 <p><%=rs.getString(7)%></p>
                 <p><%=rs.getString(8)%></p>
             
                
            </div>
          </div>
                                
                              
                           
      
                   
                                
                                
                                
                                
                                
                                
                                
                                <%
                                        }
                                       // con.close();
                                    } catch (Exception e) {
                                        e.printStackTrace();
                                    }
                                %>
                               
                        
                          </div>   
                        
                        
                         <%
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                    }
            else{
                out.println("<html> DEDICATED TOWARDS ENSURING THE BEST SERVICE </html>");
            }
            
            }
            else{
                out.println("<html> DEDICATED TOWARDS ENSURING THE BEST SERVICE </html>");
            }
            %>                                      
                                                   
      

                                             
                                             
                                             
                                             
       </div>
                                           
                                 
      
      
      
      
      </td>
      <td width="50%">
          
          
          
  
  <section id="history">
  
      <h5 style="text-align: center; margin-top:5%"> -history- </h5>                       
                                             
        <%   String a =request.getParameter("pid");
             DBCon con = new DBCon();
             PreparedStatement ps = con.createConnection().prepareStatement("SELECT * FROM phistory WHERE patientid = ?"); 
             ps.setString(1,a);
             ResultSet rs = ps.executeQuery();
        
        
             
            
             
             while (rs.next())
              {
                  
                  %>
                  
                  
                    <div class="col-lg-6" style="
     margin-top: 5%;left:10%;"  >
            <div class="member d-flex align-items-start">
              
                <div class="col-lg-3">
                <h4 colour="black"><%=rs.getString(6)%> </h4>
                <br>
                <%=rs.getString(4)%> 
                </div>
                <div class="col-lg-3">
                 <%
                  
                  
                  
                  String idr = rs.getString("date");
                  String prescription2 = rs.getString("prescription");
                  %>
                  </div><div class="col-lg-3">
                 <%
                  String idr2 = rs.getString("docid");
                  String id4=con.getfulDocNameUsingId(idr2);
                  out.print("DR."+id4+"  "  +prescription2+"                          ");
                  
            

                  %>
                   
                   </div>
                   
                   
                  
            
                  </div>
          </div>
                
                  
                  <br>
                  
                  <%
                 
              }
            %>                                      
                                                   
      
          
          
          
          
          
          
          
          
          
          
          
          
          
          
          
          
          
          
          
          
          
          
          
      </td>
      
      
      </tr>     
    </table>
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
    <!-- ======= Appointment Section ======= -->
    <section id="appointment"style="margin-top: 5%;">
      <div class="container">

        <div class="section-title">
          <h2>Doctor's Prescription</h2>
          <p>Magnam dolores commodi suscipit. Necessitatibus eius consequatur ex aliquid fuga eum quidem. Sit sint consectetur velit. Quisquam quos quisquam cupiditate. Et nemo qui impedit suscipit alias ea. Quia fugiat sit in iste officiis commodi quidem hic quas.</p>
        </div>

        <form action="prescription" method="post" role="form" class="php-email-form">
          
          <div class="form-row">
            <div class="col-md-4 form-group">
              
              <div class="validate"></div>
            </div>
            <div class="col-md-4 form-group">
                <input name="docid" value="<% out.print(""+nameid+""); %> " hidden>
                <input name="patientid" value="<%String id1=request.getParameter("pid");out.print(""+id1+"");%>" hidden>
                
            </div>
                <% DateFormat df = new SimpleDateFormat("MM/dd/yyyy");
           String formattedDate = df.format(new Date());
            %>
                <input name="date" value="<% out.print(""+formattedDate+"");%>" hidden>
          </div>
            <div class="form-group">
            <textarea class="form-control" name="symptoms" rows="5" placeholder="symptoms "></textarea>
            <div class="validate"></div>
          </div>
                
          <div class="form-group">
            <textarea class="form-control" name="prescription" rows="5" placeholder="prescription "></textarea>
            <div class="validate"></div>
          </div>
          <div class="mb-3">
            <div class="loading"></div>
            <div class="error-message"></div>
            <div class="sent-message">Thank you!</div>
          </div>
          <div class="text-center"><button type="submit" class="btn btn-outline-primary">Done</button></div>
        </form>

      </div>
    </section><!-- End Appointment Section -->

  </main><!-- End #main -->
  <!-- ======= Footer ======= -->
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
 
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  <footer id="footer">

    <div class="footer-top">
      <div class="container">
        <div class="row">

          <div class="col-lg-3 col-md-6 footer-contact">
            <h3>Medilab</h3>
            <p>
              A108 Adam Street <br>
              New York, NY 535022<br>
              United States <br><br>
              <strong>Phone:</strong> +1 5589 55488 55<br>
              <strong>Email:</strong> info@example.com<br>
            </p>
          </div>

          <div class="col-lg-2 col-md-6 footer-links">
            <h4>Useful Links</h4>
            <ul>
              <li><i class="bx bx-chevron-right"></i> <a href="#">Home</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="#">About us</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="#">Services</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="#">Terms of service</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="#">Privacy policy</a></li>
            </ul>
          </div>

          <div class="col-lg-3 col-md-6 footer-links">
            <h4>Our Services</h4>
            <ul>
              <li><i class="bx bx-chevron-right"></i> <a href="#">Web Design</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="#">Web Development</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="#">Product Management</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="#">Marketing</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="#">Graphic Design</a></li>
            </ul>
          </div>

          <div class="col-lg-4 col-md-6 footer-newsletter">
            <h4>Join Our Newsletter</h4>
            <p>Tamen quem nulla quae legam multos aute sint culpa legam noster magna</p>
            <form action="" method="post">
              <input type="email" name="email"><input type="submit" value="Subscribe">
            </form>
          </div>

        </div>
      </div>
    </div>

    <div class="container d-md-flex py-4">

 
    </div>
  </footer><!-- End Footer -->

  <div id="preloader"></div>
  <a href="#" class="back-to-top"><i class="icofont-simple-up"></i></a>

  <!-- Vendor JS Files -->
  <script src="assets/vendor/jquery/jquery.min.js"></script>
  <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="assets/vendor/jquery.easing/jquery.easing.min.js"></script>
  <script src="assets/vendor/php-email-form/validate.js"></script>
  <script src="assets/vendor/venobox/venobox.min.js"></script>
  <script src="assets/vendor/waypoints/jquery.waypoints.min.js"></script>
  <script src="assets/vendor/counterup/counterup.min.js"></script>
  <script src="assets/vendor/owl.carousel/owl.carousel.min.js"></script>
  <script src="assets/vendor/bootstrap-datepicker/js/bootstrap-datepicker.min.js"></script>

  <!-- Template Main JS File -->
  <script src="assets/js/main.js"></script>

</body>

</html>