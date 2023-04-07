<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="FeaturedContent">
    <div>
        <div style="font-size:x-large" align="center">Student Info Manage Form</div>
        <br />
    &nbsp;<table class="auto-style1">
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style5">Student id</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Width="196px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style5">Student Name</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" Width="196px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style5">Adress</td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server">
                        <asp:ListItem>US</asp:ListItem>
                        <asp:ListItem>Canada</asp:ListItem>
                        <asp:ListItem>UK</asp:ListItem>
                        <asp:ListItem></asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style5">Age</td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" Width="196px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3"></td>
                <td class="auto-style6">Contact</td>
                <td class="auto-style4">
                    <asp:TextBox ID="TextBox4" runat="server" Width="196px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td>
                    <asp:Button ID="Button4" runat="server" BackColor="#FF9966" OnClick="Button4_Click" Text="Delete" />
                    <asp:Button ID="Button1" runat="server" BackColor="#66FF66" ForeColor="#FF6600" OnClick="Button1_Click" Text="Insert" Width="63px" />
                    <asp:Button ID="Button2" runat="server" BackColor="#FF33CC" OnClick="Button2_Click" Text="Update" Width="62px" />
                    <asp:Button ID="Button5" runat="server" BackColor="#FFCCFF" OnClick="Button5_Click" Text="Search" Width="68px" />
                    <asp:Button ID="Button6" runat="server" BackColor="#FF99FF" OnClick="Button6_Click" Text="Clear" />
                    <asp:GridView ID="GridView1" runat="server" Width="485px">
                    </asp:GridView>
                </td>
            </tr>
        </table>
    </div>
    <h1>My first crud</h1>
</asp:Content>
<asp:Content ID="Content1" runat="server" contentplaceholderid="HeadContent">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 151px;
        }
        .auto-style3 {
            width: 151px;
            height: 23px;
        }
        .auto-style4 {
            height: 23px;
        }
        .auto-style5 {
            width: 220px;
        }
        .auto-style6 {
            height: 23px;
            width: 220px;
        }
    </style>
</asp:Content>
