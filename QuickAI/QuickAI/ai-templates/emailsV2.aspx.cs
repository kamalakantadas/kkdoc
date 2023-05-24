﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace QuickAI.ai_templates
{
    public partial class emailsV2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            //page load assign all the content of Templates Page
            Control headTemplate = LoadControl("/ai-templates/HeadContentTemplates.ascx");
            Page.Header.Controls.Add(headTemplate);

            // Load the body template
            Control bodyTemplate = LoadControl("/ai-templates/BodyContentTemplates.ascx");
            Page.Controls.Add(bodyTemplate);

            ScriptManager.RegisterStartupScript(this, this.GetType(), "emailsV2ID", "emailsV2();", true);
        }
    }
}