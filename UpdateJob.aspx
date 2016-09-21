<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="UpdateJob.aspx.cs" Inherits="Final.UpdateJob" EnableEventValidation="false" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style11 {
            text-align: center;
        }
        .auto-style15 {
            text-align: left;
            width: 496px;
            height: 22px;
        }
        .auto-style16 {
            height: 22px;
            text-align: left;
            width: 149px;
        }
        .auto-style21 {
            text-align: left;
            width: 496px;
        }
        .auto-style17 {
            text-align: left;
            width: 149px;
        }
        .auto-style22 {
            margin-left: 0px;
        }
        .auto-style23 {
            width: 496px;
        }
        .auto-style24 {
            width: 149px;
        }
        .auto-style25 {
            width: 100%;
        }
        .auto-style26 {
            width: 88px;
        }
        .auto-style27 {
            width: 88px;
            height: 63px;
        }
        .auto-style28 {
            height: 63px;
        }
        .auto-style29 {
            width: 496px;
            height: 22px;
        }
        .auto-style30 {
            width: 149px;
            height: 22px;
        }
        .auto-style31 {
            width: 100%;
            font-weight: normal;
            height: 523px;
        }
        .auto-style33 {
            text-align: left;
            width: 149px;
        }
        .auto-style34 {
            text-align: left;
            width: 496px;
            height: 12px;
        }
        .auto-style35 {
            text-align: left;
            width: 149px;
            height: 12px;
        }
        .auto-style36 {
            text-align: left;
            width: 496px;
            height: 27px;
        }
        .auto-style37 {
            text-align: left;
            width: 149px;
            height: 27px;
        }
        .auto-style38 {
            text-align: left;
            width: 496px;
            height: 29px;
        }
        .auto-style39 {
            text-align: left;
            width: 149px;
            height: 29px;
        }
        .auto-style40 {
            text-align: left;
            width: 496px;
            height: 50px;
        }
        .auto-style41 {
            text-align: left;
            width: 149px;
            height: 50px;
        }
        .auto-style42 {
            width: 143px;
        }
        .auto-style43 {
            width: 496px;
            height: 51px;
        }
        .auto-style44 {
            width: 149px;
            height: 51px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContent1" runat="server">
    <p class="auto-style11">
        update your job<br />
    </p>
    <table class="auto-style31">
        <tr>
            <td class="auto-style43">
                <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [JobName], [JobId] FROM [Jobs] WHERE ([CompanyEmail] = @CompanyEmail)">
                    <SelectParameters>
                        <asp:SessionParameter Name="CompanyEmail" SessionField="email" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <table class="auto-style25">
                    <tr>
                        <td class="auto-style42">
                            <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
                        </td>
                        <td>
                <asp:DropDownList ID="DropDownList6" runat="server" DataSourceID="SqlDataSource6" DataTextField="JobName" DataValueField="JobId">
                </asp:DropDownList>
                        </td>
                    </tr>
                </table>
            </td>
            <td class="auto-style44">
                <table class="auto-style25">
                    <tr>
                        <td>
                <asp:Button ID="Button1" runat="server" CssClass="auto-style22" Font-Bold="True" OnClick="Button1_Click" Text="watch job data" />
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
                <td class="auto-style15">company name</td>
                <td class="auto-style16">
                    <asp:TextBox ID="companyname" runat="server" ReadOnly="True"></asp:TextBox>
                </td>
            </tr>
        <tr>
                <td class="auto-style21">job name</td>
                <td class="auto-style33">
                    <asp:TextBox ID="jobname" runat="server"></asp:TextBox>
                </td>
            </tr>
        <tr>
                <td class="auto-style21">job number</td>
                <td id="jobid0" class="auto-style33">
                    <asp:TextBox ID="jobid" runat="server" ReadOnly="True"></asp:TextBox>
                </td>
            </tr>
        <tr>
                <td class="auto-style34">field</td>
                <td class="auto-style35">
                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="FieldName" DataValueField="Field_Id">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [FieldName], [Field_Id] FROM [FieldsInHighTech]"></asp:SqlDataSource>
                </td>
            </tr>
        <tr>
                <td class="auto-style21">sub field</td>
                <td class="auto-style33">
                    <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource2" DataTextField="SubFieldName" DataValueField="SubField_Id">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [SubField_Id], [SubFieldName] FROM [SubFieldsInHighTech] WHERE ([MainField_Id] = @MainField_Id)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="DropDownList1" Name="MainField_Id" PropertyName="SelectedValue" Type="Int32" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
        <tr>
                <td class="auto-style36">discription</td>
                <td class="auto-style37">
                    <asp:TextBox ID="discription" runat="server" Height="43px" Width="142px"></asp:TextBox>
                </td>
            </tr>
        <tr>
                <td class="auto-style38">education</td>
                <td class="auto-style39">
                    <asp:DropDownList ID="DropDownList4" runat="server" DataSourceID="SqlDataSource4" DataTextField="DegreeName" DataValueField="DegreeName">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Degree]"></asp:SqlDataSource>
                </td>
            </tr>
        <tr>
                <td class="auto-style40">experience</td>
                <td class="auto-style41">
                    <asp:DropDownList ID="DropDownList5" runat="server" DataSourceID="SqlDataSource5" DataTextField="DurationValue" DataValueField="DurationValue">
                    </asp:DropDownList>
                    <asp:Label ID="Label2" runat="server" Text="years"></asp:Label>
                    <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Duration]"></asp:SqlDataSource>
                </td>
            </tr>
        <tr>
            <td class="auto-style29">
                active job</td>
            <td class="auto-style30"></td>
        </tr>
        <tr>
            <td class="auto-style23">
                <asp:CheckBoxList ID="CheckBoxList1" runat="server">
                    <asp:ListItem Value="0">active</asp:ListItem>
                    <asp:ListItem Value="1">not active</asp:ListItem>
                </asp:CheckBoxList>
            </td>
            <td class="auto-style24">
                    <asp:Label ID="Label3" runat="server" ForeColor="Red"></asp:Label>
                </td>
        </tr>
    </table>
    <p>
        <table class="auto-style25">
            <tr>
                <td class="auto-style26">
                    &nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style27">
        <asp:ImageButton ID="backbutton" runat="server" ImageUrl="~/image/language_heb.jpg" OnClick="backbutton_Click" />
                </td>
                <td class="auto-style28">
                    <asp:ImageButton ID="ImageButton5" runat="server" Height="59px" ImageUrl="~/image/UP.jpg" OnClick="ImageButton5_Click" Width="163px" />
                </td>
            </tr>
        </table>
    </p>
    <p>
        &nbsp;</p>
</asp:Content>
