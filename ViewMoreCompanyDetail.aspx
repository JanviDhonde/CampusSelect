﻿<%@ Page Language="C#" MasterPageFile="~/SLogin.master" AutoEventWireup="true" CodeFile="ViewMoreCompanyDetail.aspx.cs" Inherits="ViewMoreCompanyDetail" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style7
        {
            width: 175px;
        }
        .style8
        {
            text-align: left;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="tbl">
        <tr>
            <td class="tblhead">
                            <asp:Label ID="lblCompanyName0" runat="server"></asp:Label>
                        </td>
        </tr>
        <tr>
            <td>
                <table align="center" cellspacing="5" class="tbl">
                    <tr>
                        <td class="lbl" colspan="4">
                        <span style="font-size: 10pt">
                            <asp:Label ID="lblsendmsg" runat="server" CssClass="lblError"></asp:Label>
                        </span>
                            <asp:Label ID="lblApply" runat="server" CssClass="lblError"></asp:Label>
                                                                   </td>
                    </tr>
                    <tr>
                        <td class="lbl">
                            &nbsp;Company Name :</td>
                        <td class="style3" style="margin-left: 80px; text-align: left;" colspan="3">
                            <asp:Label ID="lblCompanyName" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="lbl">
                            Category :
                        </td>
                        <td class="style8" style="margin-left: 80px" colspan="3">
                            <asp:Label ID="lblCategory" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="lbl">
                            Role :
                        </td>
                        <td class="style8" colspan="3">
                            <asp:Label ID="lblRole" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="lbl">
                            Min Qualification :
                        </td>
                        <td class="style8" style="margin-left: 80px" colspan="3">
                            <asp:Label ID="lblMinQualification" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="lbl">
                            Required Skill :
                        </td>
                        <td class="style8" style="margin-left: 40px" colspan="3">
                            <asp:Label ID="lblSkill" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr class="lbl">
                        <td>
                            Extra Skill :
                        </td>
                        <td class="style8" style="margin-left: 40px; " colspan="3">
                            <asp:Label ID="lblExtraSkill" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="lbl">
                            Max. Age :</td>
                        <td class="style8" style="margin-left: 40px" colspan="3">
                            <asp:Label ID="lblAge" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="lbl">
                            Job Location :
                        </td>
                        <td class="style8" colspan="3">
                            <asp:Label ID="lblJobLocation" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="lbl">
                            Salary :
                        </td>
                        <td colspan="3" class="style8">
                            <asp:Label ID="lblMinSalary" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="lbl">
                            Working Hour&nbsp; :</td>
                        <td class="style8" colspan="3">
                            <asp:Label ID="lblWorkingHour" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="lbl">
                            Desription :
                        </td>
                        <td class="style8" colspan="3">
                            <asp:Label ID="lblDesc" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="lbl">
                            Last Apply Date ::</td>
                        <td class="style3" align="left" >
                            <asp:Label ID="lblLastApplyDate" runat="server"></asp:Label>
                        </td>
                        <td class="style3" align="left" >
                            &nbsp;</td>
                        <td class="style7" align="left" >
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td class="style3" colspan="3">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style4">
                        </td>
                        <td class="style5" colspan="3" style="text-align: left">
                            <asp:Button ID="btnApplyJob" runat="server" CssClass="btn" 
                                onclick="btnPostJOb_Click" Text="Apply" CausesValidation="False" 
                                Width="69px" Height="26px" />
                        </td>
                    </tr>
                    <tr>
                        <td class="style4">
                            &nbsp;</td>
                        <td class="style5" colspan="3">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="tblhead" colspan="4">
                            Send Message To Comapny&nbsp; ::</td>
                    </tr>
                    <tr>
                        <td style="text-align: left">
                            <asp:TextBox ID="txtnm" runat="server" CssClass="txtt"></asp:TextBox>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <span style="font-size: 10pt">
                        <td>
                            <asp:TextBox ID="txtmessage" runat="server" TextMode="MultiLine" Rows="4" 
                                Width="230px"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                            ControlToValidate="txtmessage" ErrorMessage="Enter Message"></asp:RequiredFieldValidator>
                        </td>
                        </span>
                    </tr>
                    <tr>
                        <span style="font-size: 10pt">
                        <td style="text-align: left">
                       
                            <asp:Button ID="btnsend" runat="server" onclick="btnsend_Click" Text="Send" 
                                CssClass="btn" Width="76px" Height="21px" />
                       
                        </td>
                        <td>
                            &nbsp;</td>
                        </span>
                    </tr>
                    <tr>
                        <span style="font-size: 10pt">
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        </span>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>

