<%@ Page Language="C#" AutoEventWireup="true" CodeFile="TrangGioiThieu.aspx.cs" Inherits="TrangGioiThieu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>TRANG GIỚI THIỆU</title>
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
    
    <link rel="stylesheet" href="css/aos.css">
    <link rel="stylesheet" href="css/style.css">

    <link rel="stylesheet" href="css/zerogrid.css">
	<link rel="stylesheet" href="css/style_gioithieu.css">
	<link rel="stylesheet" href="css/menu.css">
	<link rel="stylesheet" href="css/lightbox.css">
	<link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
	
	
	<script src="js/jquery1111.min.js" type="text/javascript"></script>
	<script src="js/script.js"></script>
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
              <h1 class=""><a href="default.aspx" class="h5 text-uppercase text-black"><strong>NHaTroBinhDuong<span class="text-danger">.</span></strong></a></h1>
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
            <h1 class="mb-2">GIỚI THIỆU</h1>
            <div><a href="default.aspx"><b>TRANG CHỦ</b></a> <span class="mx-2 text-white">&bullet;</span> <strong class="text-white">GIỚI THIỆU</strong></div>
          </div>
        </div>
      </div>
    </div>

    <div class="site-section border-bottom">
      <div class="container">
        <div class="row align-items-center">
          <div class="col-md-6" data-aos="fade-up" data-aos-delay="100">
            <img src="images/nhatro1.jpg" alt="Image" class="img-fluid">
          </div>
          <div class="col-md-5 ml-auto"  data-aos="fade-up" data-aos-delay="200">
            <div class="site-section-title mb-3">
              <h4 style="font-size: 15pt"><b>CHO THUÊ PHÒNG TRỌ BÌNH DƯƠNG GIÁ RẺ</b></h4>
            </div>
            <p>Nhu cầu tìm kiếm phòng trọ Bình Dương, nhà trọ ở Bình Dương của sinh viên hay người đi làm luôn vào tình trạng quá tải. Đặc biệt, trong địa phận tỉnh Bình Dương có khá nhiều trường Đại Học, nhà máy, khu công nghiệp,...nên nhu cầu nhà là vấn đề cấp thiết. Nhất là vào những dịp tuyển sinh Đại học, nhu cầu thuê trọ luôn khiến các bậc phụ huynh và sĩ tử trăn trở không biết tìm nhà trọ Bình Dương ở đâu.</p>
            <p>Hiện nay, hầu hết các sinh viên và người đi làm từ các tỉnh lên Bình Dương học tập, làm việc luôn muốn tìm thuê phòng trọ Bình Dương với giá rẻ mà vẫn đạt những mong muốn, yêu cầu của cuộc sống.</p>
           <p>Để giải quyết vấn đề nan giải trên, bạn có thể truy cập NHATROBINHDUONG để tìm ra phòng trọ các huyện của Bình Dương như: phòng trọ Thuận An, Dĩ An hay Thủ Dầu Một,... Bạn có thể tìm ra một phòng trọ vừa hợp túi tiền, vừa hợp các yêu cầu và thuận tiện di chuyển gần các trường học, bệnh viện, chợ,...</p>
          </div>
        </div>
      </div>
    </div>


    <div class="site-section">
      <div class="container">
        <div class="row align-items-center">
          <div class="col-md-6 order-md-2" data-aos="fade-up" data-aos-delay="100">
            <img src="images/nhatro2.jpg" alt="Image" class="img-fluid">
          </div>
          <div class="col-md-5 mr-auto order-md-1"  data-aos="fade-up" data-aos-delay="200">
            <div class="site-section-title mb-3">
              <h2></h2>
            </div>
            <p>Website với giao diện thân thiện dễ sử dụng. Các chuyên mục được phân chia rất rõ ràng và chi tiết.</p>
            <p>Bạn có thể tìm phòng trọ nhà trọ theo:</p>
            <p>&nbsp;+ Quận huyện, chuyên mục, theo giá, theo diện tích.</p>
            <p>Chúng tôi luôn cố gắng đem lại những thông tin nhanh chóng và chính xác cho mọi người. rất mong nhận được sự ủng hộ giúp đỡ của mọi người cùng nhau xây dựng một kênh thông tin truyền thông về nhà trọ.</p>
          </div>
        </div>
      </div>
    </div>

<%--    <div class="site-section border-top bg-light">
    <div class="container">
      <div class="row mb-5 justify-content-center"  data-aos="fade-up" >
        <div class="col-md-7">
          <div class="site-section-title text-center">
            <h2>MỘT SỐ HÌNH ẢNH PHÒNG TRỌ TẠI BÌNH DƯƠNG</h2>
          </div>
        </div>
      </div>
      <div class="row">
          <div class="col-md-6 col-lg-4 mb-5 mb-lg-5"  data-aos="fade-up" data-aos-delay="200">
            <div class="team-member p-4">

              <img src="images/nhatro_TDM_1.jpg" style="width:100%" alt="Image" class="img-fluid rounded mb-4">

              <div class="text">

                <h2 class="mb-2 font-weight-light text-black h4">Megan Smith</h2>
                <span class="d-block mb-3 text-white-opacity-05">Real Estate Agent</span>
              </div>

            </div>
          </div>

          <div class="col-md-6 col-lg-4 mb-5 mb-lg-5"  data-aos="fade-up" data-aos-delay="300">
            <div class="team-member p-4">

              <img src="images/person_2.jpg" alt="Image" class="img-fluid rounded mb-4">

              <div class="text">

                <h2 class="mb-2 font-weight-light text-black h4">Brooke Cagle</h2>
                <span class="d-block mb-3 text-white-opacity-05">Real Estate Agent</span>
                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Omnis, cumque vitae voluptates culpa earum similique corrupti itaque veniam doloribus amet perspiciatis recusandae sequi nihil tenetur ad, modi quos id magni!</p>
                <p>
                  <a href="#" class="text-black p-2"><span class="icon-facebook"></span></a>
                  <a href="#" class="text-black p-2"><span class="icon-twitter"></span></a>
                  <a href="#" class="text-black p-2"><span class="icon-linkedin"></span></a>
                </p>
              </div>

            </div>
          </div>

          <div class="col-md-6 col-lg-4 mb-5 mb-lg-5"  data-aos="fade-up" data-aos-delay="400">
            <div class="team-member p-4">

              <img src="images/person_3.jpg" alt="Image" class="img-fluid rounded mb-4">

              <div class="text">

                <h2 class="mb-2 font-weight-light text-black h4">Philip Martin</h2>
                <span class="d-block mb-3 text-white-opacity-05">Real Estate Agent</span>
                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Maiores illo iusto, inventore, iure dolorum officiis modi repellat nobis, praesentium perspiciatis, explicabo. Atque cupiditate, voluptates pariatur odit officia libero veniam quo.</p>
                <p>
                  <a href="#" class="text-black p-2"><span class="icon-facebook"></span></a>
                  <a href="#" class="text-black p-2"><span class="icon-twitter"></span></a>
                  <a href="#" class="text-black p-2"><span class="icon-linkedin"></span></a>
                </p>
              </div>

            </div>
          </div>



          <div class="col-md-6 col-lg-4 mb-5 mb-lg-5"  data-aos="fade-up" data-aos-delay="400">
            <div class="team-member p-4">

              <img src="images/person_3.jpg" alt="Image" class="img-fluid rounded mb-4">

              <div class="text">

                <h2 class="mb-2 font-weight-light text-black h4">Philip Martin</h2>
                <span class="d-block mb-3 text-white-opacity-05">Real Estate Agent</span>
                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Maiores illo iusto, inventore, iure dolorum officiis modi repellat nobis, praesentium perspiciatis, explicabo. Atque cupiditate, voluptates pariatur odit officia libero veniam quo.</p>
                <p>
                  <a href="#" class="text-black p-2"><span class="icon-facebook"></span></a>
                  <a href="#" class="text-black p-2"><span class="icon-twitter"></span></a>
                  <a href="#" class="text-black p-2"><span class="icon-linkedin"></span></a>
                </p>
              </div>

            </div>
          </div>



          <div class="col-md-6 col-lg-4 mb-5 mb-lg-5"  data-aos="fade-up" data-aos-delay="200">
            <div class="team-member p-4">

              <img src="images/person_1.jpg" alt="Image" class="img-fluid rounded mb-4">

              <div class="text">

                <h2 class="mb-2 font-weight-light text-black h4">Megan Smith</h2>
                <span class="d-block mb-3 text-white-opacity-05">Real Estate Agent</span>
                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Modi dolorem totam non quis facere blanditiis praesentium est. Totam atque corporis nisi, veniam non. Tempore cupiditate, vitae minus obcaecati provident beatae!</p>
                <p>
                  <a href="#" class="text-black p-2"><span class="icon-facebook"></span></a>
                  <a href="#" class="text-black p-2"><span class="icon-twitter"></span></a>
                  <a href="#" class="text-black p-2"><span class="icon-linkedin"></span></a>
                </p>
              </div>

            </div>
          </div>


          <div class="col-md-6 col-lg-4 mb-5 mb-lg-5"  data-aos="fade-up" data-aos-delay="300">
            <div class="team-member p-4">

              <img src="images/person_2.jpg" alt="Image" class="img-fluid rounded mb-4">

              <div class="text">

                <h2 class="mb-2 font-weight-light text-black h4">Brooke Cagle</h2>
                <span class="d-block mb-3 text-white-opacity-05">Real Estate Agent</span>
                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Omnis, cumque vitae voluptates culpa earum similique corrupti itaque veniam doloribus amet perspiciatis recusandae sequi nihil tenetur ad, modi quos id magni!</p>
                <p>
                  <a href="#" class="text-black p-2"><span class="icon-facebook"></span></a>
                  <a href="#" class="text-black p-2"><span class="icon-twitter"></span></a>
                  <a href="#" class="text-black p-2"><span class="icon-linkedin"></span></a>
                </p>
              </div>

            </div>
          </div>
        </div>
    </div>
    </div>--%>

<section id="container">
	<div class="wrap-container">
		<section class="content-box box-3 box-style-1"><!--Start Box-->
			<div class="zerogrid">
				<div class="row">
					<center><h2 class="header t-center"><h3>HÌNH ẢNH CÁC PHÒNG TRỌ NỔI BẬT</h3></h2></center>
					<div class="row">
						<div class="col-1-4">
							<div class="wrap-col">
								<a class="example-image-link" href="images/hinh 1_GT.jpg" style="width:500px;height:350px" data-lightbox="example-set" data-title="Click the right half of the image to move forward.">
									<div class="zoom-container">
										<div class="zoom-caption">
											<div class="caption-inner">
												<div class="caption-inner1">
													<i class="fa fa-eye"></i>
												</div>
											</div>
										</div>
										<img class="example-image" src="images/hinh 1_GT.jpg" alt=""/>
									</div>
								</a>
								<a class="example-image-link" href="hinh 2_GT.jpg" style="width:500px;height:350px" data-lightbox="example-set" data-title="Click the right half of the image to move forward.">
									<div class="zoom-container">
										<div class="zoom-caption">
											<div class="caption-inner">
												<div class="caption-inner1">
													<i class="fa fa-eye"></i>
												</div>
											</div>
										</div>
										<img class="example-image" src="images/hinh 2_GT.jpg" alt=""/>
									</div>
								</a>
								<a class="example-image-link" href="images/hinh 3_GT.jpg" style="width:500px;height:350px" data-lightbox="example-set" data-title="Click the right half of the image to move forward.">
									<div class="zoom-container">
										<div class="zoom-caption">
											<div class="caption-inner">
												<div class="caption-inner1">
													<i class="fa fa-eye"></i>
												</div>
											</div>
										</div>
										<img class="example-image" src="images/hinh 3_GT.jpg" alt=""/>
									</div>
								</a>
							</div>
						</div>
						<div class="col-1-4">
							<div class="wrap-col">
								<a class="example-image-link" href="images/hinh 4_GT.jpg" style="width:500px;height:350px" data-lightbox="example-set" data-title="Click the right half of the image to move forward.">
									<div class="zoom-container">
										<div class="zoom-caption">
											<div class="caption-inner">
												<div class="caption-inner1">
													<i class="fa fa-eye"></i>
												</div>
											</div>
										</div>
										<img class="example-image" src="images/hinh 4_GT.jpg" alt=""/>
									</div>
								</a>
								<a class="example-image-link" href="images/hinh 5_GT.jpg" style="width:500px;height:350px" data-lightbox="example-set" data-title="Click the right half of the image to move forward.">
									<div class="zoom-container">
										<div class="zoom-caption">
											<div class="caption-inner">
												<div class="caption-inner1">
													<i class="fa fa-eye"></i>
												</div>
											</div>
										</div>
										<img class="example-image" src="images/hinh 5_GT.jpg" alt=""/>
									</div>
								</a>
								<a class="example-image-link" href="images/hinh 6_GT.jpg" style="width:500px;height:350px" data-lightbox="example-set" data-title="Click the right half of the image to move forward.">
									<div class="zoom-container">
										<div class="zoom-caption">
											<div class="caption-inner">
												<div class="caption-inner1">
													<i class="fa fa-eye"></i>
												</div>
											</div>
										</div>
										<img class="example-image" src="images/hinh 6_GT.jpg" alt=""/>
									</div>
								</a>
							</div>
						</div>
						<div class="col-1-4">
							<div class="wrap-col">
								<a class="example-image-link" href="images/hinh 7_GT.jpg" style="width:500px;height:350px" data-lightbox="example-set" data-title="Click the right half of the image to move forward.">
									<div class="zoom-container">
										<div class="zoom-caption">
											<div class="caption-inner">
												<div class="caption-inner1">
													<i class="fa fa-eye"></i>
												</div>
											</div>
										</div>
										<img class="example-image" src="images/hinh 7_GT.jpg" alt=""/>
									</div>
								</a>
								<a class="example-image-link" href="images/hinh 8_GT.jpg" style="width:500px;height:350px" data-lightbox="example-set" data-title="Click the right half of the image to move forward.">
									<div class="zoom-container">
										<div class="zoom-caption">
											<div class="caption-inner">
												<div class="caption-inner1">
													<i class="fa fa-eye"></i>
												</div>
											</div>
										</div>
										<img class="example-image" src="images/hinh 8_GT.jpg" alt=""/>
									</div>
								</a>
								<a class="example-image-link" href="images/hinh 9_GT.jpg" style="width:500px;height:350px" data-lightbox="example-set" data-title="Click the right half of the image to move forward.">
									<div class="zoom-container">
										<div class="zoom-caption">
											<div class="caption-inner">
												<div class="caption-inner1">
													<i class="fa fa-eye"></i>
												</div>
											</div>
										</div>
										<img class="example-image" src="images/hinh 9_GT.jpg" alt=""/>
									</div>
								</a>
							</div>
						</div>
						<div class="col-1-4">
							<div class="wrap-col">
								<a class="example-image-link" href="images/hinh 10_GT.jpg" style="width:500px;height:350px" data-lightbox="example-set" data-title="Click the right half of the image to move forward.">
									<div class="zoom-container">
										<div class="zoom-caption">
											<div class="caption-inner">
												<div class="caption-inner1">
													<i class="fa fa-eye"></i>
												</div>
											</div>
										</div>
										<img class="example-image" src="images/hinh 10_GT.jpg" alt=""/>
									</div>
								</a>
								<a class="example-image-link" href="images/hinh 11_GT.jpg" style="width:500px;height:350px" data-lightbox="example-set" data-title="Click the right half of the image to move forward.">
									<div class="zoom-container">
										<div class="zoom-caption">
											<div class="caption-inner">
												<div class="caption-inner1">
													<i class="fa fa-eye"></i>
												</div>
											</div>
										</div>
										<img class="example-image" src="images/hinh 11_GT.jpg" alt=""/>
									</div>
								</a>
								<a class="example-image-link" href="images/hinh 12_GT.jpg" style="width:500px;height:350px" data-lightbox="example-set" data-title="Click the right half of the image to move forward.">
									<div class="zoom-container">
										<div class="zoom-caption">
											<div class="caption-inner">
												<div class="caption-inner1">
													<i class="fa fa-eye"></i>
												</div>
											</div>
										</div>
										<img class="example-image" src="images/hinh 12_GT.jpg" alt=""/>
									</div>
								</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
 </div>
    </section>

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

  <script src="js/lightbox-plus-jquery.min.js"></script>

    <script type="text/javascript">
    $(function () {
        if ($.browser.msie && $.browser.version.substr(0, 1) < 7) {
            $('li').has('ul').mouseover(function () {
                $(this).children('ul').css('visibility', 'visible');
            }).mouseout(function () {
                $(this).children('ul').css('visibility', 'hidden');
            })
        }

        /* Mobile */
        $("#menu-trigger").on("click", function () {
            $("#menu").slideToggle();
        });

        // iPad
        var isiPad = navigator.userAgent.match(/iPad/i) != null;
        if (isiPad) $('#menu ul').addClass('no-transition');
    });
</script>
    </form>
</body>
</html>
