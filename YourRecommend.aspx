<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="YourRecommend.aspx.cs" Inherits="Final.YourRecommend" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style15 {
            text-align: center;
        }
        .auto-style16 {
            text-align: center;
        }
        .auto-style19 {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContent1" runat="server">
    <h4 class="auto-style16">
        your recommend</h4>
    <h4 class="auto-style16">
        <table class="auto-style19">
            <tr>
                <td>
                    <asp:Label ID="mesege" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="#0066FF"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <br />
    </h4>
    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" DataSourceID="SqlDataSource2" ForeColor="Black" OnSelectedIndexChanging="GridView2_SelectedIndexChanging">
        <Columns>
            <asp:CommandField ShowSelectButton="True" />
            <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
            <asp:BoundField DataField="RecommenderEmail" HeaderText="RecommenderEmail" SortExpression="RecommenderEmail" />
            <asp:BoundField DataField="RecommenderFirstName" HeaderText="RecommenderFirstName" SortExpression="RecommenderFirstName" />
            <asp:BoundField DataField="CompanyName" HeaderText="CompanyName" SortExpression="CompanyName" />
            <asp:BoundField DataField="UserFirstName" HeaderText="UserFirstName" SortExpression="UserFirstName" />
            <asp:BoundField DataField="UserEmail" HeaderText="UserEmail" SortExpression="UserEmail" />
            <asp:BoundField DataField="FamiliaritySource" HeaderText="FamiliaritySource" SortExpression="FamiliaritySource" />
            <asp:BoundField DataField="FamiliarityPeriod" HeaderText="FamiliarityPeriod" SortExpression="FamiliarityPeriod" />
            <asp:BoundField DataField="Score" HeaderText="Score" SortExpression="Score" />
            <asp:BoundField DataField="WordsOfRecommendations" HeaderText="WordsOfRecommendations" SortExpression="WordsOfRecommendations" />
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
    <p>
        <asp:Button ID="deleterow" runat="server" OnClick="deleterow_Click" Text="delete row" />
    </p>
    <p>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Recommendations] WHERE ([RecommenderEmail] = @RecommenderEmail)">
            <SelectParameters>
                <asp:SessionParameter Name="RecommenderEmail" SessionField="email" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    </p>
    <p>
        <asp:ImageButton ID="ImageButton4" runat="server" ImageUrl="~/image/language_heb.jpg" OnClick="ImageButton4_Click" />
    </p>
</asp:Content>
