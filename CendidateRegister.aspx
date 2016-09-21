<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="CendidateRegister.aspx.cs" Inherits="Final.CendidateRegister" EnableEventValidation="false" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style9 {
            width: 100%;
        }
        .auto-style10 {
            width: 134px;
        }
        .auto-style11 {
            width: 497px;
            height: 22px;
        }
        .auto-style12 {
            height: 22px;
        }
        .auto-style13 {
            width: 130px;
        }
        .auto-style15 {
            height: 720px;
        }
        .auto-style16 {
            height: 45px;
        }
        .auto-style21 {
            width: 497px;
            left: 0px;
            top: 60px;
            height: 21px;
        }
        .auto-style22 {
            height: 21px;
        }
        .auto-style23 {
            width: 497px;
            left: 0px;
            top: 60px;
        }
        .auto-style24 {
            width: 497px;
            left: 0px;
            top: 60px;
            height: 8px;
        }
        .auto-style25 {
            height: 8px;
        }
        .auto-style26 {
            width: 497px;
            left: 0px;
            top: 60px;
            height: 22px;
        }
        .auto-style27 {
            width: 497px;
            left: 0px;
            top: 60px;
            height: 61px;
        }
        .auto-style28 {
            height: 61px;
        }
        .auto-style29 {
            width: 497px;
            left: 0px;
            top: 60px;
            height: 32px;
        }
        .auto-style30 {
            height: 32px;
        }
        .auto-style31 {
            margin-left: 0px;
        }
        .auto-style33 {
            width: 318px;
            text-align: left;
        }
        .auto-style34 {
            width: 497px;
            left: 0px;
            top: 60px;
            height: 66px;
            text-align: left;
            margin-left: 0px;
            margin-top: 0px;
        }
        .auto-style35 {
            width: 497px;
            left: 0px;
            top: 60px;
            height: 21px;
            text-align: center;
        }
        .auto-style36 {
            width: 318px;
            text-align: left;
            height: 52px;
        }
        .auto-style37 {
            height: 52px;
        }
        .auto-style38 {
            width: 109%;
            height: 209px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContent1" runat="server">
    <table class="auto-style9">
        <tr>
            <td class="auto-style35">register</td>
            <td class="auto-style22">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style21">&nbsp;</td>
            <td class="auto-style22">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style23">first name</td>
            <td>
                <asp:TextBox ID="firstname" runat="server"></asp:TextBox>
                <strong>*</strong></td>
        </tr>
        <tr>
            <td class="auto-style23">last name</td>
            <td>
                <asp:TextBox ID="lastname" runat="server"></asp:TextBox>
                <strong>*</strong></td>
        </tr>
        <tr>
            <td class="auto-style23">email</td>
            <td>
                <asp:TextBox ID="email" runat="server"></asp:TextBox>
                <strong>*</strong></td>
        </tr>
        <tr>
            <td class="auto-style11">password</td>
            <td class="auto-style12">
                <asp:TextBox ID="password" runat="server"></asp:TextBox>
                <strong>*</strong></td>
        </tr>
        <tr>
            <td class="auto-style24">phone number</td>
            <td class="auto-style25">
                <asp:TextBox ID="phone" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style34">city</td>
            <td class="auto-style16">
                
                
                <asp:DropDownList ID="DropDownList7" runat="server" DataSourceID="SqlDataSource1" DataTextField="CityName" DataValueField="CityName">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [City]"></asp:SqlDataSource>
                
                
            </td>
        </tr>
        <tr>
            <td class="auto-style26">education</td>
            <td class="auto-style12">
                <asp:DropDownList ID="DropDownList8" runat="server" DataSourceID="SqlDataSource2" DataTextField="DegreeName" DataValueField="DegreeName">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Degree]"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td class="auto-style27">college</td>
            <td class="auto-style28">
                <asp:DropDownList ID="DropDownList3" runat="server" DataSourceID="SqlDataSource4" DataTextField="CollegeName" DataValueField="CollegeName">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [CollegeName] FROM [Colleges]"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td class="auto-style34">graduation</td>
            <td class="auto-style16">
                <asp:DropDownList ID="DropDownList4" runat="server" DataSourceID="SqlDataSource3" DataTextField="Year" DataValueField="Year">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Years]"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td class="auto-style23">field</td>
            <td>
                <asp:DropDownList ID="DropDownList5" runat="server" DataSourceID="SqlDataSource5" DataTextField="FieldName" DataValueField="Field_Id" AutoPostBack="True">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Field_Id], [FieldName] FROM [FieldsInHighTech]"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td class="auto-style29">sub field</td>
            <td class="auto-style30">
                <asp:DropDownList ID="DropDownList6" runat="server" DataSourceID="SqlDataSource6" DataTextField="SubFieldName" DataValueField="SubField_Id">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [MainField_Id], [SubField_Id], [SubFieldName] FROM [SubFieldsInHighTech] WHERE ([MainField_Id] = @MainField_Id)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownList5" Name="MainField_Id" PropertyName="SelectedValue" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
        </table>
    <table class="auto-style38">
        <tr>
            <td class="auto-style33"><strong>work now?*</strong></td>
            <td>
                <asp:RadioButtonList ID="RadioButtonList1" runat="server" Width="111px" CssClass="auto-style31">
                    <asp:ListItem Value="0">yes</asp:ListItem>
                    <asp:ListItem Value="1">no</asp:ListItem>
                </asp:RadioButtonList>
            </td>
        </tr>
        <tr>
            <td class="auto-style33"><strong>to reccomend on a friend:</strong></td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style33">current job</td>
            <td>
                <asp:TextBox ID="currentjob" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style33">position</td>
            <td>
                <asp:TextBox ID="position" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style33">fill out work experiance?&nbsp;&nbsp;&nbsp;
                <asp:CheckBox ID="CheckBox1" runat="server" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style36"><strong>
                <asp:Label ID="Label1" runat="server" ForeColor="Red"></asp:Label>
                </strong></td>
            <td class="auto-style37">
                <asp:ImageButton ID="ImageButton3" runat="server" CssClass="auto-style15" Height="48px" ImageUrl="~/image/regg.png" OnClick="ImageButton3_Click" Width="172px" />
            </td>
        </tr>
    </table>
</asp:Content>
