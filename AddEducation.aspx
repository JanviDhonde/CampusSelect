﻿<%@ Page Language="C#" MasterPageFile="~/Home.master" AutoEventWireup="true" CodeFile="AddEducation.aspx.cs" Inherits="AddEducation" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        
        
        .style7
        {
            text-align: right;
            font-family: Calibri;
            font-size: 14px;
            font-weight: bold;
            color: #002D00;
            width: 104px;
        }
        .style8
        {
            width: 104px;
        }

        
        
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="tbl">
        <tr>
            <td class="tblhead">
                Add Education Details ::-</td>
        </tr>
        <tr>
            <td>
                <table align="center">
                    <tr>
                        <td class="lbl">
                            College Name :</td>
                        <td>
                            <asp:TextBox ID="txtclgname" runat="server" CssClass="txtt"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RFRCname" runat="server" 
                                ControlToValidate="txtclgname" ErrorMessage="!!!"></asp:RequiredFieldValidator>
                                                                   </td>
                    </tr>
                    <tr>
                        <td class="lbl">
                            Enrll No :</td>
                        <td>
                            <asp:TextBox ID="txtErlno" runat="server" CssClass="txtt" ReadOnly="True"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                ControlToValidate="txtErlno" ErrorMessage="!!!"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="lbl">
                            semester</td>
                        <td>
                            <asp:DropDownList ID="drpsem" runat="server" CssClass="txtt">
                                <asp:ListItem>SELECT</asp:ListItem>
                                <asp:ListItem>4th Sem</asp:ListItem>
                                <asp:ListItem>5th Sem</asp:ListItem>
                                <asp:ListItem>6th Sem</asp:ListItem>
                                <asp:ListItem>7th Sem</asp:ListItem>
                                <asp:ListItem>8th Sem</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td>
                            <asp:Label ID="lblsem" runat="server" CssClass="lblError"></asp:Label>
                                                                   </td>
                    </tr>
                    <tr>
                        <td class="lbl">
                            Education :</td>
                        <td>
                            <asp:DropDownList ID="drpEdu" runat="server" CssClass="txtt">
                                <asp:ListItem>-SELECT-</asp:ListItem>
                                <asp:ListItem>Deploma</asp:ListItem>
                                <asp:ListItem>BE/BTech</asp:ListItem>
                                <asp:ListItem>ME/MTech</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td>
                            <asp:Label ID="lblEdu" runat="server" CssClass="lblError"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="lbl">
                            Branch :</td>
                        <td>
                            <asp:DropDownList ID="drpBranch" runat="server" CssClass="txtt">
                                <asp:ListItem>SELECT</asp:ListItem>
                                <asp:ListItem>IT</asp:ListItem>
                                <asp:ListItem>COMPUTER</asp:ListItem>
                                <asp:ListItem>MECHANICAL</asp:ListItem>
                                <asp:ListItem>EC</asp:ListItem>
                                <asp:ListItem>CIVIL</asp:ListItem>
                                <asp:ListItem>AUTOMOBILE</asp:ListItem>
                                <asp:ListItem>ELETRICAL</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td>
                            <asp:Label ID="lblBranch" runat="server" CssClass="lblError"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="lbl">
                            Passing year :</td>
                        <td>
                            <asp:DropDownList ID="drpPassyear" runat="server" CssClass="txtt">
                                <asp:ListItem>SELECT</asp:ListItem>
                                <asp:ListItem>2007</asp:ListItem>
                                <asp:ListItem>2008</asp:ListItem>
                                <asp:ListItem>2009</asp:ListItem>
                                <asp:ListItem>2010</asp:ListItem>
                                <asp:ListItem>2011</asp:ListItem>
                                <asp:ListItem>2012</asp:ListItem>
                                <asp:ListItem>2013</asp:ListItem>
                                <asp:ListItem>2014</asp:ListItem>
                                <asp:ListItem>2015</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td>
                            <asp:Label ID="lblPassyr" runat="server" CssClass="lblError"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="lbl">
                            CPI :</td>
                        <td>
                            <asp:TextBox ID="txtCPI" runat="server" CssClass="txtt"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                ControlToValidate="txtclgname" ErrorMessage="!!!"></asp:RequiredFieldValidator>
                            <asp:RangeValidator ID="RangeValidator1" runat="server" 
                                ControlToValidate="txtCPI" ErrorMessage="Enter Digit" MaximumValue="10.00" 
                                MinimumValue="4.50" SetFocusOnError="True" Type="Double"></asp:RangeValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="lbl">
                            CGPA :</td>
                        <td>
                            <asp:TextBox ID="txtCGPA" runat="server" CssClass="txtt"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                ControlToValidate="txtclgname" ErrorMessage="!!!"></asp:RequiredFieldValidator>
                            <asp:RangeValidator ID="RangeValidator2" runat="server" 
                                ControlToValidate="txtCGPA" ErrorMessage="Enter Digit" MaximumValue="10.00" 
                                MinimumValue="4.50" SetFocusOnError="True" Type="Double"></asp:RangeValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="lbl">
                            Skill :</td>
                        <td>
                                                   <asp:DropDownList ID="drpreqskill" runat="server" CssClass="txtt">
                                                       <asp:ListItem>SELECT</asp:ListItem>
                                                       <asp:ListItem>.NET</asp:ListItem>
                                                       <asp:ListItem>AJAX</asp:ListItem>
                                                       <asp:ListItem>ANDROID</asp:ListItem>
                                                       <asp:ListItem>PHP</asp:ListItem>
                                                       <asp:ListItem>JAVA</asp:ListItem>
                                                       <asp:ListItem>JAVASCRIPT</asp:ListItem>
                                                       <asp:ListItem>APPLE iOS</asp:ListItem>
                                                       <asp:ListItem>AUTO CAD</asp:ListItem>
                                                       <asp:ListItem>C</asp:ListItem>
                                                       <asp:ListItem>C#</asp:ListItem>
                                                       <asp:ListItem>c++</asp:ListItem>
                                                       <asp:ListItem>C# .NET</asp:ListItem>
                                                       <asp:ListItem>CAD/CAM</asp:ListItem>
                                                       <asp:ListItem>CSS</asp:ListItem>
                                                       <asp:ListItem>Dreamviewer</asp:ListItem>
                                                       <asp:ListItem>DBMS</asp:ListItem>
                                                   </asp:DropDownList>
                        </td>
                        <td>
                            <asp:Label ID="lblSkill" runat="server" CssClass="lblError"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="lbl">
                            Extra Skill :</td>
                        <td>
                            <asp:TextBox ID="txtExSkill" runat="server" CssClass="txtt"></asp:TextBox>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="lbl">
                            Resume :</td>
                        <td class="style12">
                            <asp:FileUpload ID="FUResume" runat="server" CssClass="txtt" Width="182px" />
                        </td>
                        <td>
                            <asp:Label ID="lblResume" runat="server" CssClass="lblError"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="style8">
                            &nbsp;</td>
                        <td class="style13">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style8">
                            &nbsp;</td>
                        <td class="style13">
                            <asp:Button ID="btnsbmit" runat="server" CssClass="btn" 
                                onclick="btnsbmit_Click" Text="Submit" />
                        </td>
                        <td>
                            <asp:Label ID="lblmsg" runat="server" CssClass="lblError"></asp:Label>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>

