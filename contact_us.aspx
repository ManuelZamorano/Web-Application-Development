<%@ Page Language="C#"%>


<!DOCTYPE html>
<script runat="server">
void sayHelloeFromServer(Object sender, EventArgs e)
{
ClientScript.RegisterStartupScript(this.GetType(), "alert",
"alert('Under Construction')", true);
}
</script>
<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8" />
    <title>Programming Assignment #1</title>
    <link rel="stylesheet" href="css/bootstrap.css" type="text/css" />
    <link rel="stylesheet" href="css/sticky-footer-navbar.css" type="text/css" />
</head>
<body>
    <form id="form2" runat="server">
    <header>
        <div class="container">
            <div class="row">
                <div class="jumbotron" style="width:100%; background: url(images/header2.jpg) no-repeat center center fixed; -webkit-background-size: cover; -moz-background-size: cover; -o-background-size: cover; background-size: cover;">
                    <h1 style="color:#ffffff">Contact Us</h1>
                </div>
            </div>
            <div class="row">

                <nav aria-label="breadcrumb">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="index.html">Home</a></li>
                        <li class="breadcrumb-item active" aria-current="page">Contact Us</li>
                    </ol>
                </nav>

            </div>
        </div>
    </header>
    <main role="main" class="container">
        <div class="row">
            <div class="col-lg-12" id="myDiv">

                <table class="table">
                    <tr>
                        <td>Mailing Address</td>
                        <td id="address"></td>
                    </tr>
                    <tr>
                        <td>Toll Free Phone</td>
                        <td id="tollFree"></td>
                    </tr>
                    <tr>
                        <td>Direct Phone Number</td>
                        <td id="phone"></td>
                    </tr>
                    <tr>
                        <td>Email Address</td>
                        <td id="email"></td>
                    </tr>
                    <tr>
                        <td>Web Site</td>
                        <td id="www"></td>
                    </tr>
                </table>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-12">
                <h5 style="color:blue;">You must be logged into to send us a message</h5>
                <h5 style="color:red;">Please type your message type your Message below and click the send message button.</h5>
                 
                    <asp:TextBox ID="TextBox1" TextMode="multiline" runat="server" cols="6" rows="10" style="width:100%;"></asp:TextBox>

                                  <asp:Button id="SendBtn" text="Send Message" Font-size="15" class="btn btn-dark" OnClick="sayHelloeFromServer" runat="server" /> <br /><br />
             
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
    <script>
        var xmlDoc;
        var xmlhttp;
        function loadXMLDoc() {
            xmlhttp = new XMLHttpRequest();
            xmlhttp.onreadystatechange = function () {
                if (this.readyState == 4 && this.status == 200) {
                    readData(this);
                }

            };
            xmlhttp.open("GET", "contactinfor.xml", true);
            xmlhttp.send();
        }
        function readData(xml) {
            xmlDoc = xmlhttp.responseXML;
            var info = xmlDoc.getElementsByTagName("info");

            var tollFree = info[0].getAttribute("toll-free-phone");
            var phone = info[0].getAttribute("direct-phone");
            var address = info[0].getAttribute("mailing-address");
            var email = info[0].getAttribute("email");
            var www = info[0].getAttribute("website");

            $('#address').html(address);
            $('#phone').html(phone);
            $('#tollFree').html(tollFree);
            $('#email').html(email);
            $('#www').html(www);
            $('#address').html(address);

        }
        //readData();
        loadXMLDoc();
    </script>

        </form>
</body>
</html>





