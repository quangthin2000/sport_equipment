﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebShop.cms.Admin.SanPham.QuanLySanPham
{
    public partial class SanPham_HienThi : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                LaySanPham();
        }

        private void LaySanPham()
        {
            DataTable dt = new DataTable();
            dt = WebShop.SanPham.Thongtin_Sanpham();
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                ltrSanPham.Text += @"
        <tr id='maDong_" + dt.Rows[i]["MaSP"] + @"'>
               <td class='cotMa'>" + dt.Rows[i]["MaSP"] + @"</td>
               <td class='cotTen'>" + dt.Rows[i]["TenSP"] + @"</td>
               <td class='cotAnh'>
                 <img class='anhDaiDien'src='/pic/SanPham/" + dt.Rows[i]["AnhSP"] + @"'/>
                 <img class='anhDaiDienHover'src='/pic/SanPham/" + dt.Rows[i]["AnhSP"] + @"'/>
               </td>
               <td class='cotSoLuong'>" + dt.Rows[i]["SoLuongSP"] + @"</td>
               <td class='cotDonGia'>" + dt.Rows[i]["GiaSP"] + @"</td>
               <td class='cotNgayTao'>" + dt.Rows[i]["NgayTao"] + @"</td>
               <td class='cotCongCu'>
                   <a href='Admin.aspx?modul=SanPham&modulphu=DanhSachSanPham&thaotac=ChinhSua&id=" + dt.Rows[i]["MaSP"] + @"' class='sua' title='Sửa'></a>
                   <a href='javascript:XoaSanPham(" + dt.Rows[i]["MaSP"] + @")' class='xoa' title='Xóa'></a>
               </td>
        </tr>
";
            }

        }
    }
}