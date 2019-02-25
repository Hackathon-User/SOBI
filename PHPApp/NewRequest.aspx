<%@ Page Title="" Language="C#" MasterPageFile="~/PHP.Master" AutoEventWireup="true" CodeBehind="NewRequest.aspx.cs" Inherits="PHPApp.NewRequest" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        ul {
            list-style-type: none;
            margin: 0;
            padding: 0;
            background-color: #00b503;
            color: black;
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
            color: white;
        }
    </style>
    <ul>
        <li><a href="Home.aspx">Home</a></li>
        <li><a class="active" href="NewRequest.aspx">New Request</a></li>
        <li><a href="CheckStatus.aspx">Check Status</a></li>
        <li><a href="ContactHelpdesk.aspx">Contact Helpdesk</a></li>
    </ul>

    <div>

        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <br />
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>

                <ajaxToolkit:TabContainer ID="TabContainer1" runat="server" ActiveTabIndex="0" Height="350px" Width="1300px">
                    <ajaxToolkit:TabPanel ID="TabPanel1" runat="server" HeaderText="Hospitalisation">
                        <ContentTemplate>
                            <table>
                                <tr>
                                    <td style="width: 200px; height: 70px; text-align: left">
                                        <asp:Label ID="Label1" runat="server" Text="Patient Name: "></asp:Label></td>
                                    <td style="width: 450px; height: 70px; text-align: left">
                                        <asp:TextBox ID="TextBox1" runat="server" Width="420px"></asp:TextBox></td>
                                    <td style="width: 200px; height: 70px; text-align: left">
                                        <asp:Label ID="Label2" runat="server" Text="Blood Group: "></asp:Label></td>
                                    <td style="width: 450px; height: 70px; text-align: left">
                                        <asp:DropDownList ID="DropDownList1" runat="server" Width="420px">
                                            <asp:ListItem>A+</asp:ListItem>
                                            <asp:ListItem>B+</asp:ListItem>
                                            <asp:ListItem>AB+</asp:ListItem>
                                            <asp:ListItem>O+</asp:ListItem>
                                            <asp:ListItem>A-</asp:ListItem>
                                            <asp:ListItem>B-</asp:ListItem>
                                            <asp:ListItem>AB-</asp:ListItem>
                                            <asp:ListItem>O-</asp:ListItem>
                                        </asp:DropDownList></td>
                                </tr>
                                <tr>
                                    <td style="width: 200px; height: 70px; text-align: left">
                                        <asp:Label ID="Label3" runat="server" Text="DOB: "></asp:Label></td>
                                    <td style="width: 450px; height: 70px; text-align: left">
                                        <asp:TextBox ID="TextBox3" runat="server" Width="420px"></asp:TextBox></td>
                                    <ajaxToolkit:CalendarExtender ID="CalendarExtender1" runat="server" TargetControlID="TextBox3" />
                                    <td style="width: 200px; height: 70px; text-align: left">
                                        <asp:Label ID="Label4" runat="server" Text="Known Ailments: "></asp:Label></td>
                                    <td style="width: 450px; height: 70px; text-align: left">
                                        <asp:TextBox ID="TextBox4" runat="server" Width="420px" Height="65px" TextMode="MultiLine"></asp:TextBox></td>
                                </tr>
                                <tr>
                                    <td style="width: 200px; height: 70px; text-align: left">
                                        <asp:Label ID="Label5" runat="server" Text="Gender: "></asp:Label></td>
                                    <td style="width: 450px; height: 70px; text-align: left">
                                        <asp:DropDownList ID="DropDownList2" runat="server" Width="420px">
                                            <asp:ListItem>Male</asp:ListItem>
                                            <asp:ListItem>Female</asp:ListItem>
                                        </asp:DropDownList></td>
                                    <td style="width: 200px; height: 70px; text-align: left">
                                        <asp:Label ID="Label6" runat="server" Text="Suggested By: "></asp:Label></td>
                                    <td style="width: 450px; height: 70px; text-align: left">
                                        <asp:TextBox ID="TextBox6" runat="server" Width="420px"></asp:TextBox></td>
                                </tr>
                                <tr>
                                    <td style="width: 200px; height: 70px; text-align: left">
                                        <asp:Label ID="Label7" runat="server" Text="Email ID: "></asp:Label></td>
                                    <td style="width: 450px; height: 70px; text-align: left">
                                        <asp:TextBox ID="TextBox7" runat="server" Width="420px" TextMode="Email"></asp:TextBox></td>
                                    <td style="width: 200px; height: 70px; text-align: left">
                                        <asp:Label ID="Label8" runat="server" Text="Emergency: "></asp:Label></td>
                                    <td style="width: 450px; height: 70px; text-align: left">
                                        <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal" AutoPostBack="true" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged">
                                            <asp:ListItem>Yes</asp:ListItem>
                                            <asp:ListItem>No</asp:ListItem>
                                        </asp:RadioButtonList></td>
                                </tr>
                                <tr>
                                    <td style="width: 200px; height: 70px; text-align: left">
                                        <asp:Label ID="Label9" runat="server" Text="Emergency Contact: "></asp:Label></td>
                                    <td style="width: 450px; height: 70px; text-align: left">
                                        <asp:TextBox ID="TextBox9" runat="server" Width="420px" TextMode="Phone"></asp:TextBox></td>
                                    <td style="width: 200px; height: 70px; text-align: left"></td>
                                    <td style="width: 450px; height: 70px; text-align: center">
                                        <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" Style="height: 30px; width: 300px; border-radius: 5px; background-color: cornflowerblue" />
                                        <asp:Button ID="Button2" runat="server" Text="Make Payment" OnClick="Button2_Click" Style="height: 30px; width: 300px; border-radius: 5px; background-color: cornflowerblue" /></td>
                                </tr>
                            </table>
                        </ContentTemplate>
                    </ajaxToolkit:TabPanel>
                    <ajaxToolkit:TabPanel ID="TabPanel2" runat="server" HeaderText="Outdoor">
                        <ContentTemplate>
                            <table>
                                <tr>
                                    <td style="width: 650px">
                                        <div style="padding: 10px">
                                            <a style="font-size: 24px; color: black; font-family: Calibri">For booking an outdoor appointment, kindly make a phone call to any of the following numbers: </a>
                                            <br />
                                            <br />
                                            <a style="font-size: 18px; color: blue; font-family: Calibri">1800-700-1485</a>&nbsp;&nbsp;<a style="font-size: 18px; color: lightcoral; font-family: Calibri">8am to 10pm</a>&nbsp;&nbsp;<a style="font-size: 18px; color: lightgreen; font-family: Calibri">(Tollfree)</a><br />
                                            <a style="font-size: 18px; color: blue; font-family: Calibri">1800-700-1486</a>&nbsp;&nbsp;<a style="font-size: 18px; color: lightcoral; font-family: Calibri">8am to 10pm</a>&nbsp;&nbsp;<a style="font-size: 18px; color: lightgreen; font-family: Calibri">(Tollfree)</a><br />
                                            <a style="font-size: 18px; color: blue; font-family: Calibri">1800-700-1487</a>&nbsp;&nbsp;<a style="font-size: 18px; color: lightcoral; font-family: Calibri">24x7</a>&nbsp;&nbsp;<a style="font-size: 18px; color: lightgreen; font-family: Calibri">(Tollfree)</a><br />
                                            <br />
                                            <br />
                                            <a style="font-size: 22px; color: black; font-family: Calibri">For any issues related to booking: </a><a style="font-size: 18px; color: blue; font-family: Calibri">033-87957713</a>
                                        </div>
                                    </td>
                                    <td style="width: 650px">
                                        <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/HelpdeskImage.jpeg" />
                                    </td>
                                </tr>
                            </table>
                        </ContentTemplate>
                    </ajaxToolkit:TabPanel>
                </ajaxToolkit:TabContainer>
            </ContentTemplate>
        </asp:UpdatePanel>
        <br />
        <br />
    </div>
</asp:Content>
