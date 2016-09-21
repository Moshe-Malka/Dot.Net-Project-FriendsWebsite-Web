<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="WorkExperiance.aspx.cs" Inherits="Final.WorkExperiance" EnableEventValidation="false" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style15 {
            width: 100%;
        }
        .auto-style16 {
            width: 138px;
        }
        .auto-style17 {
            text-align: center;
        }
        .auto-style19 {
            text-align: center;
            height: 15px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContent1" runat="server">
    <h4 class="auto-style19">
        <br />
        your experiance</h4>
    <table class="auto-style15">
        <tr>
            <td class="auto-style16">field</td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="FieldName" DataValueField="Field_Id">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Field_Id], [FieldName] FROM [FieldsInHighTech]"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td class="auto-style16">sub field</td>
            <td>
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
            <td class="auto-style16">Company name</td>
            <td>
                <asp:DropDownList ID="DropDownList3" runat="server" DataSourceID="SqlDataSource3" DataTextField="CompanyName" DataValueField="CompanyName">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Companies]"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td class="auto-style16">Duration</td>
            <td>
                <asp:DropDownList ID="DropDownList4" runat="server" DataSourceID="SqlDataSource4" DataTextField="DurationValue" DataValueField="DurationValue">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Duration]"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td class="auto-style16">
                <asp:ImageButton ID="ImageButton2" runat="server" OnClick="ImageButton2_Click" ImageUrl="~/image/save.png" />
            </td>
            <td>
                <asp:ImageButton ID="ImageButton3" runat="server" ImageUrl="~/image/saveandclose.png" OnClick="ImageButton3_Click" />
            </td>
        </tr>
    </table>
</asp:Content>
