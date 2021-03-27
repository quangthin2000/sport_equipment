<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="WebShop.Admin" %>

<%@ Register Src="~/cms/Admin/AdminLoadControl.ascx" TagPrefix="uc1" TagName="AdminLoadControl" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Trang Quản Trị Website MNST SPORT</title>
    <link href="cms/Admin/css/cssAdmin.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <!-- Header-->
            <div id="header">
                <div class="container">
                    <div class="logo">
                        <a href="/Admin.aspx"><img src="cms/Admin/css/Picture3.png" /></a>
                    </div>
                    <div class="accountMenu">
                        Xin Chào: Admin
                    </div>
                </div>
            </div>

            <!--menu chinh-->
            <div class="MenuChinh">
                <ul>
                    <li><a href="/Admin.aspx" title="Trang Chủ">Trang Chủ</a></li>
                    <li><a href="/Admin.aspx?modul=SanPham" title="Sản Phẩm">Sản Phẩm</a></li>
                    <li><a href="/Admin.aspx?modul=Menu" title="Menu">Menu</a></li>
                    <li><a href="/Admin.aspx?modul=KhachHang" title="Khách Hàng">Khách Hàng</a></li>
                    <li><a href="/Admin.aspx?modul=TaiKhoan" title="Tài Khoản">Tài Khoản</a></li>
                </ul>
            </div>

            <!--Phần nội dung trang-->
            <uc1:AdminLoadControl runat="server" id="AdminLoadControl" />
        </div>
    </form>
</body>
</html>
