<%@ Page Language="C#"%>


<!DOCTYPE html>
<script runat="server">
    void sayHelloeFromServer(Object sender, EventArgs e)
    {
        ClientScript.RegisterStartupScript(this.GetType(), "alert",
        "alert('Under Construction')", true);
    }

    protected void checkEmail_TextChanged(object sender, EventArgs e)
    {
        

        ClientScript.RegisterStartupScript(this.GetType(), "alert",
        "alert('User Already Exist')", true);
        
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
        </div>
    </header>
    <main role="main" class="container">
        <div class="row">
            <div class="col-lg-12">
                <h5 style="color:blue;">Enter Your Email to Check Account Existence</h5>
                    <asp:TextBox ID="checkEmail" runat="server" style="width:30%;" AutoPostBack="True" OnTextChanged="checkEmail_TextChanged"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ErrorMessage="*" ControlToValidate="checkEmail" ValidationGroup="saveAccount" ForeColor="Red">
                    </asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Please Enter Valid Email ID" ValidationGroup="saveAccount" ControlToValidate="checkEmail" CssClass="requiredFieldValidateStyle" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">
                    </asp:RegularExpressionValidator>
                    <asp:Button id="checkAccount" text="CHECK ACCOUNT EXISTENCE" Font-size="15" class="btn btn-dark" runat="server" /> <br /><br />
                    
                    <h5 style="color:red;">Enter Your Personal Information</h5>
                <div class="container" style="background-color:blanchedalmond"> 
                    <div class="row">
                        <div class="col-10">
                          
                        </div>

                            <div class="col-2" style="right">
                                <button class="btn btn-dark">Edit</button>
                              </div>  
                    </div>
                    <div class="row">
                        <div class="col-4">
                            <label  style="width:30%;">First Name</label><br/>
                            <asp:TextBox ID="firstName" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidatorFName" runat="server" ErrorMessage="* FirstName is required" ControlToValidate="firstName" ForeColor="Red">
                            </asp:RequiredFieldValidator>
                        </div>
                        <div class="col-4">
                            <label  style="width:30%;">Middle Name</label><br/>
                            <asp:TextBox ID="middleInitials" runat="server"></asp:TextBox>
                        </div>
                        <div class="col-4">
                            <label  style="width:30%;">Last Name</label><br/>
                            <asp:TextBox ID="lastName" runat="server"></asp:TextBox><br />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidatorLName" runat="server" ErrorMessage="* LastName is required" ControlToValidate="lastName" ForeColor="Red">
                            </asp:RequiredFieldValidator>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-6">
                            <label style="width:50%;">Email Address 1</label><br />
                            <asp:TextBox ID="emailAddress1" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidatorEmail" runat="server" ErrorMessage="*Email Address is Required" ControlToValidate="emailAddress1" ForeColor="Red">
                            </asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidatorEmail" runat="server" ErrorMessage="Please Enter Valid Email address" ControlToValidate="emailAddress1" CssClass="requiredFieldValidateStyle" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">
                            </asp:RegularExpressionValidator>
                        </div>
                        <div class="col-6">
                            <label style="width:50%;">Email address 2</label><br />
                            <asp:TextBox ID="emailAddress2" runat="server"></asp:TextBox>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-6">
                            <label style="width:70%;">Streer Address</label><br />
                            <asp:TextBox ID="streetAddress" runat="server" style="width:70%;"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidatorAddress" runat="server" ErrorMessage="* Street Address is required" ControlToValidate="streetAddress" ForeColor="Red">
                            </asp:RequiredFieldValidator>
                        </div>
                        <div class="col-3">
                            <label style="width:20%;">Apt#</label><br />
                            <asp:TextBox ID="aptNo" runat="server"></asp:TextBox>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-4">
                            <label style="width:30%;">City</label><br />
                            <asp:TextBox ID="city" runat="server" style="width:30%;"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidatorCity" runat="server" ErrorMessage="* City is required" ControlToValidate="city" ForeColor="Red"></asp:RequiredFieldValidator>
                        </div>
                        <div class="col-4">
                            <label style="width:30%;">State</label><br />
                            <asp:TextBox ID="state" runat="server" style="width:30%;"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidatorState" runat="server" ErrorMessage="* State is required" ControlToValidate="state" ForeColor="Red"></asp:RequiredFieldValidator>
                        </div>
                        <div class="col-4">
                            <label style="width:30%;">Zip</label><br />
                            <asp:TextBox ID="zip" runat="server" style="width:30%;"></asp:TextBox><br />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidatorZip" runat="server" ErrorMessage="* Zip is required" ControlToValidate="zip" ForeColor="Red"></asp:RequiredFieldValidator>
                         </div>
                    </div>
                    <div class="row">
                        <div class="col-8">
                            <label style="width:50%;">Phone</label><br />
                            <asp:TextBox ID="homePhone" runat="server" style="width:50%;"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidatorPhone" runat="server" ErrorMessage="* Phone is required" ControlToValidate="homePhone"  ForeColor="Red"></asp:RequiredFieldValidator>
                        </div>
                    </div>

                    <label>Job Experience</label>
                    <asp:TextBox ID="jobExperience" TextMode="multiline" runat="server" cols="4" rows="5" style="width:100%;"></asp:TextBox>	
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorJExp" runat="server" ErrorMessage="* Job Experience is required" ControlToValidate="jobExperience" ForeColor="Red">
                    </asp:RequiredFieldValidator>

                    <asp:Button id="saveAccount" text="SAVE ACCOUNT INFORMATION" Font-size="15" class="btn btn-dark" runat="server" style="width:40%" />                     <asp:HyperLink id="backMain" text="BACK TO MAIN PAGE" Font-size="15" NavigateUrl="index.aspx" class="btn btn-dark" runat="server" style="width:40%" /> 
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
           

        }
        //readData();
        loadXMLDoc();
    </script>

        </form>
</body>
</html>





