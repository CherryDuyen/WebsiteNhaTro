﻿<%@ Page Language="C#"  enableEventValidation = "false"  AutoEventWireup="true" CodeFile="TrangDangNhap.aspx.cs" Inherits="TrangDangNhap" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>TRANG ĐĂNG NHẬP</title>
    <link rel="stylesheet" href="fonts/material-icon/css/material-design-iconic-font.min.css">

    <!-- Main css -->
    <link rel="stylesheet" href="css/style1.css">
</head>
<body>
    <form id="form1" runat="server">
    <div class="main1">
        <section class="sign-in">
            <div class="container">
                <div class="signin-content">
                    <div class="signin-image">
                        <figure><img src="images/signin-image.jpg" alt="sing up image"></figure>
                        <a href="TrangDangKy.aspx" class="signup-image-link">Create an account</a>
                    </div>

                    <div class="signin-form">
                        <h2 class="form-title">Sign up</h2>
                        <form method="POST" class="register-form" id="login-form">
                            <div class="form-group">
                                <label for="your_name"><i class="zmdi zmdi-account material-icons-name"></i></label>
                                <asp:TextBox ID="txttendangnhap" type="text" name="your_name" runat="server" placeholder="Your Name"></asp:TextBox>
<%--                                <input type="text" name="your_name" id="your_name" placeholder="Your Name"/>--%>
                            </div>
                            <div class="form-group">
                                <label for="your_pass"><i class="zmdi zmdi-lock"></i></label>
                                <asp:TextBox ID="txtpassword" type="password" name="your_pass" runat="server"  placeholder="Password"></asp:TextBox>
                   <%--             <input type="password" name="your_pass" id="your_pass" placeholder="Password"/>--%>
                           
                                <asp:RegularExpressionValidator 
                                    ID="RegularExpressionValidator1" 
                                    runat="server"
                                     ErrorMessage="Độ dài phải từ 6 đến 20 kí tự"  
			                        ControlToValidate="txtpassword" 
			                        ValidationExpression=".{6,20}">
                                </asp:RegularExpressionValidator>

<%--                                <asp:RegularExpressionValidator 
			                        ID="RegularExpressionValidator1"
			                        runat="server" 
			                        ErrorMessage="Độ dài phải từ 6 đến 20 kí tự"
			                        ControlToValidate="txtpassword" 
			                        ValidationExpression=".{6,20}">
                                </asp:RegularExpressionValidator>--%>
                            </div>
                            <div class="form-group">
                                <input type="checkbox" name="remember-me" id="remember-me" class="agree-term" />
                                <label for="remember-me" class="label-agree-term"><span><span></span></span>Remember me</label>
                            </div>
                            <div class="form-group form-button">
                                <asp:Button ID="btndangnhap" runat="server" Text="Login" class="btn btn-info" OnClick="btndangnhap_Click" />
    <%--                            <input type="submit" name="signin" id="signin" class="form-submit" value="Log in"/>--%>
                            </div>
                        </form>
                        <div class="social-login">
                            <span class="social-label">Or login with</span>
                            <ul class="socials">
                                <li><a href="#"><i class="display-flex-center zmdi zmdi-facebook"></i></a></li>
                                <li><a href="#"><i class="display-flex-center zmdi zmdi-twitter"></i></a></li>
                                <li><a href="#"><i class="display-flex-center zmdi zmdi-google"></i></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </section>

    </div>
        <script src="vendor/jquery/jquery.min.js"></script>
    <script src="js/main1.js"></script>
    </form>
</body>
</html>
