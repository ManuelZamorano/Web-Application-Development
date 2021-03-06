﻿<%@ Page Language="C#"%>
<!DOCTYPE html>
<script runat="server">
void sayHelloeFromServer(Object sender, EventArgs e)
{
ClientScript.RegisterStartupScript(this.GetType(), "alert",
"alert('Under Construction')", true);
}
</script>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <meta charset="utf-8" />
    <title>Programming Assignment #1</title>
   <link rel="stylesheet" href="css/bootstrap.css" type="text/css" />
    <link rel="stylesheet" href="css/sticky-footer-navbar.css" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <header>
   <div class="container">
       <div class="row">
           <div class="jumbotron" style="width:100%; background: url(images/header2.jpg) no-repeat center center fixed; -webkit-background-size: cover; -moz-background-size: cover; -o-background-size: cover; background-size: cover;">
               <h1 style="color:#ffffff">Recruiting the Worlds Best Inc.</h1>
           </div>
       </div> 
       <div class="row">

           <nav class="navbar navbar-expand-lg navbar-dark bg-dark col-lg-12">
               <div class="collapse navbar-collapse" id="navbarNav">
                   <ul class="navbar-nav">
                       <li class="nav-item active">
                           <a class="nav-link" href="index.html">Home <span class="sr-only">(current)</span></a>
                       </li>
                       <li class="nav-item">
                           <a class="nav-link" href="aboutus.pdf">About SSLNS</a>
                       </li>
                       <li class="nav-item dropdown">
                           <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown">Staffing Services<b class="caret"></b></a>
                           <ul class="dropdown-menu">
                               <li><a href="administrativestaffing.html">Administrative Staffing</a></li>
                               <li><a href="legalstaffing.html">Legal Staffing</a></li>
                           </ul>
                       </li>
                       <li class="nav-item dropdown">
                           <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown"> Job Seeker Resources<b class="caret"></b></a>
                           <ul class="dropdown-menu">
                               <li><a href="tipsandtechniques.html">Tips and Techniques</a></li>
                           </ul>
                       </li>
                       <li class="nav-item dropdown">
                           <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown"> Employer Resources</a>
                           <ul class="dropdown-menu">
                               <li><a href="employeeadvice.html">Employer Advice</a></li>
                           </ul>
                       </li>
                   </ul>
               </div>
           </nav>

       </div>
       </div>
       </header>
       <main role="main" class="container">
           <div class="row">
               <div class="col-lg-10">
                   <p>
                       The Staffing Solutions's difference is being 'Smart'. It makes it easier. 'Smart' isn't going by the book or
                       standing on ceremony.  It's innovating, evolving, challenging the status quo and setting new standards.
                   </p>
                   <p>
                       Our strength is our people.  As all-purpose staffing suppliers, capable of supplying quality staff in a
                       variety of industries, we are able to leverage the incredible wealth of individual skills, unique attributes
                       and personal experience that our people possess, and provide you with a complete staffing solution.
                       You will find no one else more dedicated to the provision of service excellence.
                   </p>
                   <p>
                       Staffing Solutions has amassed a wealth of candidates talent suitable to your need already, we are in the
                       incredible position of being able to pick and choose your staff rather than rely on chance or rushed online
                       advertisements. This smart solution results in a quicker turnaround time and more importantly lowers your
                       costs.
                   </p>
                   <p>
                       Renowned as an employment provider of choice, we continue to capture only the best possible candidates
                       further enhancing our capacity to deliver only the best results to you.

                   </p>

               </div>
               <div class="col-lg-2">
                   <br />
                   <asp:HyperLink id="createBtn" text="Create Account" Font-size="15" class="btn btn-dark"  NavigateUrl="createAccount.aspx" runat="server" /> <br /><br />                   <asp:HyperLink id="loginBtn" text="Log in" Font-size="15" class="btn btn-dark"  NavigateUrl="login.aspx" runat="server" /> <br />
                   <asp:HyperLink ID="contactUs" runat="Server" NavigateUrl="contact_us.aspx" text="Contact Us" />

                   <div>
                       <asp:TextBox id="txtValidated" runat="server" placeholder="Job Title Or Category" />               
                       <asp:TextBox id="txtNotValidated" runat="server" placeholder="City or Postal Code"/><br /><br />
                       <asp:Button id="search" text="Search" Font-size="15" class="btn btn-dark" OnClick="sayHelloeFromServer" runat="server" />
                       
                   </div>
                   <div style="width:100%">
                       <img src="images/bbb-logo.jpg" style="text-align:center;" />
                   </div>

               </div>
           </div>

    </main>
    <footer class="footer">
        <div class="container">
            <span class="text-muted">Web Development </span>
        </div>
    </footer>


    <!-- Modal -->
    <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Under Construction</h5>
                </div>
                <div class="modal-body">
                    The site is currently under construction. Please check back for updates. 
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                </div>
            </div>
        </div>
    </div>




    <script src="js/node_modules/jquery/dist/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="scripts/scripts.js"></script>
        </form>
</body>
</html>