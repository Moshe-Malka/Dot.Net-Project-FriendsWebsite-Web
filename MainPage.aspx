<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="MainPage.aspx.cs" Inherits="Final.MainPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style9 {
        text-align: center;
    }
    .auto-style10 {
        width: 100%;
    }
        .auto-style21 {
            width: 100%;
        }
        .auto-style22 {
            width: 233px;
        }
        .auto-style23 {
            text-align: left;
        }
        .auto-style26 {
            margin-left: 3px;
        }
        .auto-style27 {
            width: 233px;
            text-align: right;
        }
        .auto-style29 {
            width: 100%;
            margin-top: 0px;
        }
        .auto-style30 {
            height: 66px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContent1" runat="server">
    <div class="auto-style9" style="font-family: 'AR JULIAN'">
        <h4 style="font-family: 'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif">welcome to friends website.<br />
    our site here to find you a job/to help you to help your friend and to find you the best worker!<br />
        </h4>
    <br />
        <table class="auto-style21">
            <tr>
                <td class="auto-style22">
                    <br />
                    <br />
                </td>
                <td class="auto-style23">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style27">
                    <asp:Button ID="Button3" runat="server" Font-Bold="True" OnClick="Button3_Click" Text="Candidate" Width="200px" />
                </td>
                <td class="auto-style23">
                    <asp:Button ID="Button4" runat="server" CssClass="auto-style26" Font-Bold="True" OnClick="Button4_Click" Text="Employers" Width="200px" />
                </td>
            </tr>
        </table>
    <br />
        <table class="auto-style29">
            <tr>
                <td>
                    <table class="auto-style21">
                        <tr>
                            <td class="auto-style30">
                                <asp:Image ID="Image1" runat="server" ImageUrl="~/image/choosing-candidate_23-2147503010.jpg" Width="148px" />
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
        </table>
    <br />
    <br />
    <br />
    <br />
</div>
</asp:Content>
