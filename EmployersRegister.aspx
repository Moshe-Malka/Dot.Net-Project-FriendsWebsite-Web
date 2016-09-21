<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="EmployersRegister.aspx.cs" Inherits="Final.EmployersRegister" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

        .auto-style10 {
            width: 100%;
        }
        .auto-style21 {
            width: 242px;
            height: 41px;
        }
        .auto-style25 {
            width: 260px;
            height: 41px;
        }
        .auto-style28 {
            width: 492px;
            left: 0px;
            top: 60px;
            height: 677px;
        }
        .auto-style29 {
            text-align: center;
        }
        .auto-style34 {
            width: 242px;
            height: 25px;
        }
        .auto-style35 {
            width: 260px;
            height: 25px;
        }
        .auto-style42 {
            height: 7px;
            width: 242px;
        }
        .auto-style43 {
            height: 7px;
            width: 260px;
        }
        .auto-style44 {
            height: 10px;
            width: 242px;
        }
        .auto-style45 {
            height: 10px;
            width: 260px;
        }
        .auto-style46 {
            height: 13px;
            width: 242px;
        }
        .auto-style47 {
            height: 13px;
            width: 260px;
        }
        .auto-style48 {
            height: 6px;
            width: 242px;
        }
        .auto-style49 {
            height: 6px;
            width: 260px;
        }
        .auto-style52 {
            height: 3px;
            width: 242px;
        }
        .auto-style53 {
            height: 3px;
            width: 260px;
        }
        .auto-style54 {
            height: 9px;
            width: 242px;
        }
        .auto-style55 {
            height: 9px;
            width: 260px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContent1" runat="server">
    <h4 class="auto-style29">
        employers register</h4>
    <p>


        </p>
        <table class="auto-style28">
            <tr>
                <td class="auto-style44">company name</td>
                <td class="auto-style45">
                    <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource2" DataTextField="CompanyName" DataValueField="CompanyName">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Companies]"></asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td class="auto-style46">city</td>
                <td class="auto-style47">
                    
                    
                    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="CityName" DataValueField="CityName">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [City]"></asp:SqlDataSource>
                    
                    
                </td>
            </tr>
            <tr>
                <td class="auto-style48">phone number</td>
                <td class="auto-style49">
                    <asp:TextBox ID="phone" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style46">contact email</td>
                <td class="auto-style47">
                    <asp:TextBox ID="contactemail" runat="server" Width="123px"></asp:TextBox>
                    <br />
                    <asp:Label ID="Label1" runat="server" ForeColor="Red"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style52">contact password</td>
                <td class="auto-style53">
                    <asp:TextBox ID="password" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style48">contact first name</td>
                <td class="auto-style49">
                    <asp:TextBox ID="contactname" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style54">contact last name</td>
                <td class="auto-style55">
                    <asp:TextBox ID="contactlastname" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style34"></td>
                <td class="auto-style35"></td>
            </tr>
            <tr>
                <td class="auto-style21"><strong>
                    <asp:Label ID="Labelerr" runat="server" ForeColor="#FF3300"></asp:Label>
                    </strong></td>
                <td class="auto-style25">
                    <asp:ImageButton ID="ImageButton3" runat="server" Height="42px" ImageUrl="~/image/regg.png" OnClick="ImageButton3_Click" Width="177px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style42">
                    <asp:ImageButton ID="ImageButton4" runat="server" ImageUrl="~/image/language_heb.jpg" Height="27px" Width="36px" />
                </td>
                <td class="auto-style43">
                </td>
            </tr>
        </table>
    </p>
</asp:Content>
