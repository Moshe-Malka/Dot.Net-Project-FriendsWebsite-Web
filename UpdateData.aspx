<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="UpdateData.aspx.cs" Inherits="Final.UpdateData" EnableEventValidation="false" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style15 {
            width: 100%;
        }
        .auto-style16 {
            width: 130px;
        }
        .auto-style23 {
            width: 337px;
            left: 0px;
            top: 60px;
        }
        .auto-style11 {
            width: 337px;
            height: 22px;
        }
        .auto-style24 {
            width: 337px;
            left: 0px;
            top: 60px;
            height: 8px;
        }
        .auto-style25 {
            height: 8px;
            width: 202px;
        }
        .auto-style34 {
            width: 337px;
            left: 0px;
            top: 60px;
            height: 66px;
            text-align: left;
            margin-left: 0px;
            margin-top: 0px;
        }
        .auto-style35 {
            width: 337px;
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
            width: 202px;
        }
        .auto-style29 {
            width: 497px;
            left: 0px;
            top: 60px;
            height: 32px;
        }
        .auto-style30 {
            height: 32px;
            width: 202px;
        }
        .auto-style33 {
            width: 318px;
            text-align: left;
        }
        .auto-style36 {
            height: 22px;
            width: 202px;
        }
        .auto-style39 {
            width: 202px;
        }
        .auto-style40 {
            width: 202px;
            text-align: left;
        }
        .auto-style42 {
            width: 174px;
        }
        .auto-style43 {
            height: 8px;
            width: 174px;
        }
        .auto-style44 {
            width: 174px;
            text-align: left;
        }
        .auto-style45 {
            height: 61px;
            width: 174px;
        }
        .auto-style46 {
            height: 32px;
            width: 174px;
        }
        .auto-style47 {
            height: 22px;
            width: 174px;
        }
        .auto-style48 {
            width: 337px;
            height: 12px;
        }
        .auto-style49 {
            height: 12px;
            width: 174px;
        }
        .auto-style50 {
            height: 12px;
            width: 202px;
        }
        .auto-style51 {
            width: 318px;
            text-align: left;
            height: 76px;
        }
        .auto-style52 {
            width: 174px;
            height: 76px;
        }
        .auto-style53 {
            width: 202px;
            height: 76px;
        }
        .auto-style56 {
            width: 100%;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContent1" runat="server">
    <table class="auto-style15">
        <tr>
            <td colspan="2">
                <table class="auto-style56">
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label2" runat="server" Font-Bold="True" Text="Your Details"></asp:Label>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
                <br />
            </td>
            <td class="auto-style39">
                <strong>Udate Your Details</strong></td>
        </tr>
        <tr>
            <td class="auto-style23">first name</td>
            <td class="auto-style42">
                <asp:TextBox ID="firstname" runat="server" ReadOnly="True" BackColor="#CCFFFF"></asp:TextBox>
                </td>
            <td class="auto-style39">
                <asp:TextBox ID="TextBoxfirst" runat="server"></asp:TextBox>
                </td>
        </tr>
        <tr>
            <td class="auto-style23">last name</td>
            <td class="auto-style42">
                <asp:TextBox ID="lastname" runat="server" ReadOnly="True" BackColor="#CCFFFF"></asp:TextBox>
                </td>
            <td class="auto-style39">
                <asp:TextBox ID="TextBoxlast" runat="server"></asp:TextBox>
                </td>
        </tr>
        <tr>
            <td class="auto-style23">email</td>
            <td class="auto-style42">
                <asp:TextBox ID="email" runat="server" ReadOnly="True" BackColor="#CCFFFF"></asp:TextBox>
                </td>
            <td class="auto-style39">
                <asp:TextBox ID="TextBoxemail" runat="server"></asp:TextBox>
                </td>
        </tr>
        <tr>
            <td class="auto-style48">password</td>
            <td class="auto-style49">
                <asp:TextBox ID="Textpass" runat="server" ReadOnly="True" BackColor="#CCFFFF"></asp:TextBox>
                <br />
                </td>
            <td class="auto-style50">
                <asp:TextBox ID="TextBoxpass" runat="server"></asp:TextBox>
                </td>
        </tr>
        <tr>
            <td class="auto-style24">phone number</td>
            <td class="auto-style43">
                <asp:TextBox ID="Texphone" runat="server" ReadOnly="True" BackColor="#CCFFFF"></asp:TextBox>
            </td>
            <td class="auto-style25">
                <asp:TextBox ID="TextBoxphone" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style34">city</td>
            <td class="auto-style44">
                
                
                <asp:TextBox ID="TextBoxcity" runat="server" BackColor="#CCFFFF" ReadOnly="True"></asp:TextBox>
                
                
            </td>
            <td class="auto-style40">
                
                
                <asp:DropDownList ID="DropDownList7" runat="server" DataSourceID="SqlDataSource1" DataTextField="CityName" DataValueField="CityName">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [City]"></asp:SqlDataSource>
                
                
            </td>
        </tr>
        <tr>
            <td class="auto-style26">education</td>
            <td class="auto-style42">
                <asp:TextBox ID="TextBoxedu" runat="server" BackColor="#CCFFFF" ReadOnly="True"></asp:TextBox>
            </td>
            <td class="auto-style39">
                <asp:DropDownList ID="DropDownList8" runat="server" DataSourceID="SqlDataSource2" DataTextField="DegreeName" DataValueField="DegreeName">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Degree]"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td class="auto-style27">college</td>
            <td class="auto-style45">
                <asp:TextBox ID="TextBoxcole" runat="server" BackColor="#CCFFFF" ReadOnly="True"></asp:TextBox>
            </td>
            <td class="auto-style28">
                <asp:DropDownList ID="DropDownList3" runat="server" DataSourceID="SqlDataSource4" DataTextField="CollegeName" DataValueField="CollegeName">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [CollegeName] FROM [Colleges]"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td class="auto-style34">graduation</td>
            <td class="auto-style44">
                <asp:TextBox ID="TextBoxgrad" runat="server" BackColor="#CCFFFF" ReadOnly="True"></asp:TextBox>
            </td>
            <td class="auto-style40">
                <asp:DropDownList ID="DropDownList4" runat="server" DataSourceID="SqlDataSource3" DataTextField="Year" DataValueField="Year">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Years]"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td class="auto-style23">field</td>
            <td class="auto-style42">
                <asp:TextBox ID="TextBoxfield" runat="server" BackColor="#CCFFFF" ReadOnly="True"></asp:TextBox>
            </td>
            <td class="auto-style39">
                <asp:DropDownList ID="DropDownList5" runat="server" DataSourceID="SqlDataSource5" DataTextField="FieldName" DataValueField="Field_Id" AutoPostBack="True">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Field_Id], [FieldName] FROM [FieldsInHighTech]"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td class="auto-style29">sub field</td>
            <td class="auto-style46">
                <asp:TextBox ID="TextBoxsubfield" runat="server" BackColor="#CCFFFF" ReadOnly="True"></asp:TextBox>
            </td>
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
        <tr>
            <td class="auto-style33"><strong>work now?*</strong></td>
            <td class="auto-style42">
                <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                    <asp:ListItem Value="1">yes</asp:ListItem>
                    <asp:ListItem Value="0">no</asp:ListItem>
                </asp:RadioButtonList>
            </td>
            <td class="auto-style39">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style51"><strong>to reccomend on a friend:</strong></td>
            <td class="auto-style52"></td>
            <td class="auto-style53"></td>
        </tr>
        <tr>
            <td class="auto-style33">current job</td>
            <td class="auto-style42">
                <asp:TextBox ID="currentjob" runat="server" ReadOnly="True" BackColor="#CCFFFF"></asp:TextBox>
            </td>
            <td class="auto-style39">
                <asp:TextBox ID="TextBoxCurrentJob" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style33">position</td>
            <td class="auto-style42">
                <asp:TextBox ID="position" runat="server" ReadOnly="True" BackColor="#CCFFFF"></asp:TextBox>
            </td>
            <td class="auto-style39">
                <asp:TextBox ID="TextBoxPosition" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style11"></td>
            <td class="auto-style47"></td>
            <td class="auto-style36">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style35">&nbsp;</td>
            <td class="auto-style42">
                <asp:ImageButton ID="ImageButton2" runat="server" Height="42px" ImageUrl="~/image/UP.jpg" OnClick="ImageButton2_Click" Width="229px" />
            </td>
            <td class="auto-style39">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style35">
                <asp:Label ID="Label1" runat="server" Font-Bold="True" ForeColor="Red"></asp:Label>
            </td>
            <td class="auto-style42">&nbsp;</td>
            <td class="auto-style39">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style35">
                <asp:ImageButton ID="backbutto" runat="server" ImageUrl="~/image/language_heb.jpg" OnClick="backbutto_Click" />
            </td>
            <td class="auto-style42">&nbsp;</td>
            <td class="auto-style39">&nbsp;</td>
        </tr>
        </table>
</asp:Content>
