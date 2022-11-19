﻿using DataAccessLayer;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BemBlog.Admin
{
    public partial class KategoriIndex : System.Web.UI.Page
    {
        DataModel dm = new DataModel();

        protected void Page_Load(object sender, EventArgs e)
        {
            lv_kategoriler.DataSource = dm.KategoriListele(false);
            lv_kategoriler.DataBind();
        }

        protected void lv_kategoriler_ItemCommands(object sender, ListViewCommandEventArgs e)
        {
            int id = Convert.ToInt32(e.CommandArgument);
            if (e.CommandName == "sil")
            {
                dm.KategoriSil(id);
            }
            Response.Redirect("KategoriIndex.aspx");
        }
    }
}