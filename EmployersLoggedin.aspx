<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="EmployersLoggedin.aspx.cs" Inherits="Final.EmployersLoggedin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style11 {
            text-align: center;
        }
        .auto-style12 {
            width: 100%;
            height: 182px;
        }
        .auto-style13 {
            text-align: left;
            width: 205px;
        }
        .auto-style14 {
            width: 745px;
        }
        .auto-style15 {
            width: 205px;
            height: 22px;
        }
        .auto-style16 {
            height: 22px;
        }
        .auto-style17 {
            text-align: left;
        }
        .auto-style23 {
            text-align: left;
            width: 745px;
            font-size: small;
            height: 50px;
        }
        .auto-style24 {
            text-align: left;
            height: 50px;
        }
        .auto-style25 {
            width: 745px;
            height: 34px;
        }
        .auto-style26 {
            height: 34px;
        }
        .auto-style27 {
            text-align: left;
            width: 745px;
            font-size: small;
            height: 28px;
        }
        .auto-style28 {
            height: 28px;
            text-align: left;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContent1" runat="server">
    <p class="auto-style11">
        <br />
        <asp:Label ID="welcome" runat="server" OnDataBinding="welcome_DataBinding"></asp:Label>
        <table class="auto-style12">
            <tr>
                <td class="auto-style25"></td>
                <td class="auto-style26"></td>
            </tr>
            <tr>
                <td class="auto-style23">
                    <asp:Button ID="Button1" runat="server" BackColor="#F0F0F0" Font-Bold="True" OnClick="Button1_Click" Text="open new job" Width="162px" />
                </td>
                <td class="auto-style24">
                    <asp:Button ID="Button3" runat="server" BackColor="#F0F0F0" Font-Bold="True" OnClick="Button3_Click" Text="update job" Width="162px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style27">
                    <asp:Button ID="Button2" runat="server" BackColor="#F0F0F0" Font-Bold="True" OnClick="Button2_Click" Text="saerch cendidate" Width="162px" />
                </td>
                <td class="auto-style28">
                    <asp:Button ID="Button4" runat="server" BackColor="#F0F0F0" Font-Bold="True" OnClick="Button4_Click" Text="recommendation" Width="162px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style14">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </p>
    <p>
        <asp:ImageButton ID="ImageButton1" runat="server" Height="27px" ImageUrl="~/image/language_heb.jpg" OnClick="ImageButton1_Click" Width="40px" />
    </p>
    <p>
    </p>
</asp:Content>
