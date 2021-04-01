using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;

namespace WebShop
{
    public class Global : System.Web.HttpApplication
    {

        void Application_Start(object sender, EventArgs e)
        {
            WebShop.SQLDatabase.ConnectionString = System.Configuration.ConfigurationManager.AppSettings["ConnectionString"];
        }

        void Session_Start(object sender, EventArgs e)
        {

        }

        void Application_BeginRequest(object sender, EventArgs e)
        {

        }

        void Application_AuthenticateRequest(object sender, EventArgs e)
        {

        }

        void Application_Error(object sender, EventArgs e)
        {

        }

        void Session_End(object sender, EventArgs e)
        {

        }

        void Application_End(object sender, EventArgs e)
        {
            
        }
    }
}