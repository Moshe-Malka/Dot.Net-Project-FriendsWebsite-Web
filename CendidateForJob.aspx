<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="CendidateForJob.aspx.cs" Inherits="Final.CendidateForJob" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style19 {
            width: 100%;
        }
        .auto-style20 {
            width: 172px;
        }
        .auto-style21 {
            width: 172px;
            text-decoration: underline;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContent1" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" DataKeyNames="JobId" DataSourceID="SqlDataSource1" ForeColor="Black">
        <Columns>
            <asp:CommandField ShowSelectButton="True" />
            <asp:BoundField DataField="JobId" HeaderText="JobId" ReadOnly="True" SortExpression="JobId" />
            <asp:BoundField DataField="CompanyName" HeaderText="CompanyName" SortExpression="CompanyName" />
            <asp:BoundField DataField="JobName" HeaderText="JobName" SortExpression="JobName" />
            <asp:BoundField DataField="Field_Id" HeaderText="Field_Id" SortExpression="Field_Id" />
            <asp:BoundField DataField="SubField_Id" HeaderText="SubField_Id" SortExpression="SubField_Id" />
            <asp:BoundField DataField="Discription" HeaderText="Discription" SortExpression="Discription" />
            <asp:BoundField DataField="EducationalRequirements" HeaderText="EducationalRequirements" SortExpression="EducationalRequirements" />
            <asp:BoundField DataField="ExperienceRequirements" HeaderText="ExperienceRequirements" SortExpression="ExperienceRequirements" />
            <asp:CheckBoxField DataField="ActiveJob" HeaderText="ActiveJob" SortExpression="ActiveJob" />
            <asp:BoundField DataField="CompanyEmail" HeaderText="CompanyEmail" SortExpression="CompanyEmail" />
        </Columns>
        <FooterStyle BackColor="#CCCCCC" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
        <RowStyle BackColor="White" />
        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#808080" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#383838" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Jobs] WHERE ([CompanyEmail] = @CompanyEmail)">
        <SelectParameters>
            <asp:SessionParameter Name="CompanyEmail" SessionField="email" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:Label ID="Label4" runat="server" Text="Cendidate expirance"></asp:Label>
    <br />
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
    <br />
    <asp:GridView ID="GridView2" runat="server" OnSelectedIndexChanging="GridView2_SelectedIndexChanging">
        <Columns>
                        <asp:CommandField ShowSelectButton="True" />
        </Columns>
    </asp:GridView>
    <br />
    <br />
    <table class="auto-style19">
        <tr>
            <td class="auto-style21"><strong>cendidate detail</strong></td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style20">
                <asp:Label ID="Label1" runat="server" Text="email"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="emailtxt" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style20">
                <asp:Label ID="Label2" runat="server" Text="first name"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="firstnametxt" runat="server"></asp:TextBox>
                <asp:Button ID="Button2" runat="server" Text="read more" />
            </td>
        </tr>
        <tr>
            <td class="auto-style20">
                <asp:Label ID="Label3" runat="server" Text="last name"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="lasttxt" runat="server"></asp:TextBox>
            </td>
        </tr>
    </table>
    <br />
    <br />
</asp:Content>
