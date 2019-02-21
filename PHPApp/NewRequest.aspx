<%@ Page Title="" Language="C#" MasterPageFile="~/PHP.Master" AutoEventWireup="true" CodeBehind="NewRequest.aspx.cs" Inherits="PHPApp.NewRequest" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        ul {
            list-style-type: none;
            margin: 0;
            padding: 0;
            overflow: hidden;
            background-color: #333;
        }
        li {
            float: left;
        }
            li a {
                display: block;
                color: white;
                text-align: center;
                padding: 14px 16px;
                text-decoration: none;
            }
                li a:hover:not(.active) {
                    background-color: #111;
                }
        .active {
            background-color: #4CAF50;
        }
    </style>
    <ul>
        <li><a href="Home.aspx">Home</a></li>
        <li><a class="active" href="NewRequest.aspx">New Request</a></li>
        <li><a href="CheckStatus.aspx">Check Status</a></li>
        <li><a href="ContactHelpdesk.aspx">Contact Helpdesk</a></li>
    </ul>
    
<asp:ScriptManager ID="ScriptManager1" runat="server">
</asp:ScriptManager>
<div id="dvGrid" style="padding: 10px; width: 450px">
<asp:UpdatePanel ID="UpdatePanel1" runat="server">
    <ContentTemplate>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" OnRowDataBound="OnRowDataBound"
            DataKeyNames="CustomerId" OnRowEditing="OnRowEditing" OnRowCancelingEdit="OnRowCancelingEdit" PageSize = "3" AllowPaging ="true" OnPageIndexChanging = "OnPaging"
            OnRowUpdating="OnRowUpdating" OnRowDeleting="OnRowDeleting" EmptyDataText="No records has been added."
            Width="450">
            <Columns>
                <asp:TemplateField HeaderText="Patient Name" ItemStyle-Width="150">
                    <ItemTemplate>
                        <asp:Label ID="lblName" runat="server" Text='<%# Eval("Name") %>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="txtName" runat="server" Text='<%# Eval("Name") %>' Width="140"></asp:TextBox>
                    </EditItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Age" ItemStyle-Width="150">
                    <ItemTemplate>
                        <asp:Label ID="lblCountry" runat="server" Text='<%# Eval("Country") %>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="txtCountry" runat="server" Text='<%# Eval("Country") %>' Width="140"></asp:TextBox>
                    </EditItemTemplate>
                </asp:TemplateField>
                 <asp:TemplateField HeaderText="Gender" ItemStyle-Width="150">
                    <ItemTemplate>
                        <asp:Label ID="lblCountry" runat="server" Text='<%# Eval("Country") %>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="txtCountry" runat="server" Text='<%# Eval("Country") %>' Width="140"></asp:TextBox>
                    </EditItemTemplate>
                </asp:TemplateField>
                <asp:CommandField ButtonType="Link" ShowEditButton="true" ShowDeleteButton="true"
                    ItemStyle-Width="150" />
            </Columns>
        </asp:GridView>
        <table border="1" style="border-collapse: collapse; padding: 0">
            <tr>
                <td style="width: 150px">
                    Patient Name:<br />
                    <asp:TextBox ID="txtName" runat="server" Width="140" />
                </td>
                <td style="width: 150px">
                    Age:<br />
                    <asp:TextBox ID="txtCountry" runat="server" Width="140" />
                </td>
                <td style="width: 150px">
                    Gender:<br />
                    <asp:TextBox ID="TextBox1" runat="server" Width="140" />
                </td>
                <td style="width: 150px">
                    <asp:Button ID="btnAdd" runat="server" Text="Add" OnClick="Insert" />
                </td>
            </tr>
        </table>
    </ContentTemplate>
</asp:UpdatePanel>
</div>

</asp:Content>
