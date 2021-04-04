﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="WebShop.Admin" %>

<%@ Register Src="~/cms/Admin/AdminLoadControl.ascx" TagPrefix="uc1" TagName="AdminLoadControl" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Trang Quản Trị Website MNST SPORT</title>
    <link href="cms/Admin/css/cssAdmin.css" rel="stylesheet" />
    <script src="cms/Admin/js/jquery-3.1.1.min.js"></script>
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
                        Xin Chào: <asp:Literal ID="ltrTenDangNhap" runat="server"></asp:Literal> | <asp:LinkButton ID="lbtDangXuat" runat="server" OnClick="lbtDangXuat_Click">Đăng xuất</asp:LinkButton>
                    </div>
                </div>
            </div>

            <!--menu chinh-->
            <div class="MenuChinh">
                <ul>
                        <li><a class="<%=DanhDau("SanPham") %>" href="Admin.aspx?modul=SanPham">Sản phẩm</a></li>
                        <li><a class="<%=DanhDau("KhachHang") %>" href="Admin.aspx?modul=KhachHang">Khách Hàng</a></li>
                        <li><a class="<%=DanhDau("TaiKhoan") %>" href="Admin.aspx?modul=TaiKhoan">Tài khoản</a></li>
                        <li><a class="<%=DanhDau("QuangCao") %>" href="Admin.aspx?modul=QuangCao">Quảng cáo</a></li> 
                        <li><a class="<%=DanhDau("Menu") %>" href="Admin.aspx?modul=Menu">Menu</a></li>
                </ul>
            </div>

            <!--Phần nội dung trang-->
            <uc1:AdminLoadControl runat="server" id="AdminLoadControl" />
        </div>
    </form>
</body>
</html>
