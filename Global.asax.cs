using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Optimization;
using System.Web.Routing;
using System.Web.Security;
using System.Web.SessionState;
using System.IO;

namespace WebApp_Exercise1
{
    public class Global : HttpApplication
    {
        void Application_Start(object sender, EventArgs e)
        {
            // Code that runs on application startup
            RouteConfig.RegisterRoutes(RouteTable.Routes);
            BundleConfig.RegisterBundles(BundleTable.Bundles);

            ///this event is execute only once when application start and it stores the server memory until the worker process is restart
            Application["user"] = 0;
        }
        protected void Session_Start(object sender,EventArgs e)
        {
            //When Session in start application variable is increase by 1
            Application.Lock();
            Application["user"] = (int)Application["user"] + 1;
            Application.UnLock();

        }

        protected void Session_End(object sender,EventArgs e)
        {
            //When Session in end application variable is decreased by 1.
            Application.Lock();
            Application["user"] = (int)Application["user"] - 1;
            Application.UnLock();
        }

        protected void Application_Error(object sender,EventArgs e)
        {
            //HttpException getLastError = Server.GetLastError() as HttpException;
            Exception ex = Server.GetLastError();
            string str = "";
            string path = @"D:\test.txt";
            str = ex.Message;
            File.WriteAllText(path, str);
            Server.Transfer("~/ErrorPage.html");

            //if (getLastError.GetHttpCode()==404)
            //{
            //    Server.Transfer("~/ErrorPage.html");
            //}
        }
    }
}