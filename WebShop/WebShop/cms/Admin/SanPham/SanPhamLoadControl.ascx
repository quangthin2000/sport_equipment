﻿<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="SanPhamLoadControl.ascx.cs" Inherits="WebShop.cms.Admin.SanPham.SanPhamLoadControl" %>
<div class="container">
    <div style="clear:both;height:20px"></div>
    <div class="cotTrai">
        <div class="head">
            Quản lý
        </div>
        <ul>
            <li><a class="<%=DanhDau("SanPham","DanhMuc","") %>" href="Admin.aspx?modul=SanPham&modulphu=DanhMuc">Danh mục sản phẩm</a></li>
            <li><a class="<%=DanhDau("SanPham","DanhSachSanPham","") %>" href="Admin.aspx?modul=SanPham&modulphu=DanhSachSanPham">Danh sách sản phẩm</a></li>
            <li><a class="<%=DanhDau("SanPham","Size","") %>" href="Admin.aspx?modul=SanPham&modulphu=Size">Size sản phẩm</a></li>
            <li><a class="<%=DanhDau("SanPham","NhomSanPham","") %>" href="Admin.aspx?modul=SanPham&modulphu=NhomSanPham">Nhóm Sản Phẩm</a></li>
            <li><a class="<%=DanhDau("SanPham","DonHang","") %>" href="Admin.aspx?modul=SanPham&modulphu=DonHang">Đơn hàng</a></li>
        </ul>
        <div class="head">
            Thêm mới
        </div>
        <ul>
            <li><a class="<%=DanhDau("SanPham","DanhMuc","ThemMoi") %>" href="Admin.aspx?modul=SanPham&modulphu=DanhMuc&thaotac=ThemMoi">Danh mục sản phẩm</a></li>
            <li><a class="<%=DanhDau("SanPham","DanhSachSanPham","ThemMoi") %>" href="Admin.aspx?modul=SanPham&modulphu=DanhSachSanPham&thaotac=ThemMoi">Danh sách sản phẩm</a></li>
            <li><a class="<%=DanhDau("SanPham","Size","ThemMoi") %>" href="Admin.aspx?modul=SanPham&modulphu=Size&thaotac=ThemMoi">Size sản phẩm</a></li>
            <li><a class="<%=DanhDau("SanPham","NhomSanPham","ThemMoi") %>" href="Admin.aspx?modul=SanPham&modulphu=NhomSanPham&thaotac=ThemMoi">Nhóm Sản Phẩm</a></li>
        </ul>
    </div>
    <div class="cotPhai">
        <asp:PlaceHolder ID="plSanPhamLoadControl" runat="server"></asp:PlaceHolder>
    </div>
    <div class="cb"></div>

</div>