<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="SerchRecommendtion.aspx.cs" Inherits="Final.SerchRecommendtion" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style15 {
        width: 100%;
    }
        .auto-style16 {
            width: 494px;
        }
        .auto-style19 {
            width: 100%;
        }
        .auto-style20 {
            width: 272px;
        }
        .auto-style21 {
            width: 272px;
            height: 22px;
        }
        .auto-style22 {
            height: 22px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContent1" runat="server">
    <p>
    <br />
</p>
<table class="auto-style15">
    <tr>
        <td class="auto-style16">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style16">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" DataSourceID="SqlDataSource2" ForeColor="Black" OnSelectedIndexChanging="ChangingSelection">
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                    <asp:BoundField DataField="UserFirstName" HeaderText="UserFirstName" SortExpression="UserFirstName" />
                    <asp:BoundField DataField="Score" HeaderText="Score" SortExpression="Score" />
                    <asp:BoundField DataField="CompanyName" HeaderText="CompanyName" SortExpression="CompanyName" />
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
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT Recommendations.UserFirstName, Recommendations.Score, Employers.CompanyName
 FROM Recommendations 
INNER JOIN Employers ON Recommendations.CompanyName = Employers.CompanyName">
            </asp:SqlDataSource>
        </td>
    </tr>
</table>
    <table class="auto-style19">
        <tr>
            <td class="auto-style20">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style20">
                <asp:Label ID="Label1" runat="server" Text="Email Of Recommender :"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="EmailReco" runat="server" Enabled="False" ReadOnly="True"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style20">
                <asp:Label ID="Label2" runat="server" Text="First Name Of Recommender :"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="NameReco" runat="server" Enabled="False" ReadOnly="True"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style20">
                <asp:Label ID="Label3" runat="server" Text="Candidate First Name :"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="NameCand" runat="server" Enabled="False" ReadOnly="True"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style20">
                <asp:Label ID="Label4" runat="server" Text="Candidate Email : "></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="EmailCand" runat="server" Enabled="False" ReadOnly="True"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style21">
                <asp:Label ID="Label5" runat="server" Text="Relationship Type :"></asp:Label>
            </td>
            <td class="auto-style22">
                <asp:TextBox ID="Reletionship" runat="server" Enabled="False" ReadOnly="True"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style20">
                <asp:Label ID="Label6" runat="server" Text="Period Of Acquaintance :"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="PeriodOfAqc" runat="server" Enabled="False" ReadOnly="True"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style20">
                <asp:Label ID="Label7" runat="server" Text="Scroe ( 1 - 5 ) :"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="Score" runat="server" Enabled="False" ReadOnly="True"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style20">
                <asp:Label ID="Label8" runat="server" Text="Words Of Recommendations :"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="Words" runat="server" Enabled="False" Height="80px" MaxLength="200" Rows="10" TextMode="MultiLine" ReadOnly="True"></asp:TextBox>
            </td>
        </tr>
    </table>
    <asp:ImageButton ID="backbutton" runat="server" ImageUrl="~/image/language_heb.jpg" OnClick="backbutton_Click" />
    <br />
    <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Visible="False">
        <Columns>
            <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
            <asp:BoundField DataField="RecommenderEmail" HeaderText="RecommenderEmail" SortExpression="RecommenderEmail" />
            <asp:BoundField DataField="RecommenderFirstName" HeaderText="RecommenderFirstName" SortExpression="RecommenderFirstName" />
            <asp:BoundField DataField="Expr1" HeaderText="Expr1" SortExpression="Expr1" />
            <asp:BoundField DataField="UserFirstName" HeaderText="UserFirstName" SortExpression="UserFirstName" />
            <asp:BoundField DataField="UserEmail" HeaderText="UserEmail" SortExpression="UserEmail" />
            <asp:BoundField DataField="FamiliaritySource" HeaderText="FamiliaritySource" SortExpression="FamiliaritySource" />
            <asp:BoundField DataField="FamiliarityPeriod" HeaderText="FamiliarityPeriod" SortExpression="FamiliarityPeriod" />
            <asp:BoundField DataField="Score" HeaderText="Score" SortExpression="Score" />
            <asp:BoundField DataField="WordsOfRecommendations" HeaderText="WordsOfRecommendations" SortExpression="WordsOfRecommendations" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT Recommendations.Id, Recommendations.RecommenderEmail, Recommendations.RecommenderFirstName, Recommendations.CompanyName AS Expr1, Recommendations.UserFirstName, Recommendations.UserEmail, Recommendations.FamiliaritySource, Recommendations.FamiliarityPeriod, Recommendations.Score, Recommendations.WordsOfRecommendations FROM Recommendations INNER JOIN Employers AS Employers_1 ON Recommendations.CompanyName = Employers_1.CompanyName"></asp:SqlDataSource>
    <br />
</asp:Content>
