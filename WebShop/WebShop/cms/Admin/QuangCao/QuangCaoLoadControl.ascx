﻿<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="QuangCaoLoadControl.ascx.cs" Inherits="WebShop.cms.Admin.QuangCao.QuangCaoLoadControl" %>
<div class="container">
    <div style="clear:both;height:20px"></div>
    <div class="cotTrai">
        <div class="head">
            Quản lý
        </div>
        <ul>
            <li><a class="<%=DanhDau("QuangCao","NhomQuangCao","") %>" href="Admin.aspx?modul=QuangCao&modulphu=NhomQuangCao">Nhóm quảng cáo</a></li>
            <li><a class="<%=DanhDau("QuangCao","DanhSachQuangCao","") %>" href="Admin.aspx?modul=QuangCao&modulphu=DanhSachQuangCao">Danh sách Quảng cáo</a></li>            
        </ul>
        <div class="head">
            Thêm mới
        </div>
        <ul>
            <li><a class="<%=DanhDau("QuangCao","NhomQuangCao","ThemMoi") %>" href="Admin.aspx?modul=QuangCao&modulphu=NhomQuangCao&thaotac=ThemMoi">Nhóm quảng cáo</a></li>
            <li><a class="<%=DanhDau("QuangCao","DanhSachQuangCao","ThemMoi") %>" href="Admin.aspx?modul=QuangCao&modulphu=DanhSachQuangCao&thaotac=ThemMoi">Danh sách quảng cáo</a></li>            
        </ul>
    </div>
    <div class="cotPhai">
        <asp:PlaceHolder ID="plQuangCaoLoadControl" runat="server"></asp:PlaceHolder>
    </div>
    <div class="cb"></div>

</div>