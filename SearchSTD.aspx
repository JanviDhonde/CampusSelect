﻿<%@ Page Language="C#" MasterPageFile="~/CLogin.master" AutoEventWireup="true" CodeFile="SearchSTD.aspx.cs" Inherits="SearchSTD" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style7
        {
            width: 442px;
            height: 139px;
            border-bottom-style:solid;
            border-bottom-color:Gray;
            
        }
        .style8
        {
            height: 27px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="tbl">
        <tr>
            <td class="tblhead">
                Search&nbsp; result ::</td>
        </tr>
        <tr>
            <td>
    <asp:Label ID="lblmsg" runat="server"></asp:Label>
                        </td>
        </tr>
        <tr>
            <td>
                            <asp:DataList ID="DataList3" runat="server" 
                                onitemcommand="DataList3_ItemCommand">
                                <ItemTemplate>
                                    <table class="style7" align="left">
                                        <tr style="border-bottom-style:solid;border-bottom-color:Gray;">
                                            <td colspan="5" align="left" 
                                                
                                                style="border-bottom-style: solid; border-bottom-width: thin; border-bottom-color: #00CC99">
                        Name&nbsp; ::
                                                <asp:Label ID="lblFName" runat="server" Text='<%#Eval("FName") %>'></asp:Label>
                        &nbsp;
                                                <asp:Label ID="lblLName" runat="server" Text='<%#Eval("LName") %>'></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="left" class="style8">
                                                Skill&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; :&nbsp;
                                            </td>
                                            <td class="style8">
                                                <asp:Label ID="lblskill" runat="server" Text='<%#Eval("Skill") %>'></asp:Label>
                                            </td>
                                            <td class="style8">
                                            </td>
                                            <td class="style8" colspan="2">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="left">
                                                Category&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :</td>
                                            <td>
                                                <asp:Label ID="lblCate" runat="server" Text='<%#Eval("Branch") %>'></asp:Label>
                                            </td>
                                            <td>
                        &nbsp;</td>
                                            <td colspan="2">
                        &nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td align="left">
                                                Qualification :</td>
                                            <td>
                                                <asp:Label ID="lblQuali" runat="server" Text='<%#Eval("Education") %>'></asp:Label>
                                            </td>
                                            <td>
                        &nbsp;</td>
                                            <td colspan="2">
                        &nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td>
                        &nbsp;</td>
                                            <td>
                        &nbsp;</td>
                                            <td>
                        &nbsp;</td>
                                            <td>
                                                <asp:LinkButton ID="lnkbtnviewmore" runat="server" 
                             CommandName="viewmore">View Resume</asp:LinkButton>
                                            </td>
                                            <td>
                                                <asp:LinkButton ID="lnkbtnSendMsg" runat="server" Font-Bold="True" 
                                                    ForeColor="#003366" CommandArgument='<%#Eval("enrollno") %>'  CommandName="sendmsg">Send Msg</asp:LinkButton>
                                            </td>
                                        </tr>
                                    </table>
                                </ItemTemplate>
                            </asp:DataList>
                        </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

