<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/ADMIN.master" AutoEventWireup="true" CodeFile="Viewcompany.aspx.cs" Inherits="Admin_Viewcompany" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <style type="text/css">
        .style7
        {
            text-align: left;
        }
        .style8
        {
            width: 318px;
        }
        .style9
        {
            text-align: right;
            font-family: Calibri;
            font-size: 14px;
            font-weight: bold;
            color: #002D00;
            width: 318px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table class="tbl">
        <tr>
            <td class="tblhead" colspan="2">
                View Full Company Detail&nbsp; :
                <asp:Label ID="lblcopanyname" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style8">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
                Address :
            </td>
            <td class="style7">
                <asp:Label ID="lbladdress" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style9">
                City :
            </td>
            <td class="style7">
                <asp:Label ID="lblcity" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style9">
                State :
            </td>
            <td class="style7">
                <asp:Label ID="lblstate" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style9">
                Pincode :
            </td>
            <td class="style7">
                <asp:Label ID="lblpin" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style9">
                Contact Person :
            </td>
            <td class="style7">
                <asp:Label ID="lblcperson" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style9">
                Mobile No :
            </td>
            <td class="style7">
                <asp:Label ID="lblmobile" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style9">
                Email ID :
            </td>
            <td class="style7">
                <asp:Label ID="lblemail" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style9">
                Website :
            </td>
            <td class="style7">
                <asp:Label ID="lblwebsite" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style9">
                UserName :
            </td>
            <td class="style7">
                <asp:Label ID="lbluname" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style9">
                Password :
            </td>
            <td class="style7">
                <asp:Label ID="lblpassword" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style8">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style8">
                &nbsp;</td>
            <td style="text-align: left">
                <asp:Button ID="btnremove" runat="server" CssClass="btn" 
                    onclick="btnremove_Click" Text="Remove Account" />
            </td>
        </tr>
        <tr>
            <td class="style8">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

