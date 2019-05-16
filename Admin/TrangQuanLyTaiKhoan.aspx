<%@ Page Language="C#" AutoEventWireup="true" CodeFile="TrangQuanLyTaiKhoan.aspx.cs" Inherits="Admin_TrangQuanLyTaiKhoan" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Trang Quản Lý Tài Khoản</title>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Nunito+Sans:200,300,400,700,900|Roboto+Mono:300,400,500"> 
    <link rel="stylesheet" href="../fonts/icomoon/style.css">
    <link rel="stylesheet" href="../css/bootstrap.min.css">
    <link rel="stylesheet" href="../css/magnific-popup.css">
    <link rel="stylesheet" href="../css/jquery-ui.css">
    <link rel="stylesheet" href="../css/owl.carousel.min.css">
    <link rel="stylesheet" href="../css/owl.theme.default.min.css">
    <link rel="stylesheet" href="../css/bootstrap-datepicker.css">
    <link rel="stylesheet" href="../css/mediaelementplayer.css">
    <link rel="stylesheet" href="../css/animate.css">
    <link rel="stylesheet" href="../fonts/flaticon/font/flaticon.css">
    <link rel="stylesheet" href="../css/fl-bigmug-line.css"/>
    
    <link rel="stylesheet" href="../css/aos.css">
    <link rel="stylesheet" href="../css/style.css">
</head>
<body>
    <form id="form1" runat="server">
 <div class="site-wrap">

    <div class="site-mobile-menu">
      <div class="site-mobile-menu-header">
        <div class="site-mobile-menu-close mt-3">
          <span class="icon-close2 js-menu-toggle"></span>
        </div>
      </div>
      <div class="site-mobile-menu-body"></div>
    </div> <!-- .site-mobile-menu -->
    
    <div class="border-bottom bg-white top-bar">
      <div class="container">
        <div class="row align-items-center">
          <div class="col-6 col-md-6">
            <p class="mb-0">
              <a href="#" class="mr-3"><span class="text-black fl-bigmug-line-phone351"></span> <span class="d-none d-md-inline-block ml-2"><b>0965 008 795</b></span></a>
              <a href="#"><span class="text-black fl-bigmug-line-email64"></span> <span class="d-none d-md-inline-block ml-2"><b>nguyenthimyduyen2397@gmail.com</b></span></a>
            </p>  
          </div>
          <div class="col-6 col-md-6 text-right">
            <a href="https://www.facebook.com/duyendt97" class="mr-3"><span class="text-black icon-facebook"></span></a>
            <a href="#" class="mr-3"><span class="text-black icon-twitter"></span></a>
            <a href="#" class="mr-0"><span class="text-black icon-linkedin"></span></a>&nbsp;&nbsp;&nbsp;
<%--        <a href="#" class="mr-3"><span class=""></span><b>ĐĂNG NHẬP</b></a>&nbsp;&nbsp;&nbsp;
            <a href="#" class="mr-0"><span class=""></span><b>ĐĂNG KÝ</b></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;--%>
            <a><asp:LinkButton PostBackUrl="~/TrangDangKy.aspx" runat="server" ID="btndangky" Text="Đăng ký  /" OnClick="btndangky_Click" /></a> <span class="link_dangnhap">
            <a><asp:LinkButton runat="server" ID="btndangnhap" PostBackUrl="~/TrangDangNhap.aspx" Text="Đăng nhập"></asp:LinkButton></a></span>
             <asp:Label runat="server" ID="Label1" ></asp:Label>  <asp:LinkButton runat="server" ID="LinkButton1"  OnClick="LinkButton1_Click"></asp:LinkButton>
            <asp:Label runat="server" ID="lbtendn" ></asp:Label>  <asp:LinkButton runat="server" ID="btdangxuat"></asp:LinkButton>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="" class="mr-0"><span class=""></span><h5><b>ĐĂNG TIN</b></h5></a>
          </div>
        </div>
      </div>
      
    </div>
    <div class="site-navbar">
        <div class="container py-1">
          <div class="row align-items-center">
            <div class="col-8 col-md-8 col-lg-4">
              <h1 class=""><a href="default.aspx" class="h5 text-uppercase text-black"><strong>NHATROBINHDUONG<span class="text-danger">.</span></strong></a></h1>
            </div>
            <div class="col-4 col-md-4 col-lg-8">
              <nav class="site-navigation text-right text-md-right" role="navigation">

                <div class="d-inline-block d-lg-none ml-md-0 mr-auto py-3"><a href="#" class="site-menu-toggle js-menu-toggle text-black"><span class="icon-menu h3"></span></a></div>

                <ul class="site-menu js-clone-nav d-none d-lg-block">
                  <li class="active">
                    <a href="default.aspx"><b>TRANG CHỦ</b></a>
                  </li>
                  <li class="has-children">
                    <a href="#"><b>BÌNH DƯƠNG</b></a>
                    <ul class="dropdown">
                      <li><a href="Trang_TDM.aspx"><b>THÀNH PHỐ THỦ DẦU MỘT</b></a></li>
                      <li><a href="TrangBenCat.aspx"><b>HUYỆN BẾN CÁT</b></a></li>
                      <li><a href="TrangTanUyen.aspx"><b>HUYỆN TÂN UYÊN</b></a></li>
                      <li><a href="TrangThuanAn.aspx"><b>THỊ XÃ THUẬN AN</b></a></li>
                      <li><a href="TrangDiAn.aspx"><b>THỊ XÃ DĨ AN</b></a></li>
                      <li><a href="TrangPhuGiao.aspx"><b>HUYỆN PHÚ GIÁO</b></a></li>
                      <li><a href="TrangDauTieng.aspx"><b>HUYỆN DẦU TIẾNG</b></a></li>
<%--                      <li class="has-children">
                        <a href="#">BÌNH DƯƠNG</a>
                        <ul class="dropdown">
                          <li><a href="#">THÀNH PHỐ THỦ DẦU MỘT</a></li>
                          <li><a href="#">HUYỆN BẾN CÁT</a></li>
                          <li><a href="#">HUYỆN TÂN UYÊN</a></li>
                          <li><a href="#">THỊ XÃ THUẬN AN</a></li>
                          <li><a href="#">THỊ XÃ DĨ AN</a></li>
                          <li><a href="#">HUYỆN PHÚ GIÁO</a></li>
                          <li><a href="#">HUYỆN DẦU TIẾNG</a></li>
                        </ul>
                      </li>--%>
                    </ul>
                  </li>
                  <li><a href="TrangDSNhaTro.aspx"><b>DANH SÁCH NHÀ TRỌ</b></a></li>
                  <li><a href="TrangGioiThieu.aspx"><b>GIỚI THIỆU</b></a></li>
                  <li><a href="TrangLienHe.aspx"> <b>LIÊN HỆ</b></a></li>
                </ul>
              </nav>
            </div>     
          </div>
        </div>
      </div>
    </div> 
        
     <div class="row animate-box">
				<div class="col-md-8 col-md-offset-2 text-center fh5co-heading" style="margin-top:20px; margin-bottom:0px;">
					<span>NHÀ TRỌ BÌNH DƯƠNG</span>
					<h2><b>QUẢN LÝ TÀI KHOẢN</b></h2>
					<p></p>
				</div>
			</div>    
        
        <asp:ListView ID="ListView1" runat="server" DataKeyNames="Tendangnhap" DataSourceID="SqlDataSource2"  InsertItemPosition="LastItem">
            <AlternatingItemTemplate>
                <tr class="hang">
                    <td  class="cot">
                        <asp:Label ID="MaSanPhamLabel" runat="server" Text='<%# Eval("Idtaikhoan") %>' />
                    </td>
                    <td class="cot">
                        <asp:Label ID="TenSanPhamLabel" runat="server" Text='<%# Eval("Tendangnhap") %>' />
                    </td>
                    <td  class="cot">
                        <asp:Label ID="GiaSanPhamLabel" runat="server" Text='<%# Eval("Matkhau") %>' />
                    </td>
                    <td  class="cot">
                        <asp:Label ID="HinhSanPhamLabel" runat="server" Text='<%# Eval("Sodienthoai") %>' />
                    </td>
                    <td  class="cot">
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("Email") %>' />
                    </td>
                    <td  class="cot">
                        <asp:Label ID="Label4" runat="server" Text='<%# Eval("Diachi") %>' />
                    </td>
                    <td class="cothinh">          
                        <asp:ImageButton ID="EditButton" runat="server" CommandName="Edit" ImageUrl="~/images/edit.gif"/>
                        <asp:ImageButton ID="DeleteButton" runat="server" CommandName="Delete" ImageUrl="~/images/delete.gif" />
                    </td>
                </tr>
            </AlternatingItemTemplate>
            <EditItemTemplate>
                <tr class="hang">
                    <td  class="cot">
                        <asp:TextBox ID="MaSanPhamLabel1" runat="server" Text='<%# Bind("Idtaikhoan") %>' />
                    </td>
                    <td  class="cot">
                        <asp:TextBox ID="TenSanPhamTextBox" runat="server" Text='<%# Bind("Tendangnhap") %>' />
                    </td>
                    <td  class="cot">
                        <asp:TextBox ID="GiaSanPhamTextBox" runat="server" Text='<%# Bind("Matkhau") %>' />
                    </td>
                    <td  class="cot">
                        <asp:TextBox ID="HinhSanPhamTextBox" runat="server" Text='<%# Bind("Sodienthoai") %>' />
                    </td>
                    <td  class="cot">
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Email") %>' />
                    </td>
                    <td  class="cot">
                        <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("Diachi") %>' />
                    </td>
                     <td class="cothinh">
                        <asp:ImageButton ID="UpdateButton" runat="server" CommandName="Update" ImageUrl="~/images/plus.png" />
                        <asp:ImageButton ID="CancelButton" runat="server" CommandName="Cancel" ImageUrl="~/images/cancel.gif"  />
                    </td>
                </tr>
            </EditItemTemplate>
            <EmptyDataTemplate>
                <table runat="server" style="margin-top:0px;">
                    <tr>
                        <td>No data was returned.</td>
                    </tr>
                </table>
            </EmptyDataTemplate>
            <InsertItemTemplate>
                <tr class="hang">
                    <td  class="cot">
                        <asp:TextBox ID="MaSanPhamLabel1" runat="server" Text='<%# Bind("Idtaikhoan") %>' />
                    </td>
                    <td  class="cot">
                        <asp:TextBox ID="TenSanPhamTextBox" runat="server" Text='<%# Bind("Tendangnhap") %>' />
                    </td>
                    <td  class="cot">
                        <asp:TextBox ID="GiaSanPhamTextBox" runat="server" Text='<%# Bind("Matkhau") %>' />
                    </td>
                    <td  class="cot">
                        <asp:TextBox ID="HinhSanPhamTextBox" runat="server" Text='<%# Bind("Sodienthoai") %>' />
                    </td>
                    <td  class="cot">
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Email") %>' />
                    </td>
                    <td  class="cot">
                        <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("Diachi") %>' />
                    </td>
                     <td class="cothinh">
                        <asp:ImageButton ID="UpdateButton" runat="server" CommandName="Insert" ImageUrl="~/images/plus.png" />
                        <asp:ImageButton ID="CancelButton" runat="server" CommandName="Cancel" ImageUrl="~/images/cancel.gif"  />
                    </td>
                </tr>
            </InsertItemTemplate>
            <ItemTemplate>
                <tr class="hang">
                    <td  class="cot">
                        <asp:Label ID="MaSanPhamLabel" runat="server" Text='<%# Bind("Idtaikhoan") %>' />
                    </td>
                    <td class="cot">
                        <asp:Label ID="TenSanPhamLabel" runat="server" Text='<%# Bind("Tendangnhap") %>' />
                    </td>
                    <td  class="cot">
                        <asp:Label ID="GiaSanPhamLabel" runat="server" Text='<%# Bind("Matkhau") %>' />
                    </td>
                    <td  class="cot">
                        <asp:Label ID="HinhSanPhamLabel" runat="server" Text='<%# Bind("Sodienthoai") %>' />
                    </td>
                    <td  class="cot">
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("Email") %>' />
                    </td>
                    <td  class="cot">
                        <asp:Label ID="Label4" runat="server" Text='<%# Bind("Diachi") %>' />
                    </td>
                    <td class="cothinh">          
                        <asp:ImageButton ID="EditButton" runat="server" CommandName="Edit" ImageUrl="~/images/edit.gif"/>
                        <asp:ImageButton ID="DeleteButton" runat="server" CommandName="Delete" ImageUrl="~/images/delete.gif" />
                    </td>
                </tr>
            </ItemTemplate>
            <LayoutTemplate>
                <table runat="server">
                    <tr runat="server">
                        <td runat="server"  class="cot">
                            <table id="itemPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family:monospace">
                                <tr runat="server" style="">
                                    <th runat="server" class="hang1">Id Tài Khoản</th>
                                    <th runat="server" class="hang1">Tên Đăng Nhập</th>
                                    <th runat="server" class="hang1">Mật Khẩu</th>
                                    <th runat="server" class="hang1">Số Điện Thoại</th>
                                    <th runat="server" class="hang1">Email</th>
                                    <th runat="server" class="hang1">Dịa Chỉ</th>
                                </tr>
                                <tr id="itemPlaceholder" runat="server">
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr runat="server">
                        <td runat="server" style="">
                            <asp:DataPager ID="DataPager1" runat="server">
                                <Fields>
                                    <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
                                    <asp:NumericPagerField />
                                    <asp:NextPreviousPagerField ButtonType="Button" ShowLastPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
                                </Fields>
                            </asp:DataPager>
                        </td>
                    </tr>
                </table>
            </LayoutTemplate>
            <SelectedItemTemplate>
                <tr >
                    <td>
                        <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" text="Xóa" />
                        <asp:Button ID="EditButton" runat="server" CommandName="Edit" text="Sửa"/>
                    </td>
                    <td  >
                        <asp:TextBox ID="MaSanPhamLabel1" runat="server" Text='<%# Bind("Idtaikhoan") %>' />
                    </td>
                    <td >
                        <asp:TextBox ID="TenSanPhamTextBox" runat="server" Text='<%# Bind("Tendangnhap") %>' />
                    </td>
                    <td >
                        <asp:TextBox ID="GiaSanPhamTextBox" runat="server" Text='<%# Bind("Matkhau") %>' />
                    </td>
                    <td >
                        <asp:TextBox ID="HinhSanPhamTextBox" runat="server" Text='<%# Bind("Sodienthoai") %>' />
                    </td>
                    <td >
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Email") %>' />
                    </td>
                    <td >
                        <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("Diachi") %>' />
                    </td>
                </tr>
            </SelectedItemTemplate>
        </asp:ListView>

 
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:WebsiteNhaTroConnectionString %>" SelectCommand="SELECT * FROM [DangKi]" DeleteCommand="DELETE FROM [DangKi] WHERE [Tendangnhap] = @Tendangnhap" InsertCommand="INSERT INTO [DangKi] ([Idtaikhoan], [Tendangnhap], [Email], [Matkhau], [Diachi], [Sodienthoai] ) VALUES (@Idtaikhoan, @Tendangnhap,@Email, @Matkhau,  @Diachi, @Sodienthoai)" UpdateCommand="UPDATE [DangKi] SET [Idtaikhoan] = @Idtaikhoan, [Email] = @Email, [Matkhau] = @Matkhau,  [Diachi] = @Diachi, [Sodienthoai] = @Sodienthoai WHERE [Tendangnhap] = @Tendangnhap">
            <DeleteParameters>
                <asp:Parameter Name="Tendangnhap" Type="String" />
            </DeleteParameters>
           
            <InsertParameters>
                <asp:Parameter Name="Idtaikhoan" Type="Int32" />
                <asp:Parameter Name="Tendangnhap" Type="String" />
                <asp:Parameter Name="Email" Type="String" />
                <asp:Parameter Name="Matkhau" Type="String" />
                <asp:Parameter Name="Diachi" Type="String" />
                <asp:Parameter Name="Sodienthoai" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Idtaikhoan" Type="Int32" />
                <asp:Parameter Name="Email" Type="String" />
                <asp:Parameter Name="Matkhau" Type="String" />
                <asp:Parameter Name="Diachi" Type="String" />
                <asp:Parameter Name="Sodienthoai" Type="String" />
                <asp:Parameter Name="Tendangnhap" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>

<footer class="site-footer">
      <div class="container">
        <div class="row">
          <div class="col-lg-4">
            <div class="mb-5">
              <h3 class="footer-heading mb-4">Thông tin về NhaTroBinhDuong</h3>
              <p>Website ra đời sẽ góp phần giải quyết được các vấn đề thuê trọ hiện nay, và giúp mọi người tìm kiếm nhà trọ, chỗ ở phù hợp và dễ dàng. Hy vọng NHATROBINHDUONG sẽ là địa chỉ quen thuộc cho mọi người.</p>
            </div>

            
            
          </div>
          <div class="col-lg-4 mb-5 mb-lg-0">
            <div class="row mb-5">
              <div class="col-md-12">
                <h3 class="footer-heading mb-4">DANH MỤC</h3>
              </div>
              <div class="col-md-6 col-lg-6">
                <ul class="list-unstyled">
                  <li><a href="#">TRANG CHỦ</a></li>
                  <li><a href="#">GIỚI THIỆU</a></li>
                  <li><a href="#">DANH SÁCH NHÀ TRỌ</a></li>
<%--                  <li><a href="#">Properties</a></li>--%>
                </ul>
              </div>
              <div class="col-md-6 col-lg-6">
                <ul class="list-unstyled">
                  <li><a href="#">LIÊN HỆ</a></li>
<%--                  <li><a href="#">Privacy Policy</a></li>
                  <li><a href="#">Contact Us</a></li>
                  <li><a href="#">Terms</a></li>--%>
                </ul>
              </div>
            </div>
          </div>

          <div class="col-lg-4 mb-5 mb-lg-0">
            <h3 class="footer-heading mb-4">THÔNG TIN LIÊN HỆ</h3>
                <div>
                  <a href="https://www.facebook.com/duyendt97" class="pl-0 pr-3"><span class="icon-facebook"></span></a>
                  <a href="#" class="pl-3 pr-3"><span class="icon-twitter"></span></a>
                  <a href="#" class="pl-3 pr-3"><span class="icon-instagram"></span></a>
                  <a href="#" class="pl-3 pr-3"><span class="icon-linkedin"></span></a>
                </div>
          </div>
          
        </div>
        <div class="row pt-5 mt-5 text-center">
          <div class="col-md-12">
            <p>
            Copyright &copy;</script><script>document.write(new Date().getFullYear());</script>  | Design   <i class="icon-heart text-danger" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank" >Cherry Duyên</a>
            </p>
          </div>
          
        </div>
      </div>
    </footer>
    </form>
</body>
</html>
