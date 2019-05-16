<%@ Page Language="C#" enableEventValidation = "false" AutoEventWireup="true" CodeFile="TrangDangKy.aspx.cs" Inherits="TrangDangKy" %>

<!DOCTYPE html>
<script runat="server">


</script>


<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>TRANG ĐĂNG KÝ</title>
    <link rel="stylesheet" href="fonts/material-icon/css/material-design-iconic-font.min.css">

    <!-- Main css -->
    <link rel="stylesheet" href="css/style1.css">
</head>
<body>
    <form id="form1" runat="server">
    <div class="main1">
            <section class="signup">
            <div class="container">
                <div class="signup-content">
                    <div class="signup-form">
                        <h2 class="form-title">Sign up</h2>
                        <form method="POST" class="register-form" id="register-form">
                            <div class="form-group">
                                <label for="name"><i class="zmdi zmdi-account material-icons-name"></i></label>
                                <asp:TextBox ID="txttendangnhap" type="text" name="your_name" runat="server" placeholder="Your Name"></asp:TextBox>
         <%--                       <input type="text" name="name" id="name" placeholder="Your Name"/>--%>
                            </div>

                            <asp:RegularExpressionValidator 
			                     ID="RegularExpressionValidator2"
			                     runat="server" 
			                     ErrorMessage="Độ dài phải từ 6 đến 20 kí tự"
			                     ControlToValidate="txttendangnhap" 
			                     ValidationExpression=".{6,20}"></asp:RegularExpressionValidator>

                            <div class="form-group">
                                <label for="email"><i class="zmdi zmdi-email"></i></label>
                                <asp:TextBox ID="txtemail" type="Email" name="Email" runat="server" placeholder="mail@gmail.com"></asp:TextBox>
         <%--                       <input type="email" name="email" id="email" placeholder="Your Email"/>--%>
                            </div>
                            <div class="form-group">
                                <label for="pass"><i class="zmdi zmdi-lock"></i></label>
                               <asp:TextBox ID="txtpassword" type="password" name="your_pass" runat="server"  placeholder="Password"></asp:TextBox>
<%--                                <input type="password" name="pass" id="pass" placeholder="Password"/>--%>
                               <asp:RegularExpressionValidator 
			                        ID="RegularExpressionValidator1"
			                        runat="server" 
		                        	ErrorMessage="Độ dài phải từ 6 đến 20 kí tự"
		                        	ControlToValidate="txtpassword" 
		                        	ValidationExpression=".{6,20}"></asp:RegularExpressionValidator>
                            </div>
                            <div class="form-group">
                                <label for="re-pass"><i class="zmdi zmdi-lock-outline"></i></label>
                               <asp:TextBox ID="txtpassword1" type="password" name="password" runat="server"  placeholder="Repeat your password"></asp:TextBox>
                     <%--           <input type="password" name="re_pass" id="re_pass" placeholder="Repeat your password"/>--%>
                            </div>
                            <div class="form-group">
                                <label for="address"><i class="zmdi zmdi-address"></i></label>
                             <asp:TextBox ID="txtdiachi" runat="server" type="text" name="Địa Chỉ" placeholder="Address" ></asp:TextBox>
              <%--                  <input type="address" name="address" id="address" placeholder="Address"/>--%>
                            </div>
                            <div class="form-group">
                                <label for="phone"><i class="zmdi zmdi-phone"></i></label>
                                <asp:TextBox ID="txtsdt" runat="server" type="text" name="Số điện thoại" placeholder="Phone" ></asp:TextBox>
                          <%--      <input type="phone" name="phone" id="phone" placeholder="Phone"/>--%>
                            </div>
                            <div class="form-group">
                                <input type="checkbox" name="agree-term" id="agree-term" class="agree-term" />
                                <label for="agree-term" class="label-agree-term"><span><span></span></span>I agree all statements in  <a href="#" class="term-service">Terms of service</a></label>
                            </div>
                            <div class="form-group form-button">
                                <asp:Button ID="btnRegister" runat="server" OnClick="btndangky_Click" Text="Register" />
<%--                                <asp:Button ID="btndangky"  runat="server" Text="Register" OnClick="btndangky_Click"  ></asp:Button>--%>
                             <%--   <input type="submit" name="signup" id="signup" class="form-submit"  value="Register"/>--%>
                            </div>
                            		<script type="text/javascript">
                            		    window.onload = function () {
                            		        document.getElementById("txtpassword").onchange = validatePassword;
                            		        document.getElementById("txtpassword1").onchange = validatePassword;
                            		    }
                            		    function validatePassword() {
                            		        var pass2 = document.getElementById("txtpassword1").value;
                            		        var pass1 = document.getElementById("txtpassword").value;
                            		        if (pass1 != pass2)
                            		            document.getElementById("txtpassword1").setCustomValidity("Mật khẩu không trùng với ban đầu");
                            		        else
                            		            document.getElementById("txtpassword1").setCustomValidity('');
                            		        //empty string means no validation error
                            		    }
                            		    function locdau(obj) {
                            		        var str;
                            		        if (eval(obj))
                            		            str = eval(obj).value;
                            		        else
                            		            str = obj;
                            		        str = str.toLowerCase();
                            		        str = str.replace(/à|á|ạ|ả|ã|â|ầ|ấ|ậ|ẩ|ẫ|ă|ằ|ắ|ặ|ẳ|ẵ/g, "a");
                            		        str = str.replace(/è|é|ẹ|ẻ|ẽ|ê|ề|ế|ệ|ể|ễ/g, "e");
                            		        str = str.replace(/ì|í|ị|ỉ|ĩ/g, "i");
                            		        str = str.replace(/ò|ó|ọ|ỏ|õ|ô|ồ|ố|ộ|ổ|ỗ|ơ|ờ|ớ|ợ|ở|ỡ/g, "o");
                            		        str = str.replace(/ù|ú|ụ|ủ|ũ|ư|ừ|ứ|ự|ử|ữ/g, "u");
                            		        str = str.replace(/ỳ|ý|ỵ|ỷ|ỹ/g, "y");
                            		        str = str.replace(/đ/g, "d");
                            		        //str= str.replace(/!|@|%|\^|\*|\(|\)|\+|\=|\<|\>|\?|\/|,|\.|\:|\;|\'| |\"|\&|\#|\[|\]|~|$|_/g,"-");  
                            		        /* tìm và thay thế các kí tự đặc biệt trong chuỗi sang kí tự - */
                            		        //str= str.replace(/-+-/g,"-"); //thay thế 2- thành 1-  
                            		        str = str.replace(/^\-+|\-+$/g, "");
                            		        //cắt bỏ ký tự - ở đầu và cuối chuỗi 
                            		        eval(obj).value = str.toUpperCase();
                            		    }
		</script>
        
      
                        </form>
                    </div>
                    <div class="signup-image">
                        <figure><img src="images/signup-image.jpg" alt="sing up image"></figure>
                        <a href="#" class="signup-image-link">I am already member</a>
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
