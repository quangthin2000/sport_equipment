using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebShop.cms.Admin.SanPham.QuanLySanPham
{
    public partial class SanPham_ThemMoi : System.Web.UI.UserControl
    {
        private string thaotac = "";
        private string id = "";//lấy id của danh mục cần chỉnh sửa
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["thaotac"] != null)
                thaotac = Request.QueryString["thaotac"];
            if (Request.QueryString["id"] != null)
                id = Request.QueryString["id"];
            if (!IsPostBack)
            {
                LayDanhMucCha();
                LaySize();
                LayNhom();
                HienThiThongTin(id);
            }

        }

        private void LaySize()
        {
            DataTable dt = new DataTable();
            dt = WebShop.Size.Thongtin_Size();
            ddlSize.Items.Clear();

            for (int i = 0; i < dt.Rows.Count; i++)
            {
                ddlSize.Items.Add(new ListItem(dt.Rows[i]["TenSize"].ToString(), dt.Rows[i]["SizeID"].ToString()));
            }
        }

        private void HienThiThongTin(string id)
        {
            if (thaotac == "ChinhSua")
            {
                btThemMoi.Text = "Chỉnh Sửa";
                cbThemNhieuDanhMuc.Visible = false;

                DataTable dt = new DataTable();
                dt = WebShop.SanPham.Thongtin_Sanpham_by_id(id);
                if (dt.Rows.Count > 0)
                {
                    ddlDanhMucCha.SelectedValue = dt.Rows[0]["MaDM"].ToString();
                    tbTenSanPham.Text = dt.Rows[0]["TenSP"].ToString();
                    tbSoLuong.Text = dt.Rows[0]["SoLuongSP"].ToString();
                    tbGiaBan.Text = dt.Rows[0]["GiaSP"].ToString();

                    tbNgayTao.Text = dt.Rows[0]["NgayTao"].ToString();
                    tbNgayHuy.Text = dt.Rows[0]["NgayHuy"].ToString();

                    ddlSize.SelectedValue = dt.Rows[0]["SizeID"].ToString();

                    ddlNhom.SelectedValue = dt.Rows[0]["NhomID"].ToString();

                    tbMoTa.Text = dt.Rows[0]["MotaSP"].ToString();

                    ltrAnhDaiDien.Text = "<img class='anhDaiDien'src='/pic/SanPham/" + dt.Rows[0]["AnhSP"] + @"'/>";
                    hdTenAnhDaiDienCu.Value = dt.Rows[0]["AnhSP"].ToString();
                }
            }

            else
            {
                btThemMoi.Text = "Thêm Mới";
                cbThemNhieuDanhMuc.Visible = true;
                tbNgayTao.Text = DateTime.Now.ToString("MM/dd/yyyy hh:mm:ss tt");
                tbNgayHuy.Text = DateTime.Now.ToString("MM/dd/yyyy hh:mm:ss tt");
            }

        }
        private void LayNhom()
        {
            DataTable dt = new DataTable();
            dt = WebShop.NhomSanPham.Thongtin_Nhomsp();
            ddlNhom.Items.Clear();

            for (int i = 0; i < dt.Rows.Count; i++)
            {
                ddlNhom.Items.Add(new ListItem(dt.Rows[i]["TenNhom"].ToString(), dt.Rows[i]["NhomID"].ToString()));
                //dt.Rows[i]["AnhDaiDien"].ToString(), dt.Rows[i]["ThuTu"].ToString(), dt.Rows[i]["SoSPHienThi"].ToString()
            }
        }
        private void LayDanhMucCha()
        {
            DataTable dt = new DataTable();
            dt = WebShop.DanhMuc.Thongtin_Danhmuc_by_MaDMCha("0");
            ddlDanhMucCha.Items.Clear();

            //ddlDanhMucCha.Items.Add(new ListItem("Danh mục gốc", "0"));
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                ddlDanhMucCha.Items.Add(new ListItem(dt.Rows[i]["TenDM"].ToString(), dt.Rows[i]["MaDM"].ToString()));
                LayDanhMucCon(dt.Rows[i]["MaDM"].ToString(), "___");
            }
        }

        private void LayDanhMucCon(string MaDMCha, string KhoangCach)
        {
            DataTable dt = new DataTable();
            dt = WebShop.DanhMuc.Thongtin_Danhmuc_by_MaDMCha(MaDMCha);

            for (int i = 0; i < dt.Rows.Count; i++)
            {
                ddlDanhMucCha.Items.Add(new ListItem(KhoangCach + dt.Rows[i]["TenDM"].ToString(), dt.Rows[i]["MaDM"].ToString()));
                LayDanhMucCon(dt.Rows[i]["MaDM"].ToString(), KhoangCach + "___");
            }
        }
        protected void btThemMoi_Click(object sender, EventArgs e)
        {
            if (thaotac == "ThemMoi")
            {
                #region code nút thêm mới

                if (flAnhDaiDien.FileContent.Length > 0)
                {
                    if (flAnhDaiDien.FileName.EndsWith(".jpeg") || flAnhDaiDien.FileName.EndsWith(".jpg") || flAnhDaiDien.FileName.EndsWith(".png") || flAnhDaiDien.FileName.EndsWith(".gif"))
                    {
                        flAnhDaiDien.SaveAs(Server.MapPath("pic/SanPham/") + flAnhDaiDien.FileName);
                    }
                }
                //else ltrThongBao.Text = "Nhập sai hoặc thiếu thông tin! Mời nhập lại";


                WebShop.SanPham.Sanpham_Inser(tbTenSanPham.Text,"", ddlSize.SelectedValue,"", flAnhDaiDien.FileName, tbSoLuong.Text, tbGiaBan.Text, tbMoTa.Text, tbNgayTao.Text, tbNgayHuy.Text, ddlDanhMucCha.SelectedValue, ddlNhom.SelectedValue, "");
                ltrThongBao.Text = "<div class='thongBaoTaoThanhCong' style='color:#1D3C5A;font-size:16px;padding-bottom:20px;text-align:center;font-weight:bold'>Đã tạo sản phẩm: " + tbTenSanPham.Text + "</div>";

                if (cbThemNhieuDanhMuc.Checked)
                {
                    //viết code xử lý xóa mục đã nhập để người dùng nhập danh mục tiếp theo
                    ResetControl();
                }

                else
                {
                    //đẩy trang về trang danh sách các damnh mục đã tạo

                    Response.Redirect("Admin.aspx?modul=SanPham&modulphu=DanhSachSanPham");
                }
                #endregion
            }
            else
            {
                #region code nút chỉnh sửa
                string tenAnhDaiDien = "";

                if (flAnhDaiDien.FileContent.Length > 0)
                {
                    if (flAnhDaiDien.FileName.EndsWith(".jpeg") || flAnhDaiDien.FileName.EndsWith(".jpg") || flAnhDaiDien.FileName.EndsWith(".png") || flAnhDaiDien.FileName.EndsWith(".gif"))
                    {
                        flAnhDaiDien.SaveAs(Server.MapPath("pic/SanPham/") + flAnhDaiDien.FileName);
                        tenAnhDaiDien = flAnhDaiDien.FileName;

                        // viết đoạn code xóa ảnh đại diện cũ tại đây - tạm thời chưa viết
                    }
                }

                if (tenAnhDaiDien == "")
                {
                    tenAnhDaiDien = hdTenAnhDaiDienCu.Value;
                }

                WebShop.SanPham.Sanpham_Update(id, tbTenSanPham.Text,"", ddlSize.SelectedValue,"", tenAnhDaiDien, tbSoLuong.Text, tbGiaBan.Text, tbMoTa.Text,
                tbNgayTao.Text, tbNgayHuy.Text, ddlDanhMucCha.SelectedValue, ddlNhom.SelectedValue);

                //đẩy trang về trang danh sách các damnh mục đã tạo
                Response.Redirect("Admin.aspx?modul=SanPham&modulphu=DanhSachSanPham");

                #endregion
            }
        }

        private void ResetControl()
        {
            tbTenSanPham.Text = "";
            tbSoLuong.Text = "";
            tbGiaBan.Text = "";
            tbNgayTao.Text = DateTime.Now.ToString("MM/dd/yyyy hh:mm:ss tt");
            tbNgayHuy.Text = DateTime.Now.ToString("MM/dd/yyyy hh:mm:ss tt");
            tbMoTa.Text = "";
        }
        protected void btHuy_Click(object sender, EventArgs e)
        {
            ResetControl();
        }
    }
}