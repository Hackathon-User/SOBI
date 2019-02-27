<%@ Page Title="" Language="C#" MasterPageFile="~/PHP.Master" AutoEventWireup="true" CodeBehind="ContactHelpdesk.aspx.cs" Inherits="PHPApp.ContactHelpdesk" %>
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
        <li><a href="CheckStatus.aspx">Check Status</a></li>
        <li><a class="active" href="ContactHelpdesk.aspx">Contact Us </a></li>
    </ul>
       <div style="width: 100%">
            <asp:Table ID="LayoutTable" runat="server" Width="100%">
                <asp:TableRow>
                    <asp:TableCell Width="25%" HorizontalAlign="Center">
                        <div style="background-color: lightcoral; height: 200px; border-radius: 10px; width: 1000px">
                            <table>
                                <tr>
                                    <td style="text-align: center">
                                        <a style="font-size: 20px; font-family: Calibri">Contact: </a>
                                        <hr />
                                    </td>
                                </tr>
                                <tr>
                                    <td style="text-align:center">
                                        Contact Number: 9876545321
                                       <br />Email ID: careplus@gmail.com
                                      <br />Website:www.careplusforyou.co.in
                                    </td>
                                </tr>
                               
                            </table>
                        </div>
                    </asp:TableCell>
                    </asp:TableRow>
                </asp:Table>
           </div>
</asp:Content>
