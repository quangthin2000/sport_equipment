﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WebShop.Login1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Trang đăng nhập vào khu vực quản trị website</title>
    <link href="cms/Admin/css/css_DangNhap.css" rel="stylesheet" />
</head>
<body>
    <script>
        // Execute a function when the user releases a key on the keyboard
        document.addEventListener("keyup", function (event) {
            // Number 13 is the "Enter" key on the keyboard
            if (event.keyCode === 13) {
                // Cancel the default action, if needed
                event.preventDefault();
                // Trigger the button element with a click
                document.getElementById("lbtDangNhap").click();
            }
        });
    </script>
    <form id="form1" runat="server">
        <div class="FormDangNhap">
        <div class="head">Đăng nhập hệ thống</div>
        <div class="controls">
            <div class="row">
                <div class="left">Tên đăng nhập</div>
                <div class="right">
                    <asp:TextBox ID="tbTenDangNhap" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" SetFocusOnError="True" Display="Dynamic" 
                        ControlToValidate="tbTenDangNhap" ForeColor="Red"></asp:RequiredFieldValidator>
                </div>            
            </div>
            <div class="row">
                <div class="left">Mật khẩu</div>
                <div class="right">
                    <asp:TextBox ID="tbMatKhau" runat="server" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" SetFocusOnError="True" Display="Dynamic" 
                    ControlToValidate="tbMatKhau" ForeColor="Red"></asp:RequiredFieldValidator>
                </div>            
            </div>
            <div class="row">
                <div class="left">&nbsp;</div>
                <div class="right">
                    <asp:LinkButton ID="lbtDangNhap" runat="server" CssClass="btDangNhap" OnClick="lbtDangNhap_Click">Đăng nhập</asp:LinkButton>
                </div>            
            </div>
            <div>
                <asp:Literal ID="ltrThongBao" runat="server"></asp:Literal>
            </div>
            </div>
        </div>
     </form>
</body>
</html>
