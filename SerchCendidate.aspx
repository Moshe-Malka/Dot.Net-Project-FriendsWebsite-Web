<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="SerchCendidate.aspx.cs" Inherits="Final.SerchCendidate" EnableEventValidation="false" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style15 {
            width: 100%;
        }
        .auto-style16 {
            width: 149px;
        }
        .auto-style17 {
            width: 220px;
        }
        .auto-style18 {
            width: 300px;
        }
        .auto-style20 {
            height: 47px;
        }
        .auto-style21 {
            width: 149px;
            text-align: left;
            height: 47px;
        }
        .auto-style22 {
            width: 220px;
            height: 47px;
        }
        .auto-style24 {
            width: 149px;
            text-align: left;
        }
        .auto-style25 {
            width: 220px;
        }
        .auto-style26 {
            height: 54px;
        }
        .auto-style27 {
            width: 149px;
            text-align: left;
            height: 54px;
        }
        .auto-style28 {
            width: 220px;
            height: 54px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContent1" runat="server">
    <table class="auto-style15">
        <tr>
            <td class="auto-style20">
                <h4></h4>
            </td>
            <td class="auto-style21">
                <h4>serch by</h4>
            </td>
            <td class="auto-style22">
                <h4></h4>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="field" Font-Bold="True" Width="95px" />
            </td>
            <td class="auto-style24">
                <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="city" Font-Bold="True" Width="95px" />
            </td>
            <td class="auto-style25">
                <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="education" Font-Bold="True" style="height: 26px; width: 95px" Width="95px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style26">
            </td>
            <td class="auto-style27">
                <asp:Button ID="Button4" runat="server" Font-Bold="True" Text="by job" Width="95px" OnClick="Button4_Click" />
            </td>
            <td class="auto-style28">
            </td>
        </tr>
    </table>
    <br />
    <br />
    <table class="auto-style15">
        <tr>
            <td class="auto-style18">
                <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/image/language_heb.jpg" OnClick="ImageButton2_Click" Height="30px" Width="32px" />
            </td>
        </tr>
    </table>
    <br />
    <br />
    <br />
    <br />
</asp:Content>
