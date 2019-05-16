<%@ Page Language="C#" AutoEventWireup="true" CodeFile="TrangDSNhaTro.aspx.cs" Inherits="TrangDSNhaTro" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>TRANG DANH SÁCH NHÀ TRỌ</title>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Nunito+Sans:200,300,400,700,900|Roboto+Mono:300,400,500"> 
    <link rel="stylesheet" href="fonts/icomoon/style.css">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/magnific-popup.css">
    <link rel="stylesheet" href="css/jquery-ui.css">
    <link rel="stylesheet" href="css/owl.carousel.min.css">
    <link rel="stylesheet" href="css/owl.theme.default.min.css">
    <link rel="stylesheet" href="css/bootstrap-datepicker.css">
    <link rel="stylesheet" href="css/mediaelementplayer.css">
    <link rel="stylesheet" href="css/animate.css">
    <link rel="stylesheet" href="fonts/flaticon/font/flaticon.css">
    <link rel="stylesheet" href="css/fl-bigmug-line.css">
    
    <link rel="stylesheet" href="css/aos.css" />
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
    <form id="form1" runat="server">
<div class="site-loader"></div>
  
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
<%--            <a href="TrangDangNhap.aspx" class="mr-3"><span class=""></span><b>ĐĂNG NHẬP</b></a>
            <a href="TrangDangKy.aspx" class="mr-0"><span class=""></span><b>ĐĂNG KÝ</b></a>--%>
            <a><asp:LinkButton PostBackUrl="~/TrangDangKy.aspx" runat="server" ID="btndangky" Text="Đăng ký  /" /></a> <span class="link_dangnhap">
            <a><asp:LinkButton runat="server" ID="btndangnhap" PostBackUrl="~/TrangDangNhap.aspx" Text="Đăng nhập"></asp:LinkButton></a></span>
            <asp:Label runat="server" ID="lbtendn" ></asp:Label>  <asp:LinkButton runat="server" ID="btdangxuat"  OnClick="btdangxuat_Click"></asp:LinkButton>
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
                    <a href="properties.html"><b>BÌNH DƯƠNG</b></a>
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

    <div class="site-blocks-cover inner-page-cover overlay" style="background-image: url(images/hero_bg_2.jpg);" data-aos="fade" data-stellar-background-ratio="0.5">
      <div class="container">
        <div class="row align-items-center justify-content-center text-center">
          <div class="col-md-10">
            <h1 class="mb-2">DANH SÁCH NHÀ TRỌ</h1>
            <div><a href="default.aspx"><b>TRANG CHỦ</b></a> <span class="mx-2 text-white">&bullet;</span> <strong class="text-white">DANH SÁCH NHÀ TRỌ</strong></div>
          </div>
        </div>
      </div>
    </div>

    <div class="site-section site-section-sm bg-light">
      <div class="container">
          <div class="row">
                <div class="row">
                    <div class="col-md-4 text-center animate-box">
                        <div class="product">
                             <asp:DataList ID="DataList1" runat="server" DataKeyField="MaSanPham" DataSourceID="SqlDataSource1" RepeatDirection="Horizontal" RepeatColumns="3">
                                <ItemTemplate>
                                    <div style="margin-left:20px">
                                        <a href='<%# "TrangSanPham.aspx?hc="+Eval("MaSanPham") %>'>
                                        <div class="product-grid">
                                            <div class="inner">
                                            <asp:Image ID="Image4" runat="server" Width="350" Height="350"  ImageUrl='<%# Eval("HinhSanPham", "{0}") %>'  DescriptionUrl="~/trang2.aspx" CssClass="hinhsp" />
                                                <style>.hinhsp{object-fit:cover}</style>
                                            <br />
                                        </div>
                                        </div>
                                        <div class="desc">
                                            <h3><a> &nbsp;<asp:Label ID="TenSanPhamLabel" Font-Size="13pt" runat="server" Text='<%# Eval("TenSanPham") %>'/></a></h3>
                                            <h3 style="Font-Size:13pt">
                                                <span>
                                                <asp:Label ID="Label2" runat="server" Text="" Font-Size="13pt"></asp:Label>
                                                <asp:Label ID="GiaSanPhamLabel" runat="server" Text='<%# Eval("GiaSanPham","{0:0,00}") %>' />
                                                <asp:Label ID="Label1" runat="server" Text="đ"></asp:Label>
                                                </span>
                                               
                                            </h3>
                                        </div>
                                        
                                        </div>
                                   </a>
                                        </div>
                                    
                                </ItemTemplate>
                            </asp:DataList>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:WebsiteNhaTroConnectionString %>" SelectCommand="SELECT * FROM [SanPham1]">
                            </asp:SqlDataSource> 
                        </div>
                    </div>
                    <%--<div class="col-md-4 text-center animate-box">
                        <div class="product">
                             <asp:DataList ID="DataList2" runat="server" DataKeyField="MaSanPham" DataSourceID="SqlDataSource2">
                                <ItemTemplate>
                                    <a href='<%# "TrangSanPham.aspx?hc="+Eval("MaSanPham") %>'>
                                        <div class="product-grid">
                                            <div class="inner">
                                            <asp:Image ID="Image4" runat="server" Width="400" Height="350" ImageUrl='<%# Eval("HinhSanPham", "{0}") %>'  DescriptionUrl="~/trang2.aspx" CssClass="hinhsp" />
                                            <br />
                                        </div>
                                        </div>
                                        <div class="desc">
                                            <h3><a> &nbsp;<asp:Label ID="TenSanPhamLabel" runat="server" Text='<%# Eval("TenSanPham") %>'/></a></h3>
                                            <h3>
                                                <asp:Label ID="Label2" runat="server" Text="Giá:"></asp:Label>
                                                <asp:Label ID="GiaSanPhamLabel" runat="server" Text='<%# Eval("GiaSanPham","{0:0,00}") %>' />
                                                <asp:Label ID="Label1" runat="server" Text="đ"></asp:Label>
                                            </h3>
                                        </div>
                                   </a>
                                </ItemTemplate>
                            </asp:DataList>
                            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:WebsiteNhaTroConnectionString %>" SelectCommand="SELECT [MaSanPham], [TenSanPham], [GiaSanPham], [HinhSanPham] FROM [SanPham1] WHERE ([HinhSanPham] = @HinhSanPham)">
                                <SelectParameters>
                                <asp:ControlParameter ControlID="DataList2" PropertyName="SelectedValue" DefaultValue="images/Hoca15.jpg" Name="HinhSanPham" Type="String"></asp:ControlParameter>
                                </SelectParameters>
                            </asp:SqlDataSource> 
                        </div>
                    </div>
                    <div class="col-md-4 text-center animate-box">
                        <div class="product">
                             <asp:DataList ID="DataList3" runat="server" DataKeyField="MaSanPham" DataSourceID="SqlDataSource3" RepeatDirection="Horizontal">
                                <ItemTemplate>
                                    <a href='<%# "TrangSanPham.aspx?hc="+Eval("MaSanPham") %>'>
                                        <div class="product-grid">
                                            <div class="inner">
                                            <asp:Image ID="Image4" runat="server"  ImageUrl='<%# Eval("HinhSanPham", "{0}") %>'  DescriptionUrl="~/trang2.aspx" CssClass="hinhsp" />
                                            <br />
                                        </div>
                                        </div>
                                        <div class="desc">
                                            <h3><a> &nbsp;<asp:Label ID="TenSanPhamLabel" runat="server" Text='<%# Eval("TenSanPham") %>'/></a></h3>
                                            <h3>
                                                <asp:Label ID="Label2" runat="server" Text="Giá:"></asp:Label>
                                                <asp:Label ID="GiaSanPhamLabel" runat="server" Text='<%# Eval("GiaSanPham","{0:0,00}") %>' />
                                                <asp:Label ID="Label1" runat="server" Text="đ"></asp:Label>
                                            </h3>
                                        </div>
                                   </a>
                                </ItemTemplate>
                            </asp:DataList>
                            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:WebsiteNhaTroConnectionString %>" SelectCommand="SELECT [MaSanPham], [TenSanPham], [GiaSanPham], [HinhSanPham] FROM [SanPham1] WHERE ([HinhSanPham] = @HinhSanPham)">
                                <SelectParameters>
                                <asp:ControlParameter ControlID="DataList3" PropertyName="SelectedValue" DefaultValue="images/Hoca4.jpg" Name="HinhSanPham" Type="String"></asp:ControlParameter>
                                </SelectParameters>
                            </asp:SqlDataSource> 
                        </div>
                    </div>
                <div class="row">
                    <div class="col-md-4 text-center animate-box">
                        <div class="product">
                             <asp:DataList ID="DataList4" runat="server" DataKeyField="MaSanPham" DataSourceID="SqlDataSource4">
                                <ItemTemplate>
                                    <a href='<%# "TrangSanPham.aspx?hc="+Eval("MaSanPham") %>'>
                                        <div class="product-grid">
                                           <div class="inner">
                                            <asp:Image ID="Image4" runat="server"  ImageUrl='<%# Eval("HinhSanPham", "{0}") %>'  DescriptionUrl="~/trang2.aspx" CssClass="hinhsp" />
                                            <br />
                                        </div>
                                        </div>
                                        <div class="desc">
                                            <h3><a >&nbsp;<asp:Label ID="TenSanPhamLabel" runat="server" Text='<%# Eval("TenSanPham") %>'/></a></h3>
                                            <h3>
                                                <asp:Label ID="Label2" runat="server" Text="Giá:"></asp:Label>
                                                <asp:Label ID="GiaSanPhamLabel" runat="server" Text='<%# Eval("GiaSanPham","{0:0,00}") %>' />
                                                <asp:Label ID="Label1" runat="server" Text="đ"></asp:Label>
                                            </h3>
                                        </div>
                                   </a>
                                </ItemTemplate>
                            </asp:DataList>
                            <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:WebsiteNhaTroConnectionString %>" SelectCommand="SELECT [MaSanPham], [TenSanPham], [GiaSanPham], [HinhSanPham] FROM [SanPham1] WHERE ([HinhSanPham] = @HinhSanPham)">
                                <SelectParameters>
                                <asp:ControlParameter ControlID="DataList4" PropertyName="SelectedValue" DefaultValue="images/Hoca10.jpg" Name="HinhSanPham" Type="String"></asp:ControlParameter>
                                </SelectParameters>
                            </asp:SqlDataSource> 
                        </div>
                    </div>
                    <div class="col-md-4 text-center animate-box">
                        <div class="product">
                             <asp:DataList ID="DataList5" runat="server" DataKeyField="MaSanPham" DataSourceID="SqlDataSource5" RepeatColumns="3">
                                <ItemTemplate>
                                    <a href='<%# "TrangSanPham.aspx?hc="+Eval("MaSanPham") %>'>
                                        <div class="product-grid">
                                            <div class="inner">
                                            <asp:Image ID="Image4" runat="server" Width="400" Height="350" ImageUrl='<%# Eval("HinhSanPham", "{0}") %>'  DescriptionUrl="~/trang2.aspx" CssClass="hinhsp" />
                                            <br />
                                        </div>
                                        </div>
                                        <div class="desc">
                                            <h3><a > &nbsp;<asp:Label ID="TenSanPhamLabel" runat="server" Text='<%# Eval("TenSanPham") %>'/></a></h3>
                                            <h3>
                                                <asp:Label ID="Label2" runat="server" Text="Giá:"></asp:Label>
                                                <asp:Label ID="GiaSanPhamLabel" runat="server" Text='<%# Eval("GiaSanPham","{0:0,00}") %>' />
                                                <asp:Label ID="Label1" runat="server" Text="đ"></asp:Label>
                                            </h3>
                                        </div>
                                   </a>
                                </ItemTemplate>
                            </asp:DataList>
                            <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:WebsiteNhaTroConnectionString %>" SelectCommand="SELECT [MaSanPham], [TenSanPham], [GiaSanPham], [HinhSanPham] FROM [SanPham1] WHERE ([HinhSanPham] = @HinhSanPham)">
                                <SelectParameters>
                                <asp:ControlParameter ControlID="DataList5" PropertyName="SelectedValue" DefaultValue="images/Hoca3.jpg" Name="HinhSanPham" Type="String"></asp:ControlParameter>
                                </SelectParameters>
                            </asp:SqlDataSource> 
                        </div>
                    </div>
                    <div class="col-md-4 text-center animate-box">
                        <div class="product">
                             <asp:DataList ID="DataList6" runat="server" DataKeyField="MaSanPham" DataSourceID="SqlDataSource6">
                                <ItemTemplate>
                                    <a href='<%# "TrangSanPham.aspx?hc="+Eval("MaSanPham") %>'>
                                        <div class="product-grid">
                                            <div class="inner">
                                            <asp:Image ID="Image4" runat="server"  ImageUrl='<%# Eval("HinhSanPham", "{0}") %>'  DescriptionUrl="~/trang2.aspx" CssClass="hinhsp" />
                                            <br />
                                        </div>
                                        </div>
                                        <div class="desc">
                                            <h3><a > &nbsp;<asp:Label ID="TenSanPhamLabel" runat="server" Text='<%# Eval("TenSanPham") %>'/></a></h3>
                                            <h3>
                                                <asp:Label ID="Label2" runat="server" Text="Giá:"></asp:Label>
                                                <asp:Label ID="GiaSanPhamLabel" runat="server" Text='<%# Eval("GiaSanPham","{0:0,00}") %>' />
                                                <asp:Label ID="Label1" runat="server" Text="đ"></asp:Label>
                                            </h3>
                                        </div>
                                   </a>
                                </ItemTemplate>
                            </asp:DataList>
                            <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:WebsiteNhaTroConnectionString %>" SelectCommand="SELECT [MaSanPham], [TenSanPham], [GiaSanPham], [HinhSanPham] FROM [SanPham1] WHERE ([HinhSanPham] = @HinhSanPham)">
                                <SelectParameters>
                                <asp:ControlParameter ControlID="DataList6" PropertyName="SelectedValue" DefaultValue="images/Hoca6.jpg" Name="HinhSanPham" Type="String"></asp:ControlParameter>
                                </SelectParameters>
                            </asp:SqlDataSource> 
                        </div>
                    </div>
			<div class="row">
				<div class="col-md-4 text-center animate-box">
                        <div class="product">
                             <asp:DataList ID="DataList7" runat="server" DataKeyField="MaSanPham" DataSourceID="SqlDataSource7">
                                <ItemTemplate>
                                    <a href='<%# "TrangSanPham.aspx?hc="+Eval("MaSanPham") %>'>
                                        <div class="product-grid">
                                            <div class="inner">
                                            <asp:Image ID="Image4" runat="server"  ImageUrl='<%# Eval("HinhSanPham", "{0}") %>'  DescriptionUrl="~/trang2.aspx" CssClass="hinhsp" />
                                            <br />
                                        </div>
                                        </div>
                                        <div class="desc">
                                            <h3><a > &nbsp;<asp:Label ID="TenSanPhamLabel" runat="server" Text='<%# Eval("TenSanPham") %>'/></a></h3>
                                            <h3>
                                                <asp:Label ID="Label2" runat="server" Text="Giá:"></asp:Label>
                                                <asp:Label ID="GiaSanPhamLabel" runat="server" Text='<%# Eval("GiaSanPham","{0:0,00}") %>' />
                                                <asp:Label ID="Label1" runat="server" Text="đ"></asp:Label>
                                            </h3>
                                        </div>
                                   </a>
                                </ItemTemplate>
                            </asp:DataList>
                            <asp:SqlDataSource ID="SqlDataSource7" runat="server" ConnectionString="<%$ ConnectionStrings:WebsiteNhaTroConnectionString %>" SelectCommand="SELECT [MaSanPham], [TenSanPham], [GiaSanPham], [HinhSanPham] FROM [SanPham1] WHERE ([HinhSanPham] = @HinhSanPham)">
                                <SelectParameters>
                                <asp:ControlParameter ControlID="DataList7" PropertyName="SelectedValue" DefaultValue="images/Ho_mini1.jpg" Name="HinhSanPham" Type="String"></asp:ControlParameter>
                                </SelectParameters>
                            </asp:SqlDataSource> 
                        </div>
                    </div>
				<div class="col-md-4 text-center animate-box">
                        <div class="product">
                             <asp:DataList ID="DataList8" runat="server" DataKeyField="MaSanPham" DataSourceID="SqlDataSource8">
                                <ItemTemplate>
                                    <a style="margin-left:20px" href='<%# "TrangSanPham.aspx?hc="+Eval("MaSanPham") %>'>
                                        <div class="product-grid">
                                            <div class="inner">
                                            <asp:Image ID="Image4" runat="server"  ImageUrl='<%# Eval("HinhSanPham", "{0}") %>'  DescriptionUrl="~/trang2.aspx" CssClass="hinhsp" />
                                            <br />
                                        </div>
                                        </div>
                                        <div class="desc">
                                            <h3><a > &nbsp;<asp:Label ID="TenSanPhamLabel" runat="server" Text='<%# Eval("TenSanPham") %>'/></a></h3>
                                            <h3>
                                                <asp:Label ID="Label2" runat="server" Text="Giá:"></asp:Label>
                                                <asp:Label ID="GiaSanPhamLabel" runat="server" Text='<%# Eval("GiaSanPham","{0:0,00}") %>' />
                                                <asp:Label ID="Label1" runat="server" Text="đ"></asp:Label>
                                            </h3>
                                        </div>
                                   </a>
                                </ItemTemplate>
                            </asp:DataList>
                            <asp:SqlDataSource ID="SqlDataSource8" runat="server" ConnectionString="<%$ ConnectionStrings:WebsiteNhaTroConnectionString %>" SelectCommand="SELECT [MaSanPham], [TenSanPham], [GiaSanPham], [HinhSanPham] FROM [SanPham1] WHERE ([HinhSanPham] = @HinhSanPham)">
                                <SelectParameters>
                                <asp:ControlParameter ControlID="DataList8" PropertyName="SelectedValue" DefaultValue="images/Ho_mini11.jpg" Name="HinhSanPham" Type="String"></asp:ControlParameter>
                                </SelectParameters>
                            </asp:SqlDataSource> 
                        </div>
                    </div>
	<%--			<div class="col-md-4 text-center animate-box">
                        <div class="product">
                             <asp:DataList ID="DataList9" runat="server" DataKeyField="MaSanPham" DataSourceID="SqlDataSource9" RepeatColumns="3" RepeatDirection="Horizontal">
                                <ItemTemplate>
                                    <a href='<%# "TrangSanPham.aspx?hc="+Eval("MaSanPham") %>'>
                                        <div class="product-grid">
                                            <div class="inner">
                                            <asp:Image ID="Image4" runat="server" Width="400" Height="350"  ImageUrl='<%# Eval("HinhSanPham", "{0}") %>'  DescriptionUrl="~/trang2.aspx" CssClass="hinhsp" />
                                            <br />
                                        </div>
                                        </div>
                                        <div class="desc">
                                            <h3><a > &nbsp;<asp:Label ID="TenSanPhamLabel" runat="server" Text='<%# Eval("TenSanPham") %>'/></a></h3>
                                            <h3>
                                                <asp:Label ID="Label2" runat="server" Text="Giá:"></asp:Label>
                                                <asp:Label ID="GiaSanPhamLabel" runat="server" Text='<%# Eval("GiaSanPham","{0:0,00}") %>' />
                                                <asp:Label ID="Label1" runat="server" Text="đ"></asp:Label>
                                            </h3>
                                        </div>
                                   </a>
                                </ItemTemplate>
                            </asp:DataList>
                            <asp:SqlDataSource ID="SqlDataSource9" runat="server" ConnectionString="<%$ ConnectionStrings:WebsiteNhaTroConnectionString %>" SelectCommand="SELECT * FROM [SanPham1]">
                            </asp:SqlDataSource> 
                        </div>
                    </div>--%>
			</div>
		</div>

	</div>
                </div>
        
        <%--<div class="row mb-5">
          <div class="col-md-6 col-lg-4 mb-5" data-aos="fade-up" data-aos-delay="100">
            <a href="#"><img src="images/9_TC.jpg" style="width:500px;height:350px" alt="Image" class="img-fluid"></a>
            <div class="p-4 bg-white">
              <span class="d-block text-secondary small text-uppercase">Jan 20th, 2019</span>
              <h2 class="h5 text-black mb-3"><a href="#">When To Sell &amp; How Much To Sell?</a></h2>
              <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Alias enim, ipsa exercitationem veniam quae sunt.</p>
            </div>
          </div>
          <div class="col-md-6 col-lg-4 mb-5" data-aos="fade-up" data-aos-delay="200">
            <a href="#"><img src="images/8_TC.jpg" style="width:500px;height:350px" alt="Image" class="img-fluid"></a>
            <div class="p-4 bg-white">
              <span class="d-block text-secondary small text-uppercase">Jan 20th, 2019</span>
              <h2 class="h5 text-black mb-3"><a href="#">When To Sell &amp; How Much To Sell?</a></h2>
              <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Alias enim, ipsa exercitationem veniam quae sunt.</p>
            </div>
          </div>
          <div class="col-md-6 col-lg-4 mb-5" data-aos="fade-up" data-aos-delay="300">
            <a href="#"><img src="images/7_TC.jpg" style="width:500px;height:350px" alt="Image" class="img-fluid"></a>
            <div class="p-4 bg-white">
              <span class="d-block text-secondary small text-uppercase">Jan 20th, 2019</span>
              <h2 class="h5 text-black mb-3"><a href="#">When To Sell &amp; How Much To Sell?</a></h2>
              <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Alias enim, ipsa exercitationem veniam quae sunt.</p>
            </div>
          </div>

          <div class="col-md-6 col-lg-4 mb-5" data-aos="fade-up" data-aos-delay="100">
            <a href="#"><img src="images/6_TC.jpg" style="width:500px;height:350px" alt="Image" class="img-fluid"></a>
            <div class="p-4 bg-white">
              <span class="d-block text-secondary small text-uppercase">Jan 20th, 2019</span>
              <h2 class="h5 text-black mb-3"><a href="#">When To Sell &amp; How Much To Sell?</a></h2>
              <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Alias enim, ipsa exercitationem veniam quae sunt.</p>
            </div>
          </div>
          <div class="col-md-6 col-lg-4 mb-5" data-aos="fade-up" data-aos-delay="200">
            <a href="#"><img src="images/5_TC.jpg" style="width:500px;height:350px" alt="Image" class="img-fluid"></a>
            <div class="p-4 bg-white">
              <span class="d-block text-secondary small text-uppercase">Jan 20th, 2019</span>
              <h2 class="h5 text-black mb-3"><a href="#">When To Sell &amp; How Much To Sell?</a></h2>
              <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Alias enim, ipsa exercitationem veniam quae sunt.</p>
            </div>
          </div>
          <div class="col-md-6 col-lg-4 mb-5" data-aos="fade-up" data-aos-delay="300">
            <a href="#"><img src="images/4_TC.jpg" style="width:500px;height:350px" alt="Image" class="img-fluid"></a>
            <div class="p-4 bg-white">
              <span class="d-block text-secondary small text-uppercase">Jan 20th, 2019</span>
              <h2 class="h5 text-black mb-3"><a href="#">When To Sell &amp; How Much To Sell?</a></h2>
              <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Alias enim, ipsa exercitationem veniam quae sunt.</p>
            </div>
          </div>

          <div class="col-md-6 col-lg-4 mb-5" data-aos="fade-up" data-aos-delay="300">
            <a href="#"><img src="images/3_TC.jpg" style="width:500px;height:350px" alt="Image" class="img-fluid"></a>
            <div class="p-4 bg-white">
              <span class="d-block text-secondary small text-uppercase">Jan 20th, 2019</span>
              <h2 class="h5 text-black mb-3"><a href="#">When To Sell &amp; How Much To Sell?</a></h2>
              <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Alias enim, ipsa exercitationem veniam quae sunt.</p>
            </div>
          </div>

          <div class="col-md-6 col-lg-4 mb-5" data-aos="fade-up" data-aos-delay="300">
            <a href="#"><img src="images/2_TC.jpg" style="width:500px;height:350px" alt="Image" class="img-fluid"></a>
            <div class="p-4 bg-white">
              <span class="d-block text-secondary small text-uppercase">Jan 20th, 2019</span>
              <h2 class="h5 text-black mb-3"><a href="#">When To Sell &amp; How Much To Sell?</a></h2>
              <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Alias enim, ipsa exercitationem veniam quae sunt.</p>
            </div>
          </div>
          <div class="col-md-6 col-lg-4 mb-5" data-aos="fade-up" data-aos-delay="300">
            <a href="#"><img src="images/1_TC.jpg" style="width:500px;height:350px" alt="Image" class="img-fluid"></a>
            <div class="p-4 bg-white">
              <span class="d-block text-secondary small text-uppercase">Jan 20th, 2019</span>
              <h2 class="h5 text-black mb-3"><a href="#">When To Sell &amp; How Much To Sell?</a></h2>
              <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Alias enim, ipsa exercitationem veniam quae sunt.</p>
            </div>--%>
          </div>
        </div>



<%--        <div class="row">
          <div class="col-md-12 text-center">
            <div class="site-pagination">
              <a href="#" class="active">1</a>
              <a href="#">2</a>
              <a href="#">3</a>
              <a href="#">4</a>
              <a href="#">5</a>
              <span>...</span>
              <a href="#">10</a>
            </div>
          </div>  
        </div>--%>
        
      </div>
    </div>

    
   <%-- <div class="site-section">
    <div class="container">
      <div class="row mb-5 justify-content-center">
        <div class="col-md-7">
          <div class="site-section-title text-center">
            <h2>Testimonies</h2>
          </div>
        </div>
      </div>
      <div class="row block-13">

        <div class="nonloop-block-13 owl-carousel">

          <div class="slide-item">
            <div class="team-member text-center">
              <img src="images/person_1.jpg" alt="Image" class="img-fluid mb-4 w-50 rounded-circle mx-auto">
              <div class="text p-3">
                <h2 class="mb-2 font-weight-light text-black h4">Megan Smith</h2>
                <span class="d-block mb-3 text-white-opacity-05">Guest</span>
                <p class="mb-5">&ldquo;Lorem ipsum dolor sit amet, consectetur adipisicing elit. Modi dolorem totam non quis facere blanditiis praesentium est. &rdquo;</p>
                
              </div>
            </div>
          </div>

          <div class="slide-item">
            <div class="team-member text-center">
              <img src="images/person_2.jpg" alt="Image" class="img-fluid mb-4 w-50 rounded-circle mx-auto">
              <div class="text p-3">
                <h2 class="mb-2 font-weight-light text-black h4">Brooke Cagle</h2>
                <span class="d-block mb-3 text-white-opacity-05">Guest</span>
                <p class="mb-5">&ldquo;Lorem ipsum dolor sit amet, consectetur adipisicing elit. Modi dolorem totam non quis facere blanditiis praesentium est. &rdquo;</p>
                
              </div>
            </div>
          </div>

          <div class="slide-item">
            <div class="team-member text-center">
              <img src="images/person_3.jpg" alt="Image" class="img-fluid mb-4 w-50 rounded-circle mx-auto">
              <div class="text p-3">
                <h2 class="mb-2 font-weight-light text-black h4">Philip Martin</h2>
                <span class="d-block mb-3 text-white-opacity-05">Guest</span>
                <p class="mb-5">&ldquo;Lorem ipsum dolor sit amet, consectetur adipisicing elit. Modi dolorem totam non quis facere blanditiis praesentium est. &rdquo;</p>
                
              </div>
            </div>
          </div>

          <div class="slide-item">
            <div class="team-member text-center">
              <img src="images/person_1.jpg" alt="Image" class="img-fluid mb-4 w-50 rounded-circle mx-auto">
              <div class="text p-3">
                <h2 class="mb-2 font-weight-light text-black h4">Megan Smith</h2>
                <span class="d-block mb-3 text-white-opacity-05">Guest</span>
                <p class="mb-5">&ldquo;Lorem ipsum dolor sit amet, consectetur adipisicing elit. Modi dolorem totam non quis facere blanditiis praesentium est. &rdquo;</p>
                
              </div>
            </div>
          </div>

          <div class="slide-item">
            <div class="team-member text-center">
              <img src="images/person_2.jpg" alt="Image" class="img-fluid mb-4 w-50 rounded-circle mx-auto">
              <div class="text p-3">
                <h2 class="mb-2 font-weight-light text-black h4">Brooke Cagle</h2>
                <span class="d-block mb-3 text-white-opacity-05">Guest</span>
                <p class="mb-5">&ldquo;Lorem ipsum dolor sit amet, consectetur adipisicing elit. Modi dolorem totam non quis facere blanditiis praesentium est. &rdquo;</p>
                
              </div>
            </div>
          </div>

          <div class="slide-item">
            <div class="team-member text-center">
              <img src="images/person_3.jpg" alt="Image" class="img-fluid mb-4 w-50 rounded-circle mx-auto">
              <div class="text p-3">
                <h2 class="mb-2 font-weight-light text-black h4">Philip Martin</h2>
                <span class="d-block mb-3 text-white-opacity-05">Guest</span>
                <p class="mb-5">&ldquo;Lorem ipsum dolor sit amet, consectetur adipisicing elit. Modi dolorem totam non quis facere blanditiis praesentium est. &rdquo;</p>
                
              </div>
            </div>
          </div>

          <div class="slide-item">
            <div class="team-member text-center">
              <img src="images/person_1.jpg" alt="Image" class="img-fluid mb-4 w-50 rounded-circle mx-auto">
              <div class="text p-3">
                <h2 class="mb-2 font-weight-light text-black h4">Megan Smith</h2>
                <span class="d-block mb-3 text-white-opacity-05">Guest</span>
                <p class="mb-5">&ldquo;Lorem ipsum dolor sit amet, consectetur adipisicing elit. Modi dolorem totam non quis facere blanditiis praesentium est. &rdquo;</p>
                
              </div>
            </div>
          </div>

          <div class="slide-item">
            <div class="team-member text-center">
              <img src="images/person_2.jpg" alt="Image" class="img-fluid mb-4 w-50 rounded-circle mx-auto">
              <div class="text p-3">
                <h2 class="mb-2 font-weight-light text-black h4">Brooke Cagle</h2>
                <span class="d-block mb-3 text-white-opacity-05">Guest</span>
                <p class="mb-5">&ldquo;Lorem ipsum dolor sit amet, consectetur adipisicing elit. Modi dolorem totam non quis facere blanditiis praesentium est. &rdquo;</p>
                
              </div>
            </div>
          </div>

          <div class="slide-item">
            <div class="team-member text-center">
              <img src="images/person_3.jpg" alt="Image" class="img-fluid mb-4 w-50 rounded-circle mx-auto">
              <div class="text p-3">
                <h2 class="mb-2 font-weight-light text-black h4">Philip Martin</h2>
                <span class="d-block mb-3 text-white-opacity-05">Guest</span>
                <p class="mb-5">&ldquo;Lorem ipsum dolor sit amet, consectetur adipisicing elit. Modi dolorem totam non quis facere blanditiis praesentium est. &rdquo;</p>
                
              </div>
            </div>
          </div>

        </div>

        </div>
      </div>
    </div>--%>

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

  </div>

  <script src="js/jquery-3.3.1.min.js"></script>
  <script src="js/jquery-migrate-3.0.1.min.js"></script>
  <script src="js/jquery-ui.js"></script>
  <script src="js/popper.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script src="js/owl.carousel.min.js"></script>
  <script src="js/mediaelement-and-player.min.js"></script>
  <script src="js/jquery.stellar.min.js"></script>
  <script src="js/jquery.countdown.min.js"></script>
  <script src="js/jquery.magnific-popup.min.js"></script>
  <script src="js/bootstrap-datepicker.min.js"></script>
  <script src="js/aos.js"></script>

  <script src="js/main.js"></script>
    </form>
</body>
</html>
