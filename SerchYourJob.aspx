<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="SerchYourJob.aspx.cs" Inherits="Final.SerchYourJob" EnableEventValidation="false" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style15 {
            text-align: center;
        }
        .auto-style16 {
            width: 100%;
        }
        .auto-style17 {
            width: 99px;
        }
        .auto-style18 {
            text-align: center;
        }
        .auto-style19 {
            width: 99px;
            height: 38px;
        }
        .auto-style20 {
            height: 38px;
        }
        .auto-style21 {
            width: 99px;
            height: 247px;
        }
        .auto-style22 {
            height: 247px;
        }
        .auto-style23 {
            width: 99px;
            height: 44px;
        }
        .auto-style24 {
            height: 44px;
        }
        .auto-style25 {
            width: 99px;
        }
        .auto-style26 {
            text-align: left;
            height: 32px;
            margin-left: 164px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContent1" runat="server">
    <h4 class="auto-style26">
        find your job<br />
    </h4>
    <table class="auto-style16">
        <tr>
            <td class="auto-style19">by field</td>
            <td class="auto-style20">
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="FieldName" DataValueField="Field_Id" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Field_Id], [FieldName] FROM [FieldsInHighTech]"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td class="auto-style21"></td>
            <td class="auto-style22">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" DataSourceID="SqlDataSource2" ForeColor="Black">
                    <Columns>
                        <asp:BoundField DataField="CompanyName" HeaderText="CompanyName" SortExpression="CompanyName" />
                        <asp:BoundField DataField="JobName" HeaderText="JobName" SortExpression="JobName" />
                        <asp:BoundField DataField="Discription" HeaderText="Discription" SortExpression="Discription" />
                        <asp:BoundField DataField="EducationalRequirements" HeaderText="EducationalRequirements" SortExpression="EducationalRequirements" />
                        <asp:BoundField DataField="ExperienceRequirements" HeaderText="ExperienceRequirements" SortExpression="ExperienceRequirements" />
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
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [CompanyName], [JobName], [Discription], [EducationalRequirements], [ExperienceRequirements] FROM [Jobs] WHERE ([Field_Id] = @Field_Id)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownList1" Name="Field_Id" PropertyName="SelectedValue" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td class="auto-style23">by education</td>
            <td class="auto-style24">
                <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource3" DataTextField="DegreeName" DataValueField="DegreeName" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Degree]"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td class="auto-style19"></td>
            <td class="auto-style20">
                <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" DataSourceID="SqlDataSource4" ForeColor="Black">
                    <Columns>
                        <asp:BoundField DataField="CompanyName" HeaderText="CompanyName" SortExpression="CompanyName" />
                        <asp:BoundField DataField="JobName" HeaderText="JobName" SortExpression="JobName" />
                        <asp:BoundField DataField="Discription" HeaderText="Discription" SortExpression="Discription" />
                        <asp:BoundField DataField="EducationalRequirements" HeaderText="EducationalRequirements" SortExpression="EducationalRequirements" />
                        <asp:BoundField DataField="ExperienceRequirements" HeaderText="ExperienceRequirements" SortExpression="ExperienceRequirements" />
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
                <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [CompanyName], [JobName], [Discription], [EducationalRequirements], [ExperienceRequirements] FROM [Jobs] WHERE ([EducationalRequirements] = @EducationalRequirements)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownList2" Name="EducationalRequirements" PropertyName="SelectedValue" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td class="auto-style25"></td>
            <td>
                <asp:ImageButton ID="backbutton" runat="server" ImageUrl="~/image/language_heb.jpg" OnClick="backbutton_Click" Height="27px" Width="30px" />
            </td>
        </tr>
    </table>
</asp:Content>
