<%@ Page Title="" Language="C#" MasterPageFile="~/PHP.Master" AutoEventWireup="true" CodeBehind="CheckStatus.aspx.cs" Inherits="PHPApp.CheckStatus" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        ul {
            list-style-type: none;
            margin: 0;
            padding: 0;
            overflow: hidden;
            background-color: #00b503;
            color: black
        }

        li {
            float: left;
        }

            li a {
                display: block;
                color: black;
                text-align: center;
                padding: 14px 16px;
                text-decoration: none;
            }

                li a:hover:not(.active) {
                    background-color: #7fff81;
                }

        .active {
            background-color: #007201;
            color: white
        }
    </style>
    <ul>
        <li><a href="Home.aspx">Home</a></li>
        <li><a href="NewRequest.aspx">New Request</a></li>
        <li><a class="active" href="CheckStatus.aspx">Check Status</a></li>
        <li><a href="ContactHelpdesk.aspx">Contact Helpdesk</a></li>
    </ul>
    <asp:ScriptManager ID="ScriptManager1" runat="server">
</asp:ScriptManager>
<div id="dvGrid" style="padding: 10px; width: 450px">
    
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" 
            OnRowDeleting="grdView_RowDeleting" onRowCommand="grdView_RowCommand"
            
           
            Width="1250px">
              <Columns>
                    
                 <asp:BoundField DataField="PatientName" HeaderText="PatientName" ItemStyle-Width="30" />    
                 <asp:BoundField DataField="Age" HeaderText="Age" ItemStyle-Width="150" />    
                 <asp:BoundField DataField="Gender" HeaderText="Gender" ItemStyle-Width="150" />   
                  <asp:BoundField DataField="SuggestedBy" HeaderText="SuggestedBy" ItemStyle-Width="150" />     
                  <asp:BoundField DataField="Status" HeaderText="Status" ItemStyle-Width="150" />    
                  <asp:BoundField DataField="Contact" HeaderText="Contact" ItemStyle-Width="150" />    
                  <asp:BoundField DataField="Email" HeaderText="Email" ItemStyle-Width="150" />    
                  <asp:TemplateField>               
                <ItemTemplate>
                    <asp:Button runat="server" CommandName="Delete" ID="btnDelete" Text="Delete" 
                             CommandArgument="<%# ((GridViewRow)Container).RowIndex %>"/>
                </ItemTemplate>
                <EditItemTemplate>

                </EditItemTemplate>
                <%--<ItemTemplate>
                    <asp:Button ID="btnEdit" runat="server" Text="Edit" CommandName="Edit" />
                </ItemTemplate>--%>
            </asp:TemplateField>
            <asp:TemplateField>
                <ItemTemplate>
                    <asp:Button runat="server" CommandName="Change" ID="btnEdit" Text="Edit" 
                             CommandArgument="<%# ((GridViewRow)Container).RowIndex %>"/>
                </ItemTemplate>
            </asp:TemplateField>
             </Columns>
         
        </asp:GridView>
        
   
</div>
</asp:Content>
