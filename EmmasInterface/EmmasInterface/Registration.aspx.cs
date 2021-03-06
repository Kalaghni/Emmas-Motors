using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using Microsoft.Owin.Security;

namespace EmmasInterface.Login_Pages
{
    public partial class Registration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            UserStore<IdentityUser> userStore = new UserStore<IdentityUser>();
            UserManager<IdentityUser> manager = new UserManager<IdentityUser>(userStore);

            //RoleStore<IdentityRole> roleStore = new RoleStore<IdentityRole>();
            //RoleManager<IdentityRole> roleManager = new RoleManager<IdentityRole>(roleStore);

            IdentityUser user = new IdentityUser(txtUsername.Text);
            IdentityResult idResult = manager.Create(user, txtPassword.Text);
            if (idResult.Succeeded)
            {
                lblMessage.Text = "User " + user.UserName + " was created successfully!";

                //if(!roleManager.RoleExists("Admin"))
                //{
                //    IdentityResult roleResult = roleManager.Create(new IdentityRole("Admin"));
                //}

                var authenticationManager = HttpContext.Current.GetOwinContext().Authentication;
                var userIdentity = manager.CreateIdentity(user, DefaultAuthenticationTypes.ApplicationCookie);

                //IdentityResult userResult = manager.AddToRole(user.Id, "Admin");

                authenticationManager.SignIn(userIdentity);
                Response.Redirect("~/Welcome.aspx");
            }
            else
                lblMessage.Text = idResult.Errors.FirstOrDefault();
        }
    }
}