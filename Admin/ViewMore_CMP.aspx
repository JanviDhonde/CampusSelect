<%@ Page Language="C#" MasterPageFile="~/Admin/ADMIN.master" AutoEventWireup="true" CodeFile="ViewMore_CMP.aspx.cs" Inherits="Admin_ViewMore_STD" Title="Untitled Page" %>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <style type="text/css">

        .style3
        {
            width: 3px;
        }
       
        
      
        
        .style9
        {
            width: 159px;
        }
        .style11
        {
            width: 3px;
            text-align: left;
        }
       
        
      
        
        </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table class="tbl">
        <tr>
            <td class="tblhead">
                Company Name :
                <asp:Label ID="lblCompanyName0" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <table align="center" cellspacing="5" class="tbl">
                    <tr>
                        <td  colspan="4" align="center">
                            <asp:Label ID="lblApply" runat="server" CssClass="lblError"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                                                                   <td class="lbl">
                                                                       Company Name :</td>
                                                                   <td class="style11" style="margin-left: 80px" colspan="3">
                                                                       <asp:Label ID="lblCompanyName" runat="server"></asp:Label>
                                                                   </td>
                                                               </tr>
                                                               <tr>
                                                                   <td class="lbl">
                            Category :
                        </td>
                        <td class="style11" style="margin-left: 80px" colspan="3">
                            <asp:Label ID="lblCategory" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="lbl">
                            Role :
                        </td>
                        <td class="style11" colspan="3">
                            <asp:Label ID="lblRole" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="lbl">
                            Min Qualification :
                        </td>
                        <td class="style11" style="margin-left: 80px" colspan="3">
                            <asp:Label ID="lblMinQualification" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="lbl">
                            Required Skill :
                        </td>
                        <td class="style11" style="margin-left: 40px" colspan="3">
                            <asp:Label ID="lblSkill" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr class="lbl">
                        <td class="lbl">
                            Extra Skill :
                        </td>
                        <td class="style11" style="margin-left: 40px; " colspan="3">
                            <asp:Label ID="lblExtraSkill" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="lbl">
                            Max. Age :</td>
                        <td class="style11" style="margin-left: 40px" colspan="3">
                            <asp:Label ID="lblAge" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="lbl">
                            Job Location :
                        </td>
                        <td class="style11" colspan="3">
                            <asp:Label ID="lblJobLocation" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="lbl">
                            Salary :
                        </td>
                        <td colspan="3" class="style11">
                            <asp:Label ID="lblMinSalary" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="lbl">
                            Working Hour&nbsp; :</td>
                        <td class="style11" colspan="3">
                            <asp:Label ID="lblWorkingHour" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="lbl">
                            Desription :
                        </td>
                        <td class="style11" colspan="3">
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
                        <td class="style3" align="left" >
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style9">
                            &nbsp;</td>
                        <td class="style3" colspan="3">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style9">
                        </td>
                        <td class="style5" colspan="3">
                            &nbsp;</td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>

