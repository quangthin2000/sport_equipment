﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebShop.cms.Admin.SanPham.QuanLySanPham
{
    public partial class SanPhamLoadControl : System.Web.UI.UserControl
    {
        private string thaotac = "null";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["thaotac"] != null)
                thaotac = Request.QueryString["thaotac"];
            switch (thaotac)
            {
                case "ThemMoi":
                    plLoadControl.Controls.Add(LoadControl("SanPham_ThemMoi.ascx"));
                    break;

                case "HienThi":
                    plLoadControl.Controls.Add(LoadControl("SanPham_HienThi.ascx"));
                    break;

                default:
                    plLoadControl.Controls.Add(LoadControl("SanPham_HienThi.ascx"));
                    break;

            }
        }
    }
}