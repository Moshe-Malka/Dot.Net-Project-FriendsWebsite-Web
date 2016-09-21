<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="NewJob.aspx.cs" Inherits="Final.NewJob"  EnableEventValidation="false"%>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style11 {
            text-align: center;
        }
        .auto-style13 {
            text-align: left;
            width: 145px;
        }
        .auto-style15 {
            text-align: left;
            width: 801px;
            height: 22px;
        }
        .auto-style16 {
            height: 22px;
            text-align: left;
        }
        .auto-style17 {
            text-align: left;
        }
        .auto-style18 {
            width: 780px;
            height: 50px;
            text-align: left;
        }
        .auto-style19 {
            text-align: left;
            }
        .auto-style20 {
            width: 110%;
            font-weight: normal;
        }
        .auto-style21 {
            text-align: left;
            width: 780px;
        }
        .auto-style22 {
            width: 780px;
            height: 66px;
            text-align: left;
            margin-left: 0px;
            margin-top: 0px;
        }
        .auto-style24 {
            width: 100%;
        }
        .auto-style25 {
            width: 257px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContent1" runat="server">
    <h4>
        <div class="auto-style11">
        new job<br />
        </div>
        <table class="auto-style20">
            <tr>
                <td class="auto-style21">job name</td>
                <td class="auto-style19">
                    <asp:TextBox ID="jobname" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style21">job number</td>
                <td id="jobid" class="auto-style19">
                    <asp:TextBox ID="jobid" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style21">field</td>
                <td class="auto-style19">
                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="FieldName" DataValueField="Field_Id">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [FieldName], [Field_Id] FROM [FieldsInHighTech]"></asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td class="auto-style21">sub field</td>
                <td class="auto-style19">
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
                <td class="auto-style21">discription</td>
                <td class="auto-style19">
                    <asp:TextBox ID="discription" runat="server" Height="43px" Width="142px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style21">education</td>
                <td class="auto-style19">
                    <asp:DropDownList ID="DropDownList4" runat="server" DataSourceID="SqlDataSource4" DataTextField="DegreeName" DataValueField="DegreeName">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Degree]"></asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td class="auto-style21">experience</td>
                <td class="auto-style19">
                    <asp:DropDownList ID="DropDownList5" runat="server" DataSourceID="SqlDataSource5" DataTextField="DurationValue" DataValueField="DurationValue">
                    </asp:DropDownList>
                    <asp:Label ID="Label2" runat="server" Text="years"></asp:Label>
                    <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Duration]"></asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td class="auto-style21">
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" ForeColor="Red"></asp:Label>
                </td>
                <td class="auto-style19">
                    </td>
            </tr>
            <tr>
                <td class="auto-style22">
                    <br />
                    <table class="auto-style24">
                        <tr>
                            <td class="auto-style25">&nbsp;</td>
                            <td>
                    <asp:Button ID="Button1" runat="server" BackColor="Silver" Font-Bold="True" OnClick="Button1_Click" Text="open new job" />
                            </td>
                        </tr>
                    </table>
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <br />
                    <asp:ImageButton ID="backbutton" runat="server" ImageUrl="~/image/language_heb.jpg" OnClick="backbutton_Click" Height="38px" Width="33px" />
    </h4>
    <table class="auto-style24">
        <tr>
            <td class="auto-style11">
                    &nbsp;</td>
        </tr>
    </table>
    <p>
                    &nbsp;</p>
</asp:Content>
