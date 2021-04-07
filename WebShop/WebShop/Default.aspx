<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%@ Register Src="~/cms/display/DisplayLoadControl.ascx" TagPrefix="uc1" TagName="DisplayLoadControl" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>MNST Sport</title>
    <link href="css/index__.css" rel="stylesheet" />
    <script src="js/jquery-1.8.3.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">        
    <div id="dongke"></div>
    <!--đầu trang-->
    <div id="dautrang">
        <div class="contener">
            <div id="logo">
                <div id="logochu">
                    <div id="anh1"></div>
                </div>
                <div id="logoanh">
                    <div id="anh2"></div>
                </div>
            </div>
        </div>
    </div>

    <!--menu đầu trang-->
    <div id="menudautrang">
        <div class="contener">
            <div id="menutrai">
                <ul class="menungang">
                    <asp:Literal ID="ltrMenu" runat="server"></asp:Literal>
                </ul>
            </div>
            <div id="dangnhap">
                <asp:PlaceHolder ID="plChuaDangNhap" runat="server">
                    <ul>
                        <li class="dangnhap1">/<a href="Default.aspx?modul=ThanhVien&modulphu=DangKy">Đăng ký</a></li>
                        <li class="dangnhap2"><a href="Default.aspx?modul=ThanhVien&modulphu=DangNhap">Đăng nhập</a></li>
                    </ul>
                </asp:PlaceHolder>
                
                <asp:PlaceHolder ID="plDaDangNhap" runat="server" Visible="False">
                    <ul>
                        <li class="dangnhap1">/<asp:LinkButton ID="lbtDangXuat" runat="server" CausesValidation="False" OnClick="lbtDangXuat_Click">Đăng xuất</asp:LinkButton></li>
                        <li class="dangnhap2"><asp:Literal ID="ltrTenKhachHang" runat="server"></asp:Literal></li>
                    </ul>
                </asp:PlaceHolder>
            </div>
        </div>
    </div>

    <!--thanh tìm kiếm + giỏ hàng-->
    <div id="timkiem">
        <div class="contener">
            <div id="timkiem">
                <div class="timkiemtrai">
                        <div class="timkiemanh"></div>
                </div>
                <div class="timkiemphai">
                    <div class="giohang">
                        <a id="cart" style="display:inline-block" href="/Default.aspx?modul=SanPham&modulphu=GioHang"></a>
                    </div>
                    <div class="hotline">
                        
                        <div class="number">HOT LINE: 0905 480 650</div>
                    </div>
                    <div class="otimkiem">
                        <div class="search">
                            <div id="searchForm">
                                <input type="text" class="key" placeholder="Từ khóa tìm kiếm" name="pr_name" value="<%=tukhoa %>" id="keysearch" onkeydown="CheckPostSearch(event)"/>
                                <a href="javascript://" onclick="PostSearch()" class="submit">&nbsp;</a>
                            </div>
                            
                            <script type="text/javascript">
                                function CheckPostSearch(e) {
                                    if (e.keyCode === 13) {
                                        PostSearch();

                                        e.preventDefault();
                                    }
                                }

                                function PostSearch() {
                                    $("#keysearch").show().focus();
                                    if ($("#keysearch").val() !== "")
                                        window.location = "/Default.aspx?modul=SanPham&modulphu=TimKiem&tukhoa=" + $("#keysearch").val();
                                }
                            </script>
                        </div>           
                    </div>  
                </div>
            </div>
        </div>
    </div>

    <!--thân trang-->
    <div id="thantrang">
        <div class="contener">
            <div id="trangtrai">
                <asp:PlaceHolder ID="plDanhMucSanPham" runat="server">
                    <div id="danhmuc">
                        <div class="daumuc"><a>DANH MỤC SẢN PHẨM</a></div>
                        <div class="ditmuc">
                            <ul>
                                <asp:Literal ID="ltrDanhMucSanPham" runat="server"></asp:Literal>
                            </ul>
                        </div>   
                    </div>
                </asp:PlaceHolder>
                <asp:PlaceHolder ID="plDanhMucTinTuc" runat="server" Visible="False">
                    <div id="danhmuc">
                        <div class="daumuc"><a>DANH MỤC TIN TỨC</a></div>
                        <div class="ditmuc">
                            <ul>
                                <asp:Literal ID="ltrDanhMucTinTuc" runat="server"></asp:Literal>
                            </ul>
                        </div>   
                    </div>
                </asp:PlaceHolder>
                <div id="hotro">
                   <div id="pichotro">
                        <div class="logohotro">
                            <img src="css/images/akmasa.png" title="pichtro" />
                        </div>
                        <h3>Hỗ trợ trực tuyến</h3>
                    </div>
                    <div class="support">
                        <div class="text-center">
                            <p>
                                <span class="supp-name">Hồng Ngân</span>
                                <br />                    
                                <span class="phone">0905.480.650</span>
                            </p>                    
                        </div>
                       
                        <div class="text-center">
                            <p>
                                <span class="supp-name">Thời gian làm việc</span>
                                <br />
                                <span class="phone">24/24</span>
                            </p>
                        </div>
                    </div>              
                </div>
                <div id="thanhtoan">
                    <div class="title-thanhtoan">
                        <a>THÔNG TIN GIAO DỊCH</a>
                    </div>
                    <div class="thongtinnganhang">
                        <div class="nganhang">
                            <img src="../css/images/vcb.png" />
                            <p>
                                <strong>Ngân hàng Vietcombank</strong>
                                <br>
                                Số TK: 0651 0008 54378
                                <br>
                                Chủ TK: Nguyễn Đức An Sơn
                                <br>
                                Chi nhánh Điện Bàn - Quảng Nam
                            </p>
                        </div>
                        
                    </div>                   
                </div>
            </div>
            <div id="trangphai">
                <div id="slideshow">
                    <!-- #region Jssor Slider Begin -->
                    <!-- Generator: Jssor Slider Maker -->
                    <!-- Source: http://www.jssor.com/demos/full-width-slider.slider -->
                    <!-- This demo works without jquery library. -->

                    <script type="text/javascript" src="../js/full-width-slider.slider/js/jssor.slider-21.1.5.min.js"></script>
                    <!-- use jssor.slider-21.1.5.debug.js instead for debug -->
                    <script>
                        jssor_1_slider_init = function () {

                            var jssor_1_SlideoTransitions = [
                              [{ b: 5500, d: 3000, o: -1, r: 240, e: { r: 2 } }],
                              [{ b: -1, d: 1, o: -1, c: { x: 51.0, t: -51.0 } }, { b: 0, d: 1000, o: 1, c: { x: -51.0, t: 51.0 }, e: { o: 7, c: { x: 7, t: 7 } } }],
                              [{ b: -1, d: 1, o: -1, sX: 9, sY: 9 }, { b: 1000, d: 1000, o: 1, sX: -9, sY: -9, e: { sX: 2, sY: 2 } }],
                              [{ b: -1, d: 1, o: -1, r: -180, sX: 9, sY: 9 }, { b: 2000, d: 1000, o: 1, r: 180, sX: -9, sY: -9, e: { r: 2, sX: 2, sY: 2 } }],
                              [{ b: -1, d: 1, o: -1 }, { b: 3000, d: 2000, y: 180, o: 1, e: { y: 16 } }],
                              [{ b: -1, d: 1, o: -1, r: -150 }, { b: 7500, d: 1600, o: 1, r: 150, e: { r: 3 } }],
                              [{ b: 10000, d: 2000, x: -379, e: { x: 7 } }],
                              [{ b: 10000, d: 2000, x: -379, e: { x: 7 } }],
                              [{ b: -1, d: 1, o: -1, r: 288, sX: 9, sY: 9 }, { b: 9100, d: 900, x: -1400, y: -660, o: 1, r: -288, sX: -9, sY: -9, e: { r: 6 } }, { b: 10000, d: 1600, x: -200, o: -1, e: { x: 16 } }]
                            ];

                            var jssor_1_options = {
                                $AutoPlay: true,
                                $SlideDuration: 800,
                                $SlideEasing: $Jease$.$OutQuint,
                                $CaptionSliderOptions: {
                                    $Class: $JssorCaptionSlideo$,
                                    $Transitions: jssor_1_SlideoTransitions
                                },
                                $ArrowNavigatorOptions: {
                                    $Class: $JssorArrowNavigator$
                                },
                                $BulletNavigatorOptions: {
                                    $Class: $JssorBulletNavigator$
                                }
                            };

                            var jssor_1_slider = new $JssorSlider$("jssor_1", jssor_1_options);

                            //responsive code begin
                            //you can remove responsive code if you don't want the slider scales while window resizing
                            function ScaleSlider() {
                                var refSize = jssor_1_slider.$Elmt.parentNode.clientWidth;
                                if (refSize) {
                                    refSize = Math.min(refSize, 1920);
                                    jssor_1_slider.$ScaleWidth(refSize);
                                }
                                else {
                                    window.setTimeout(ScaleSlider, 30);
                                }
                            }
                            ScaleSlider();
                            $Jssor$.$AddEvent(window, "load", ScaleSlider);
                            $Jssor$.$AddEvent(window, "resize", ScaleSlider);
                            $Jssor$.$AddEvent(window, "orientationchange", ScaleSlider);
                            //responsive code end
                        };
                    </script>

                    <style>
                                        /* jssor slider bullet navigator skin 05 css */
                                        /*
                        .jssorb05 div           (normal)
                        .jssorb05 div:hover     (normal mouseover)
                        .jssorb05 .av           (active)
                        .jssorb05 .av:hover     (active mouseover)
                        .jssorb05 .dn           (mousedown)
                        */
                                        .jssorb05 {
                                            position: absolute;
                                        }

                                            .jssorb05 div, .jssorb05 div:hover, .jssorb05 .av {
                                                position: absolute;
                                                /* size of bullet elment */
                                                width: 16px;
                                                height: 16px;
                                                background: url('../js/full-width-slider.slider/img/b05.png') no-repeat;
                                                overflow: hidden;
                                                cursor: pointer;
                                            }

                                            .jssorb05 div {
                                                background-position: -7px -7px;
                                            }

                                                .jssorb05 div:hover, .jssorb05 .av:hover {
                                                    background-position: -37px -7px;
                                                }

                                            .jssorb05 .av {
                                                background-position: -67px -7px;
                                            }

                                            .jssorb05 .dn, .jssorb05 .dn:hover {
                                                background-position: -97px -7px;
                                            }

                                        /* jssor slider arrow navigator skin 22 css */
                                        /*
                        .jssora22l                  (normal)
                        .jssora22r                  (normal)
                        .jssora22l:hover            (normal mouseover)
                        .jssora22r:hover            (normal mouseover)
                        .jssora22l.jssora22ldn      (mousedown)
                        .jssora22r.jssora22rdn      (mousedown)
                        */
                        .jssora22l, .jssora22r {
                            display: block;
                            position: absolute;
                            /* size of arrow element */
                            width: 40px;
                            height: 58px;
                            cursor: pointer;
                            background: url('../js/full-width-slider.slider/img/a22.png') center center no-repeat;
                            overflow: hidden;
                        }

                                        .jssora22l {
                                            background-position: -10px -31px;
                                        }

                                        .jssora22r {
                                            background-position: -70px -31px;
                                        }

                                        .jssora22l:hover {
                                            background-position: -130px -31px;
                                        }

                                        .jssora22r:hover {
                                            background-position: -190px -31px;
                                        }

                                        .jssora22l.jssora22ldn {
                                            background-position: -250px -31px;
                                        }

                                        .jssora22r.jssora22rdn {
                                            background-position: -310px -31px;
                                        }
                    </style>


                    <div id="jssor_1" style="position: relative; margin: 0 auto; top: 0px; left: 0px; width: 1300px; height: 500px; overflow: hidden; visibility: hidden;">
                        <!-- Loading Screen -->
                        <div data-u="loading" style="position: absolute; top: 0px; left: 0px;">
                            <div style="filter: alpha(opacity=70); opacity: 0.7; position: absolute; display: block; top: 0px; left: 0px; width: 100%; height: 100%;"></div>
                            <div style="position: absolute; display: block; background: url('js/full-width-slider.slider/img/loading.gif') no-repeat center center; top: 0px; left: 0px; width: 100%; height: 100%;"></div>
                        </div>
                        <div data-u="slides" style="cursor: default; position: relative; top: 0px; left: 0px; width: 1300px; height: 500px; overflow: hidden;">
                            
                            <div data-p="225.00" style="display: none;">                      
                                <img data-u="image" src="../js/full-width-slider.slider/img/slider/a.jpg" />
                            </div>
                            <div data-p="225.00" data-po="80% 55%" style="display: none;">                              
                                <img data-u="image" src="../js/full-width-slider.slider/img/slider/b.jpg" />
                            </div>
                            <div data-p="225.00" data-po="80% 55%" style="display: none;">
                                <img data-u="image" src="../js/full-width-slider.slider/img/slider/c.jpg" />
                            </div>
                            <!--<a data-u="add" href="http://www.jssor.com/demos/full-width-slider.slider" style="display:none">Full Width Slider</a>-->

                        </div>
                        <!-- Bullet Navigator -->
                        <div data-u="navigator" class="jssorb05" style="bottom:16px;right:16px;" data-autocenter="1">
                            <!-- bullet navigator item prototype -->
                            <div data-u="prototype" style="width:16px;height:16px;"></div>
                        </div>
                        <!-- Arrow Navigator -->
                        <span data-u="arrowleft" class="jssora22l" style="top:0px;left:12px;width:40px;height:58px;" data-autocenter="2"></span>
                        <span data-u="arrowright" class="jssora22r" style="top:0px;right:12px;width:40px;height:58px;" data-autocenter="2"></span>
                    </div>
                    <script>
                        jssor_1_slider_init();
                    </script>

                    <!-- #endregion Jssor Slider End -->
                </div>
                <uc1:DisplayLoadControl runat="server" ID="DisplayLoadControl" />
            </div>
        </div>
    </div>

    <!--chân trang-->
    <div id="footer">
        <div class="contener">
            <div class=" menufoter" style = "color: white">
                <p>©2021 Copyright by MNST Sport</p>
            </div>
        </div>
    </div>
    </form>
</body>
</html>
