<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="NewRecomend.aspx.cs" Inherits="Final.NewRecomend" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

        .auto-style9 {
            width: 100%;
        }
        .auto-style10 {
            width: 197px;
        }
        .auto-style11 {
            width: 197px;
            height: 14px;
        }
        .auto-style12 {
            height: 14px;
        }
        .auto-style13 {
            width: 197px;
            height: 26px;
        }
        .auto-style14 {
            height: 26px;
        }
        .auto-style16 {
            width: 257px;
            left: 0px;
            top: 60px;
            height: 36px;
        }
        .auto-style17 {
            height: 36px;
        }
        .auto-style18 {
            width: 257px;
            left: 0px;
            top: 60px;
        }
        .auto-style19 {
            width: 257px;
            left: 0px;
            top: 60px;
            height: 71px;
        }
        .auto-style20 {
            height: 71px;
        }
        .auto-style23 {
            width: 100%;
        }
        .auto-style24 {
            text-align: center;
        }
        .auto-style25 {
            width: 257px;
            left: 0px;
            top: 60px;
            height: 36px;
            text-align: left;
        }
        .auto-style26 {
            height: 36px;
        }
        .auto-style28 {
            width: 858px;
            height: 26px;
            text-align: left;
            font-size: medium;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContent1" runat="server">
    <table class="auto-style23">
        <tr>
            <td class="auto-style24">
                <h4>tell us aboute your friend</h4>
            </td>
        </tr>
    </table>
        <table class="auto-style9">
            <tr>
                <td class="auto-style18">company name</td>
                <td>
                    <asp:DropDownList ID="DropDownList4" runat="server" DataSourceID="SqlDataSource3" DataTextField="CompanyName" DataValueField="CompanyName">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Companies]"></asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td class="auto-style25">your first name</td>
                <td class="auto-style26">
                    <asp:TextBox ID="recofirst" runat="server"></asp:TextBox>
                    *</td>
            </tr>
            <tr>
                <td class="auto-style11">first name of your friend</td>
                <td class="auto-style12">
                    <asp:TextBox ID="friendfirstname" runat="server"></asp:TextBox>
                    *</td>
            </tr>
            <tr>
                <td class="auto-style28">your friend email</td>
                <td class="auto-style14">
                    <asp:TextBox ID="useremail" runat="server"></asp:TextBox>
                    *</td>
            </tr>
            <tr>
                <td class="auto-style18">familarity source</td>
                <td>
                    <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource1" DataTextField="SourceName" DataValueField="SourceName">
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                        <asp:ListItem>4</asp:ListItem>
                        <asp:ListItem>5</asp:ListItem>
                        <asp:ListItem></asp:ListItem>
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [SourceName] FROM [SourceOfFriends]"></asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td class="auto-style18">familiarity time</td>
                <td>
                    <asp:DropDownList ID="DropDownList3" runat="server" DataSourceID="SqlDataSource2" DataTextField="DurationValue" DataValueField="DurationValue">
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                        <asp:ListItem>4</asp:ListItem>
                        <asp:ListItem>5</asp:ListItem>
                        <asp:ListItem></asp:ListItem>
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Duration]"></asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td class="auto-style18">score</td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server">
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                        <asp:ListItem>4</asp:ListItem>
                        <asp:ListItem>5</asp:ListItem>
                        <asp:ListItem></asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style19">few word</td>
                <td class="auto-style20">
                    <asp:TextBox ID="TextBox4" runat="server" Height="83px" Rows="10" Width="207px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style18">
                    <asp:Label ID="Label1" runat="server" ForeColor="Red"></asp:Label>
                </td>
                <td>
                    <br />
                    <asp:ImageButton ID="ImageButton3" runat="server" Height="66px" ImageUrl="~/image/butgr.jpg" OnClick="ImageButton3_Click" Width="164px" />
                    <br />
                </td>
            </tr>
        </table>
    <asp:ImageButton ID="backbutton" runat="server" ImageUrl="~/image/language_heb.jpg" OnClick="backbutton_Click" Height="30px" Width="32px" />
    </p>
</asp:Content>
