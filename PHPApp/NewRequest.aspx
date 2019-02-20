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
</asp:Content>
