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
	   
		</div>
	</header>
	<main role="main" class="container">
	   
		<div class="row">
			<div class="col-lg-12">
				<h5 style="color:blue;">Enter Your Email to Check Account Existence</h5>
					<asp:TextBox ID="checkEmail" runat="server" style="width:30%;"></asp:TextBox>
			        <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ErrorMessage="*" ControlToValidate="checkEmail" ValidationGroup="vgSubmit" ForeColor="Red">
			        </asp:RequiredFieldValidator>
			        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Please Enter Valid Email ID" ValidationGroup="vgSubmit" ControlToValidate="checkEmail" CssClass="requiredFieldValidateStyle" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">
				    </asp:RegularExpressionValidator>





				 <asp:Button id="checkAccount" text="CHECK ACCOUNT EXISTENCE" Font-size="15" class="btn btn-dark" OnClick="sayHelloeFromServer" runat="server" /> <br /><br />
				<h5 style="color:red;">Enter Your Personal Information</h5>
					<label  style="width:30%;">First Name</label><label  style="width:30%;">Middle Name</label><label  style="width:30%;">Last Name</label><br>
					<asp:TextBox ID="fname" runat="server" style="width:30%;"></asp:TextBox>
				


					<asp:TextBox ID="middle" runat="server" style="width:30%;"></asp:TextBox>

					<asp:TextBox ID="lname" runat="server" style="width:30%;"></asp:TextBox><br>
					
					<label style="width:50%;">Email Address 1</label><label style="width:50%;">Email address 2</label>
					<<asp:TextBox ID="email1" runat="server" style="width:40%;"></asp:TextBox>
			        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ControlToValidate="email1" ValidationGroup="vgSubmit" ForeColor="Red">
			        </asp:RequiredFieldValidator>
			        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Please Enter Valid Email address" ValidationGroup="vgSubmit" ControlToValidate="email1" CssClass="requiredFieldValidateStyle" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">
				    </asp:RegularExpressionValidator>
					<asp:TextBox ID="email2" runat="server" style="width:40%;"></asp:TextBox><br>
					<label style="width:70%;">Streer Address</label><label style="width:20%;">Apt#</label>
					<asp:TextBox ID="address" runat="server" style="width:70%;"></asp:TextBox>
					<asp:TextBox ID="apt" runat="server" style="width:20%;"></asp:TextBox><br>
					<label style="width:30%;">City</label><label style="width:30%;">State</label><label style="width:30%;">Zip</label>
					<asp:TextBox ID="city" runat="server" style="width:30%;"></asp:TextBox>
					<asp:TextBox ID="state" runat="server" style="width:30%;"></asp:TextBox>
					<asp:TextBox ID="zip" runat="server" style="width:30%;"></asp:TextBox><br>
					<label style="width:50%;">Phone</label>
					<asp:TextBox ID="phone" runat="server" style="width:50%;"></asp:TextBox><br>
					<label>Job Experience</label>
					<asp:TextBox ID="experience" TextMode="multiline" runat="server" cols="4" rows="5" style="width:100%;"></asp:TextBox>	

					<asp:Button id="saveAccount" text="SAVE ACCOUNT INFORMATION" Font-size="15" class="btn btn-dark" OnClick="sayHelloeFromServer" runat="server" style="width:40%" /> 					<asp:HyperLink id="backMain" text="BACK TO MAIN PAGE" Font-size="15" NavigateUrl="index.aspx" class="btn btn-dark" runat="server" style="width:40%" /> 
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





