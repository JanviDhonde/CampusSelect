﻿<%@ Page Language="C#" MasterPageFile="~/Admin/ADMIN.master" AutoEventWireup="true" CodeFile="ADMIN_Search_STD.aspx.cs" Inherits="Admin_ADMIN_Search_STD" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


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
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table class="tbl">
        <tr>
            <td class="tblhead">
                Search&nbsp; Students ::</td>
        </tr>
        <tr>
            <td>
                            <asp:Label ID="lblmsg" runat="server"></asp:Label>
                        </td>
        </tr>
        <tr>
            <td align="center">
                            <asp:DataList ID="DataList3" runat="server" Width="520px" 
                                onitemcommand="DataList3_ItemCommand">
                                <ItemTemplate>
                                    <table class="tbl" align="left">
                                        <tr style="border-bottom-style:solid;border-bottom-color:Gray;">
                                            <td colspan="4" align="left" 
                                                
                                                style="border-bottom-style: solid; border-bottom-width: thin; border-bottom-color: #00CC99" 
                                                class="tblhead">
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
                                            <td class="style8">
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
                                            <td>
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
                                            <td>
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
                             CommandName="ViewResume" >View Resume</asp:LinkButton>
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

