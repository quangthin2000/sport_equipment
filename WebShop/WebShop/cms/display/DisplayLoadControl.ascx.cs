using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebShop.cms.display
{
    public partial class DisplayLoadControl : System.Web.UI.UserControl
    {
        private string modul = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["modul"] != null)
                modul = Request.QueryString["modul"];

            switch (modul)
            {
                case "SanPham":
                    plLoadControl.Controls.Add(LoadControl("SanPham/SanPhamLoadControl.ascx"));
                    break;

                case "ThanhVien":
                    plLoadControl.Controls.Add(LoadControl("ThanhVien/ThanhVienLoadControl.ascx"));
                    break;

                case "GioiThieu":
                    plLoadControl.Controls.Add(LoadControl("GioiThieu/GioiThieuLoadControl.ascx"));
                    break;

                case "ThanhToan":
                    plLoadControl.Controls.Add(LoadControl("ThanhToan/ThanhToanLoadControl.ascx"));
                    break;

                default:
                    plLoadControl.Controls.Add(LoadControl("TrangChu/TrangChuLoadControl.ascx"));
                    break;

            }

        }
    }
}