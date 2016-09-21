<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AllDataOfCendidate.aspx.cs" Inherits="Final.AllDataOfCendidate" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style19 {
        width: 100%;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContent1" runat="server">
    <table class="auto-style19">
    <tr>
        <td><strong>cv cendidate</strong></td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Email" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
                    <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
                    <asp:BoundField DataField="Email" HeaderText="Email" ReadOnly="True" SortExpression="Email" />
                    <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                    <asp:BoundField DataField="Field_Id" HeaderText="Field_Id" SortExpression="Field_Id" />
                    <asp:BoundField DataField="SubField_Id" HeaderText="SubField_Id" SortExpression="SubField_Id" />
                    <asp:BoundField DataField="CurrentWorkPlace" HeaderText="CurrentWorkPlace" SortExpression="CurrentWorkPlace" />
                    <asp:BoundField DataField="CurrentPosition" HeaderText="CurrentPosition" SortExpression="CurrentPosition" />
                    <asp:BoundField DataField="Education" HeaderText="Education" SortExpression="Education" />
                    <asp:BoundField DataField="College" HeaderText="College" SortExpression="College" />
                    <asp:BoundField DataField="Graduation" HeaderText="Graduation" SortExpression="Graduation" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [FirstName], [LastName], [Email], [City], [Field_Id], [SubField_Id], [CurrentWorkPlace], [CurrentPosition], [Education], [College], [Graduation] FROM [Users] WHERE ([Email] = @Email)">
                <SelectParameters>
                    <asp:SessionParameter Name="Email" SessionField="CandidateEmail" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            <strong>
            <asp:Label ID="Label1" runat="server" Text="Cendidate Experiance"></asp:Label>
            </strong>
            <br />
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>
            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2">
                <Columns>
                    <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                    <asp:BoundField DataField="Field_id" HeaderText="Field_id" SortExpression="Field_id" />
                    <asp:BoundField DataField="SubField_Id" HeaderText="SubField_Id" SortExpression="SubField_Id" />
                    <asp:BoundField DataField="CompanyName" HeaderText="CompanyName" SortExpression="CompanyName" />
                    <asp:BoundField DataField="Duration" HeaderText="Duration" SortExpression="Duration" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Email], [Field_id], [SubField_Id], [CompanyName], [Duration] FROM [Employment] WHERE ([Email] = @Email)">
                <SelectParameters>
                    <asp:SessionParameter Name="Email" SessionField="CandidateEmail" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            <br />
            <strong>
            <asp:Label ID="Label2" runat="server" Text="Recommendtion"></asp:Label>
            </strong>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>
            <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource3">
                <Columns>
                    <asp:BoundField DataField="RecommenderEmail" HeaderText="RecommenderEmail" SortExpression="RecommenderEmail" />
                    <asp:BoundField DataField="CompanyName" HeaderText="CompanyName" SortExpression="CompanyName" />
                    <asp:BoundField DataField="UserFirstName" HeaderText="UserFirstName" SortExpression="UserFirstName" />
                    <asp:BoundField DataField="UserEmail" HeaderText="UserEmail" SortExpression="UserEmail" />
                    <asp:BoundField DataField="FamiliaritySource" HeaderText="FamiliaritySource" SortExpression="FamiliaritySource" />
                    <asp:BoundField DataField="FamiliarityPeriod" HeaderText="FamiliarityPeriod" SortExpression="FamiliarityPeriod" />
                    <asp:BoundField DataField="Score" HeaderText="Score" SortExpression="Score" />
                    <asp:BoundField DataField="WordsOfRecommendations" HeaderText="WordsOfRecommendations" SortExpression="WordsOfRecommendations" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [RecommenderEmail], [CompanyName], [UserFirstName], [UserEmail], [FamiliaritySource], [FamiliarityPeriod], [Score], [WordsOfRecommendations] FROM [Recommendations] WHERE ([UserEmail] = @UserEmail)">
                <SelectParameters>
                    <asp:SessionParameter Name="UserEmail" SessionField="CandidateEmail" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            <br />
            <asp:Button ID="hasama" runat="server" OnClick="hasama_Click" Text="Choose Candidate For Job !" />
            <br />
            <asp:Label ID="msesgelabel" runat="server"></asp:Label>
            <br />
            <br />
            <asp:ImageButton ID="backbutton" runat="server" ImageUrl="~/image/language_heb.jpg" OnClick="backbutton_Click" />
            <br />
        </td>
        <td>&nbsp;</td>
    </tr>
</table>
</asp:Content>
