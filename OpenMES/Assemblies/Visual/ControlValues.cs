using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace OpenMES.Assemblies.Visual
{
    class ControlValues : MainWindow
    {
       public void PopulateVisualControls()
        {
            lblTitle.Text = "Welcome to OpenMES";
            lblUserName.Text = "User Name:";
            lblPassword.Text = "Password:";
        }
    }
}
