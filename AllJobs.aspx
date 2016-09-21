<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AllJobs.aspx.cs" Inherits="Final.AllJobs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style19 {
            width: 100%;
        }
        .auto-style20 {
            height: 107px;
        }
        .auto-style21 {
            width: 241px;
            height: 197px;
        }
        .auto-style22 {
            height: 107px;
            width: 241px;
        }
    .auto-style23 {
        width: 171px;
        height: 38px;
    }
    .auto-style24 {
        width: 171px;
        height: 26px;
    }
    .auto-style25 {
        height: 26px;
    }
    .auto-style26 {
        width: 171px;
        height: 53px;
    }
    .auto-style27 {
        height: 53px;
    }
    .auto-style28 {
        height: 38px;
    }
        .auto-style29 {
            width: 100%;
            height: 481px;
            margin-top: 5px;
        }
        .auto-style30 {
            height: 197px;
        }
        .auto-style31 {
            font-size: large;
            text-decoration: underline;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContent1" runat="server">
    <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" DataKeyNames="JobId" DataSourceID="SqlDataSource1" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black" OnSelectedIndexChanging="GridView3_SelectedIndexChanging" OnSelectedIndexChanged="GridView3_SelectedIndexChanged">
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
    <table class="auto-style19">
        <tr>
            <td><strong>
                <asp:Label ID="Label1" runat="server" CssClass="auto-style31" Text="Cendidate"></asp:Label>
                :</strong></td>
        </tr>
    </table>
    <br />
    <table class="auto-style29">
        <tr>
            <td class="auto-style21">
    <asp:GridView ID="GridView2" runat="server" OnSelectedIndexChanged="GridView2_SelectedIndexChanged" OnSelectedIndexChanging="GridView2_SelectedIndexChanging" Width="374px" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black">
        <Columns>
            <asp:CheckBoxField />
            <asp:CommandField ShowSelectButton="True" />
        </Columns>
        <EmptyDataTemplate>
            <asp:RadioButton ID="RadioButton1" runat="server" />
            
        </EmptyDataTemplate>
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
            </td>
            <td class="auto-style30">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style22">
                <table class="auto-style19">
                    <tr>
                        <td class="auto-style24">
                <asp:TextBox ID="TextBox1" runat="server" ReadOnly="True"></asp:TextBox>
                        </td>
                        <td class="auto-style25">
                            <asp:Button ID="Button1" runat="server" Text="show all data" OnClick="Button1_Click" Width="94px" Font-Bold="True" />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style26">
                <asp:TextBox ID="firstname" runat="server" ReadOnly="True"></asp:TextBox>
                        </td>
                        <td class="auto-style27">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style23">
                <asp:TextBox ID="lastname" runat="server" ReadOnly="True"></asp:TextBox>
                        </td>
                        <td class="auto-style28">
                            &nbsp;</td>
                    </tr>
                </table>
            </td>
            <td class="auto-style20"></td>
        </tr>
        <tr>
            <td class="auto-style22">
                <asp:ImageButton ID="ImageButton1" runat="server" Height="27px" ImageUrl="~/image/language_heb.jpg" OnClick="ImageButton1_Click" Width="34px" />
            </td>
            <td class="auto-style20">&nbsp;</td>
        </tr>
    </table>
    <br />
    <br />
    <br />
<br />
<br />
<br />
<br />
</asp:Content>
