﻿<%@ Page Language="C#" MasterPageFile="Home.master" AutoEventWireup="true" CodeFile="SearchCMP_withoutLogin.aspx.cs" Inherits="SearchCMP_withoutLogin" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

<script  type="text/javascript">
     function abox()
     {
      alert("Please login First !!!!");
     }
     
    </script>
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
                Search&nbsp; results ::</td>
        </tr>
        <tr>
            <td>
                            <asp:Label ID="lblmsg" runat="server"></asp:Label>
                        </td>
        </tr>
        <tr>
            <td>
                            <asp:DataList ID="DataList3" runat="server" Width="100%">
                                <ItemTemplate>
                                    <table class="tbl" align="left">
                                        <tr style="border-bottom-style:solid;border-bottom-color:Gray;">
                                            <td colspan="4" align="left" 
                                                
                                                style="border-bottom-style: solid; border-bottom-width: thin; border-bottom-color: #00CC99" 
                                                class="tblhead">
                                                Company Name&nbsp; ::
                                                <asp:Label ID="lblCName" runat="server" Text='<%# Eval("Company_Name") %>'></asp:Label>
                        &nbsp;
                                                </td>
                                        </tr>
                                        <tr>
                                            <td align="left" class="style8">
                                                Role&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp; ::</td>
                                            <td class="style8" align="left">
                                                <asp:Label ID="lblRole" runat="server" Text='<%# Eval("Role") %>'></asp:Label>
                                            </td>
                                            <td class="style8">
                                                &nbsp;</td>
                                            <td class="style8">
                                                &nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td align="left" class="style8">
                                                Skill&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; :&nbsp;
                                            </td>
                                            <td class="style8" align="left">
                                                <asp:Label ID="lblskill" runat="server" Text='<%#Eval("RequiredSkill") %>'></asp:Label>
                                            </td>
                                            <td class="style8">
                                            </td>
                                            <td class="style8">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="left">
                                                Category&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :</td>
                                            <td align="left">
                                                <asp:Label ID="lblCate" runat="server" Text='<%#Eval("JobCategory") %>'></asp:Label>
                                            </td>
                                            <td>
                        &nbsp;</td>
                                            <td>
                        &nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td align="left">
                                                Qualification&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :</td>
                                            <td align="left">
                                                <asp:Label ID="lblQuali" runat="server" Text='<%#Eval("Min_Qualification") %>'></asp:Label>
                                            </td>
                                            <td>
                        &nbsp;</td>
                                            <td>
                                                &nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td align="left">
                                                Last Apply Date :</td>
                                            <td align="left">
                                                <asp:Label ID="lblLastAplyDate" runat="server" Text='<%# Eval("Last_ApplyDate") %>'></asp:Label>
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
                                                <asp:LinkButton ID="lnkbtnviewmore" runat="server" CssClass="lnk" 
                                                    onclick="lnkbtnviewmore_Click" OnClientClick="abox()">View More..</asp:LinkButton>
                                            </td>
                                            <td>
                                                <asp:LinkButton ID="lnkbtnapply" runat="server" CssClass="lnk" 
                                                     OnClientClick="abox()" onclick="lnkbtnapply_Click">Apply</asp:LinkButton>
                                            </td>
                                        </tr>
                                    </table>
                                </ItemTemplate>
                            </asp:DataList>
                        </td>
        </tr>
        <tr>
            <td valign="top">
               
            </td>
        </tr>
    </table>
</asp:Content>
