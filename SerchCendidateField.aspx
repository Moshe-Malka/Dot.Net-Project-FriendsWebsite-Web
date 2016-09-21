<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="SerchCendidateField.aspx.cs" Inherits="Final.SerchCendidateField" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style15 {
            width: 100%;
        }
        .auto-style17 {
            text-align: right;
        }
        .auto-style19 {
            text-align: right;
            height: 20px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContent1" runat="server">
    <h4 class="auto-style19">
        serch by field<br />
    </h4>
    <table class="auto-style15">
        <tr>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="FieldName" DataValueField="Field_Id" AutoPostBack="True">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Field_Id], [FieldName] FROM [FieldsInHighTech]"></asp:SqlDataSource>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" DataKeyNames="Email" DataSourceID="SqlDataSource2" ForeColor="Black">
                    <Columns>
                        <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
                        <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
                        <asp:BoundField DataField="Email" HeaderText="Email" ReadOnly="True" SortExpression="Email" />
                        <asp:BoundField DataField="PhoneNumber" HeaderText="PhoneNumber" SortExpression="PhoneNumber" />
                        <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                        <asp:BoundField DataField="CurrentWorkPlace" HeaderText="CurrentWorkPlace" SortExpression="CurrentWorkPlace" />
                        <asp:BoundField DataField="CurrentPosition" HeaderText="CurrentPosition" SortExpression="CurrentPosition" />
                        <asp:BoundField DataField="Education" HeaderText="Education" SortExpression="Education" />
                        <asp:BoundField DataField="College" HeaderText="College" SortExpression="College" />
                        <asp:BoundField DataField="Graduation" HeaderText="Graduation" SortExpression="Graduation" />
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
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [LastName], [FirstName], [Email], [PhoneNumber], [City], [CurrentWorkPlace], [CurrentPosition], [Education], [College], [Graduation] FROM [Users] WHERE ([Field_Id] = @Field_Id)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownList1" Name="Field_Id" PropertyName="SelectedValue" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <br />
                <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/image/language_heb.jpg" OnClick="ImageButton2_Click" />
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
