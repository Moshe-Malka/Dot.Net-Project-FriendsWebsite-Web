<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="SerchCendidateCity.aspx.cs" Inherits="Final.SerchCendidateCity" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style15 {
            width: 100%;
        }
        .auto-style16 {
            text-align: center;
        }
        .auto-style17 {
            text-align: right;
        }
        .auto-style19 {
            width: 100%;
            text-decoration: underline;
            height: 347px;
            margin-top: 0px;
        }
        .auto-style20 {
            height: 262px;
        }
        .auto-style21 {
            width: 100%;
        }
        .auto-style22 {
            width: 81px;
        }
        .auto-style23 {
            height: 45px;
            margin-left: 16px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContent1" runat="server">
        <div class="auto-style17">
            <h4 class="auto-style23">serch by city<br />
                <br />
                <table class="auto-style21">
                    <tr>
                        <td class="auto-style22">
                    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="CityName" DataValueField="CityName" AutoPostBack="True">
                    </asp:DropDownList>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
            </h4>
            <br />
        <table class="auto-style19">
            <tr>
                <td class="auto-style20">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" DataKeyNames="Email" DataSourceID="SqlDataSource2" ForeColor="Black">
                        <Columns>
                            <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
                            <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
                            <asp:BoundField DataField="Email" HeaderText="Email" ReadOnly="True" SortExpression="Email" />
                            <asp:BoundField DataField="PhoneNumber" HeaderText="PhoneNumber" SortExpression="PhoneNumber" />
                            <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                            <asp:BoundField DataField="Graduation" HeaderText="Graduation" SortExpression="Graduation" />
                            <asp:BoundField DataField="College" HeaderText="College" SortExpression="College" />
                            <asp:BoundField DataField="Education" HeaderText="Education" SortExpression="Education" />
                            <asp:BoundField DataField="CurrentPosition" HeaderText="CurrentPosition" SortExpression="CurrentPosition" />
                            <asp:BoundField DataField="CurrentWorkPlace" HeaderText="CurrentWorkPlace" SortExpression="CurrentWorkPlace" />
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
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [City]"></asp:SqlDataSource>
                </td>
                <td class="auto-style20"></td>
            </tr>
            <tr>
                <td>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [FirstName], [LastName], [Email], [PhoneNumber], [City], [Graduation], [College], [Education], [CurrentPosition], [CurrentWorkPlace] FROM [Users] WHERE ([City] = @City)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="DropDownList1" Name="City" PropertyName="SelectedValue" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
        </div>
    <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/image/language_heb.jpg" OnClick="ImageButton2_Click" />
    </p>
</asp:Content>
