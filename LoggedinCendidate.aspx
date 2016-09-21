<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="LoggedinCendidate.aspx.cs" Inherits="Final.LoggedinCendidate" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style9 {
            width: 100%;
        }
        .auto-style10 {
            width: 157px;
        }
        .auto-style11 {
            width: 200px;
            left: 0px;
            top: 60px;
        }
        .auto-style12 {
            text-align: center;
        }
        .auto-style15 {
            width: 181px;
            left: 0px;
            top: 60px;
            text-align: left;
        }
        .auto-style16 {
            width: 181px;
            left: 0px;
            top: 60px;
            text-align: left;
            height: 30px;
        }
        .auto-style17 {
            height: 30px;
        }
        .auto-style19 {
            width: 200px;
            left: 0px;
            top: 60px;
            text-align: left;
            height: 29px;
        }
        .auto-style21 {
            width: 200px;
        }
        .auto-style22 {
            width: 100%;
            height: 133px;
        }
        .auto-style23 {
            margin-left: 2px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContent1" runat="server">
    <p class="auto-style12">
        <asp:Label ID="Label1" runat="server" Font-Bold="True"></asp:Label>
        <br />
    </p>
    <table class="auto-style22">
        <tr>
            <td class="auto-style11">
                <asp:Button ID="Button1" runat="server" Text="Serch jobs" Width="154px" OnClick="Button1_Click" Font-Bold="True" />
            </td>
            <td>
                <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Update your detail" Width="154px" Font-Bold="True" CssClass="auto-style23" />
            </td>
        </tr>
        <tr>
            <td class="auto-style11">
                <asp:Button ID="Button2" runat="server" Text=" Fill new reccomend" OnClick="Button2_Click" Font-Bold="True" Width="154px" />
            </td>
            <td>
                <asp:Button ID="Button5" runat="server" Font-Bold="True" OnClick="Button5_Click" Text="Add expirence" Width="154px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style19">
                <asp:Button ID="Button4" runat="server" Text="Old reccomend" Font-Bold="True" Width="154px" OnClick="Button4_Click" />
            </td>
            <td>
                <br />
            </td>
        </tr>
        <tr>
            <td class="auto-style21">
                <asp:Label ID="Label2" runat="server" Font-Bold="True" ForeColor="Red"></asp:Label>
            </td>
        </tr>
        </table>
    <p>
        <asp:ImageButton ID="ImageButton1" runat="server" Height="32px" ImageUrl="~/image/language_heb.jpg" OnClick="ImageButton1_Click" Width="37px" />
    </p>
</asp:Content>
