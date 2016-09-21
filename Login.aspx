<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Final.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style10 {
            width: 166px;
        }
        .auto-style13 {
            width: 257px;
            left: 0px;
            top: 60px;
            height: 69px;
        }
        .auto-style17 {
            width: 495px;
            left: 0px;
            top: 60px;
            height: 493px;
        }
        .auto-style18 {
            width: 257px;
            left: 0px;
            top: 60px;
            height: 8px;
        }
        .auto-style21 {
            width: 257px;
            left: 0px;
            top: 60px;
            height: 68px;
        }
        .auto-style28 {
            width: 100%;
        }
        .auto-style29 {
            margin-left: 0px;
        }
        .auto-style30 {
            width: 181px;
        }
        .auto-style31 {
            width: 181px;
            height: 38px;
        }
        .auto-style32 {
            height: 38px;
        }
        .auto-style33 {
            width: 181px;
            height: 63px;
        }
        .auto-style34 {
            height: 63px;
        }
        .auto-style35 {
            width: 225px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContent1" runat="server">
    <p>
        <br />
        <table class="auto-style28">
            <tr>
                <td class="auto-style30">
                    <asp:Label ID="Label1" runat="server" Text="email"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="email" runat="server" Width="116px"></asp:TextBox>
                    </td>
            </tr>
            <tr>
                <td class="auto-style30">
                    <asp:Label ID="Label2" runat="server" Text="password"></asp:Label>
                </td>
                <td>
                <asp:TextBox ID="passtxtbox" runat="server" Width="118px" CssClass="auto-style29"></asp:TextBox>
                    </td>
            </tr>
            <tr>
                <td class="auto-style33">
                    <asp:Button ID="Button1" runat="server" BackColor="#999966" Font-Bold="True" Height="32px" OnClick="Button1_Click1" Text="new user?" Width="99px" />
                </td>
                <td class="auto-style34">
                    <asp:ImageButton ID="ImageButton3" runat="server" Height="42px" ImageUrl="~/image/logingray.png" OnClick="ImageButton3_Click" Width="156px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style31">
                    <asp:Label ID="errlb" runat="server" ForeColor="Red" CssClass="auto-style21"></asp:Label>
                </td>
                <td class="auto-style32">
                    <br />
                    <table class="auto-style28">
                        <tr>
                            <td class="auto-style35">
                                <asp:Label ID="Label3" runat="server" Text="Forgat Your Password? "></asp:Label>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style35">
                                <asp:Label ID="Label4" runat="server" Text="Enter Your Email Address:"></asp:Label>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style35">
                                <asp:TextBox ID="EmailRecovery" runat="server"></asp:TextBox>
&nbsp;<asp:Button ID="SubmitButton" runat="server" OnClick="SubmitButton_Click" Text="Submit" />
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td class="auto-style31">
                    &nbsp;</td>
                <td class="auto-style32">&nbsp;</td>
            </tr>
    </table>
    <p>
        <asp:Label ID="PasswordChangedLabel" runat="server"></asp:Label>
    <p>
        &nbsp;<p>
        &nbsp;<p>
        <br />
                </div>
    <p>
        &nbsp;</p>
</asp:Content>
