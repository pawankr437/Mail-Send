<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Client_mail_send.aspx.cs" Inherits="WebApplication1.Client_mail_send" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {text-align:center;
        }
        .auto-style3 {
            width: 74px;
            height: 26px;
            color:#0099CC;
           
        }
        .auto-style5 {
            height: 26px;
        }
        .auto-style6 {
            border-color:#0099CC;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
       
    <div>
           
            <table align="center" width="60%" >  
                <tr><td></td>
                <td>  
                        <asp:Label ID="Heading" runat="server" Font-Bold="True" Width="100%" ForeColor="#0099CC" CssClass="auto-style1" Font-Size="Larger" >  
                        Custom Email Client</asp:Label>  
                     </td></tr>
                <td></td>
                <tr>  
                    <td class="auto-style3">To</td>
                    <td class="auto-style5"> <asp:TextBox ID="To" runat="server" Width="99%" BorderColor="#0099CC" BorderStyle="Solid"></asp:TextBox></td>  
                </tr> <td>

                      </td> 
                   <tr>
                       <td class="auto-style3"> Subject</td>
                       <td> <asp:TextBox ID="subject" runat="server" width="99%" BorderColor="#0099CC" BorderStyle="Solid"></asp:TextBox></td>
                   </tr>
                    <td>

                    </td>
                    <tr>
                       <td class="auto-style3"> Body</td>
                        <td><asp:TextBox ID="Body" runat="server" Width="99%" TextMode="MultiLine" BorderColor="#0099CC" BorderStyle="Solid" Height="168px"></asp:TextBox></td>
                    </tr>       
                <td> </td>                 
                <td><asp:Button ID="Send" Text="Send" runat="server" Width="150px" OnClientClick=" return validate()" ForeColor="#0099CC" OnClick="Send_Click" /></td>
            <tr>
                <td></td>
                <td><asp:Label ID="Status" runat="server" Visible="false"></asp:Label></td>
            </tr>
            
            </table>  
        </form>  
    </body>


    <script language="javascript" type="text/javascript">

        function validate() {
            if (document.getElementById("Body").value == "") {
                alert("Body can not be blank");
                document.getElementById("Body").focus();
                return false;
            }
            if ( document.getElementById("subject").value == "") 
            {
                alert("Please enter Subject");
            document.getElementById("subject").focus();
            return false;
            }
           
            if (/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/.test(document.getElementById("To").value)==false)
            {
                alert("Please enter an invalid email address")
                document.getElementById("To").focus();
                return (false)
            }
         
              return true;
        }
</script>  

</html>
