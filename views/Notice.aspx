﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Notice.aspx.cs" Inherits="gmt.Notice" %>

<!DOCTYPE html>

<html >
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <link type="text/css" rel="stylesheet" href="../bootstrap/css/bootstrap.min.css" />
    <link href="../mycss/docs.min.css" rel="stylesheet" media="screen" />
    <link rel="stylesheet" href="../mycss/style.css" />
    <script type="text/javascript" src="../bootstrap/js/jquery-2.0.2.min.js"></script>
    <script type="text/javascript" src="../bootstrap/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="../js/global.js"></script>
    <script type="text/javascript" src="../js/language.js"></script>
</head>
<body>
    <header class="navbar navbar-static-top bs-docs-nav" id="header" ></header>
    <div class="bs-docs-header" id="content">
        <div class="container">
            <h1 data-lan-id="Notice"></h1>
        </div>
    </div>
    <div class="container">
        <div class="row">
                <form id="form1" runat="server">
                    <table>
                        <tr>
                            <td>
                                <label data-lan-id="Select_Server"></label></td>
                            <td>
                                <asp:DropDownList ID="serverList" runat="server" Width="150px" AutoPostBack="True" OnSelectedIndexChanged="serverList_SelectedIndexChanged">
                                </asp:DropDownList>
                            </td>
                            <td>
                                <asp:Label ID="outputLabel" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr style="height: 100px">
                            <td style="vertical-align: top">
                                <label data-lan-id="Revolving_Content"></label></td>
                            <td colspan="3">
                                <asp:TextBox ID="revolvingTextBox" runat="server" Width="300px" Height="100px"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td>
                                <label data-lan-id="Interval_Time"></label></td>
                            <td colspan="3">
                                <asp:TextBox ID="intervalTextBox" runat="server" Width="100px">1</asp:TextBox><label data-lan-id="Second"></label></td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Button ID="addRevolvingButton" data-lan-id="Add" data-lan-type="text" runat="server" Text="" OnClick="addRevolvingButton_Click" UseSubmitBehavior="false" ForeColor="White" BackColor="Blue" Width="100" Height="30" Font-Bold="true" /></td>
                        </tr>
                        <tr>
                            <td style="vertical-align: top">
                                <label data-lan-id="Current_Revoling"></label></td>
                            <td colspan="2">
                                <asp:ListBox ID="revolvingListBox" runat="server" Rows="10" Width="395px"></asp:ListBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Button ID="removeRevolvingButton" data-lan-id="Delete" data-lan-type="text" runat="server" Text="" OnClick="removeRevolvingButton_Click" UseSubmitBehavior="false" ForeColor="White" BackColor="Blue" Width="100" Height="30" Font-Bold="true" /></td>
                        </tr>
                        <tr>
                            <td><b>
                                <label data-lan-id="Select_Server"></label></b></td>
                        </tr>
                        <tr style="height: 200px">
                            <td colspan="2">
                                <asp:ListBox ID="serverListBox" runat="server" Height="200px" Width="300px" SelectionMode="Multiple"></asp:ListBox>
                            </td>
                            <td style="text-align: center">
                                <table>
                                    <tr>
                                        <td>
                                            <asp:Button ID="addAllButton" data-lan-id="AddAll" data-lan-type="text" runat="server" Text="" OnClick="addAllButton_Click" UseSubmitBehavior="false" ForeColor="White" BackColor="Blue" Width="125px" Height="30px" Font-Bold="true" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Button ID="addSelectButton" data-lan-id="AddSelect" data-lan-type="text" runat="server" Text="" OnClick="addSelectButton_Click" UseSubmitBehavior="false" ForeColor="White" BackColor="Blue" Width="125px" Height="30px" Font-Bold="true" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Button ID="removeSelectButton" data-lan-id="RemoveSelect" data-lan-type="text" runat="server" Text="" OnClick="removeSelectButton_Click" UseSubmitBehavior="false" ForeColor="White" BackColor="Blue" Width="125px" Height="30px" Font-Bold="true" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Button ID="removeAllButton" data-lan-id="RemoveAll" data-lan-type="text" runat="server" Text="" OnClick="removeAllButton_Click" UseSubmitBehavior="false" ForeColor="White" BackColor="Blue" Width="125px" Height="30px" Font-Bold="true" />
                                        </td>
                                    </tr>
                                </table>
                            </td>
                            <td colspan="2">
                                <asp:ListBox ID="selectListBox" runat="server" Height="200px" Width="300px" SelectionMode="Multiple"></asp:ListBox>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <asp:Button ID="copyRevolvingButton" data-lan-id="Copy_Revoling" data-lan-type="text" runat="server" OnClientClick="if (!confirm(GetContentMsg('Notice_copy'))) return;" OnClick="copyRevolvingButton_Click" Text="" UseSubmitBehavior="False" ForeColor="White" BackColor="Blue" Width="100" Height="30" Font-Bold="true" />
                                &nbsp;
                                        <asp:Button ID="deleteRevolvingButton" data-lan-id="Delete_Revoling" data-lan-type="text" runat="server" OnClientClick="if (!confirm(GetContentMsg('Notice_delete'))) return;" OnClick="deleteRevolvingButton_Click" Text="" UseSubmitBehavior="False" ForeColor="White" BackColor="Blue" Width="100" Height="30" Font-Bold="true" />
                            </td>
                        </tr>
                    </table>
                </form>
            </div>
    </div>
</body>
</html>
