<%@ Page Title="" Language="C#" MasterPageFile="~/PHP.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="PHPApp.Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
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
        .headerCssClass{  
            background-color:silver;  
            color:black;  
            border:1px solid black;  
            padding:4px;  
        }  
        .contentCssClass{  
            background-color: whitesmoke;  
            color:black;  
            border:1px dotted black;  
            padding:4px;  
        }  
        .headerSelectedCss{  
            background-color:darkslategray;  
            color:white;  
            border:1px solid black;  
            padding:4px;  
        }  
    </style>
    <ul>
        <li><a class="active" href="Home.aspx">Home</a></li>
        <li><a href="NewRequest.aspx">New Request</a></li>
        <li><a href="CheckStatus.aspx">Check Status</a></li>
        <li><a href="ContactHelpdesk.aspx">Contact Helpdesk</a></li>
    </ul>
    <div style="padding: 10px; width: 100%; text-align: left">
        <div style="width: 100%">
            <asp:Table ID="LayoutTable" runat="server" Width="100%">
                <asp:TableRow>
                    <asp:TableCell Width="25%" HorizontalAlign="Center">
                        <div style="background-color: lightcoral; height: 400px; border-radius: 10px; width: 250px">
                            <table>
                                <tr>
                                    <td style="text-align: center">
                                        <a style="font-size: 20px; font-family: Calibri">NewsLetter: </a>
                                        <hr />
                                    </td>
                                </tr>
                                <tr>
                                    <td style="text-align: center">
                                        <a style="font-family: Calibri">Healthy Living: 4 ways to celebrate national oatmeal month</a><br />
                                        <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/NewsletterImage.jpg" Width="80%" /><br />
                                        <a style="font-family: Calibri">A whole month dedicated to oatmeal? We celebrate with four recipes including this breakfast apple muesli, for a tasty and healthy start to your day</a><br />
                                        <br />
                                        <asp:Button ID="ButtonReadMore" runat="server" Text="Read More.." Style="background-color: coral; border-radius: 11px; box-shadow: 5px" />

                                    </td>
                                </tr>
                            </table>
                        </div>
                    </asp:TableCell>
                    <asp:TableCell Width="25%" HorizontalAlign="Center">
                        <div style="background-color: lightpink; height: 400px; border-radius: 10px; width:250px">
                            <table>
                                <tr>
                                    <td style="text-align: center">
                                        <a style="font-size: 20px; font-family: Calibri">About Us: </a>
                                        <hr/>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="padding: 10px">
                                        <a style="font-family: Calibri; margin: 10px">Care-Plus is a not-for-profit healthcare organisation with more than 18,000 team members including employees, providers and volunteers. We have been caring for our community for well over a century, since the founding of Rajarhat's first hospital. And today we are the largest community based, locally governed health system in the state of West Bengal</a>
                                </tr>
                            </table>
                        </div></asp:TableCell>
                    <asp:TableCell Width="25%" HorizontalAlign="Center">
                        <div style="background-color: lightgreen; height: 400px; border-radius: 10px; width: 250px">
                            <table>
                                <tr>
                                    <td>
                                        <a style="font-size: 20px; font-family: Calibri">Facilities: </a>
                                        <hr />
                                    </td>
                                </tr>
                                <tr>
                                    <td style="text-align: center">
                                        <asp:Image ID="Image2" runat="server" ImageUrl="~/Images/HackFacility.jpg" Width="100%" /><br />
                                        <br />
                                        <br />
                                        <br />
                                        <asp:DropDownList ID="DropDownList1" runat="server" Width="200px">
                                            <asp:ListItem>Hospitalisation</asp:ListItem>
                                            <asp:ListItem>Outdoor</asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </asp:TableCell>
                    <asp:TableCell Width="25%" HorizontalAlign="Center">
                        <div style="background-color: lightblue; height: 400px; border-radius: 10px; width: 250px">
                            <table>
                                <tr>
                                    <td>
                                        <a style="font-size: 20px; font-family: Calibri">Department: </a>
                                        <hr />
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <ajaxToolkit:Accordion ID="Accordion1" Width="225px" runat="server" HeaderCssClass="headerCssClass" ContentCssClass="contentCssClass"
                                            HeaderSelectedCssClass="headerSelectedCss" FadeTransitions="true" TransitionDuration="200" AutoSize="None" SelectedIndex="0">
                                            <Panes>
                                                <ajaxToolkit:AccordionPane ID="AccordionPane1" runat="server">
                                                    <Header>Cardiology Department</Header>
                                                    <Content>
                                                        &bull;&nbsp;<a>Dr. A. RoyChowdhury</a><br />
                                                        &bull;&nbsp;<a>Dr. P. Basu</a><br />
                                                        &bull;&nbsp;<a>Dr. S. Gupta</a><br />
                                                    </Content>
                                                </ajaxToolkit:AccordionPane>
                                                <ajaxToolkit:AccordionPane ID="AccordionPane2" runat="server">
                                                    <Header>Maternity Department</Header>
                                                    <Content>
                                                        &bull;&nbsp;<a>Dr. B. Sen</a><br />
                                                        &bull;&nbsp;<a>Dr. J. Dey</a><br />
                                                        &bull;&nbsp;<a>Dr. K. Das</a><br />
                                                    </Content>
                                                </ajaxToolkit:AccordionPane>
                                                <ajaxToolkit:AccordionPane ID="AccordionPane3" runat="server">
                                                    <Header>Neurology Department</Header>
                                                    <Content>
                                                        &bull;&nbsp;<a>Dr. N. Ghosh</a><br />
                                                        &bull;&nbsp;<a>Dr. P. Patra</a><br />
                                                        &bull;&nbsp;<a>Dr. O. Mukherjee</a><br />
                                                    </Content>
                                                </ajaxToolkit:AccordionPane>
                                                <ajaxToolkit:AccordionPane ID="AccordionPane4" runat="server">
                                                    <Header>Eye-Care Department</Header>
                                                    <Content>
                                                        &bull;&nbsp;<a>Dr. D. Roy</a><br />
                                                        &bull;&nbsp;<a>Dr. J. Agarwal</a><br />
                                                        &bull;&nbsp;<a>Dr. S. Prasad</a><br />
                                                    </Content>
                                                </ajaxToolkit:AccordionPane>
                                            </Panes>
                                        </ajaxToolkit:Accordion>
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>
        </div>
    </div>
</asp:Content>
