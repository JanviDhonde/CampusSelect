<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/ADMIN.master" AutoEventWireup="true" CodeFile="AddAdmin.aspx.cs" Inherits="Admin_AddAdmin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <style type="text/css">
        .style7
        {
            text-align: left;
            width: 170px;
        }
        .style8
        {
            width: 170px;
            text-align: left;
        }
        .style9
        {
            text-align: left;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table class="tbl">
        <tr>
            <td class="tblhead">
                ADD NEW ADMIN</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
               <table class="style1">
                   <tr>
                       <td width="700" valign="top" align="center">
                           <table align="center" class="tbl">
                               <tr>
                                   <td align="center" class="tblhead" colspan="3">
                                       Generate New Username and Password</td>
                               </tr>
                               <tr>
                                   <td align="center" colspan="3">
                                       &nbsp;</td>
                               </tr>
                               <tr>
                                   <td class="lbl">
                                       Name :                                    </td>
                                   <td style="margin-left: 80px" class="style7">
                                       <asp:TextBox ID="txtName" runat="server" CssClass="txtt"></asp:TextBox>
                                   </td>
                                   <td class="style9">
                                       <asp:RequiredFieldValidator ID="RequiredFieldValidatorName" runat="server" 
                                           ControlToValidate="txtName" ErrorMessage="Enter Name"></asp:RequiredFieldValidator>
                                   </td>
                               </tr>
                               <tr>
                                   <td class="lbl">
                                       Email Id :
                                   </td>
                                   <td style="margin-left: 80px" class="style7">
                                       <asp:TextBox ID="txtEmailId" runat="server" CssClass="txtt"></asp:TextBox>
                                   </td>
                                   <td class="style9">
                                       <asp:RequiredFieldValidator ID="RequiredFieldValidatorEid" runat="server" 
                                           ControlToValidate="txtEmailId" ErrorMessage="Enter your Emal Id"></asp:RequiredFieldValidator>
                                   </td>
                               </tr>
                               <tr>
                                   <td class="lbl">
                                       Mobile Number :
                                   </td>
                                   <td class="style7">
                                       <asp:TextBox ID="txtMoNo" runat="server" CssClass="txtt"></asp:TextBox>
                                   </td>
                                   <td class="style9">
                                       <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                           ControlToValidate="txtMoNo" ErrorMessage="Enter Mobile Number"></asp:RequiredFieldValidator>
                                   </td>
                               </tr>
                               <tr>
                                   <td class="lbl">
                                       Username :
                                   </td>
                                   <td style="margin-left: 80px" class="style7">
                                       <asp:TextBox ID="txtUname" runat="server" CssClass="txtt"></asp:TextBox>
                                   </td>
                                   <td class="style9">
                                       <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                           ControlToValidate="txtUname" ErrorMessage="Enter Username"></asp:RequiredFieldValidator>
                                   </td>
                               </tr>
                               <tr>
                                   <td class="lbl">
                                       Password :
                                   </td>
                                   <td class="style7">
                                       <asp:TextBox ID="txtPass" runat="server" CssClass="txtt"></asp:TextBox>
                                   </td>
                                   <td class="style9">
                                       <asp:RequiredFieldValidator ID="RequiredFieldValidatorPass" runat="server" 
                                           ControlToValidate="txtPass" ErrorMessage="Enter Password"></asp:RequiredFieldValidator>
                                   </td>
                               </tr>
                               <tr>
                                   <td class="lbl">
                                       Confirm Password :
                                   </td>
                                   <td class="style7">
                                       <asp:TextBox ID="txtConfPass" runat="server" CssClass="txtt"></asp:TextBox>
                                   </td>
                                   <td class="style9">
                                       <asp:RequiredFieldValidator ID="RequiredFieldValidatoConfPass" runat="server" 
                                           ControlToValidate="txtConfPass" ErrorMessage="Confirm Password"></asp:RequiredFieldValidator>
                                       <br />
                                       <asp:CompareValidator ID="CompareValidator1" runat="server" 
                                           ControlToCompare="txtPass" ControlToValidate="txtConfPass" 
                                           ErrorMessage="Password Not match"></asp:CompareValidator>
                                   </td>
                               </tr>
                               <tr>
                                   <td>
                                       &nbsp;</td>
                                   <td class="style8">
                                       <asp:Button ID="btnCreate" runat="server" onclick="btnCreate_Click" 
                                           Text="ADD " CssClass="btn" Width="100px" />
                                   </td>
                                   <td>
                                       &nbsp;</td>
                               </tr>
                               <tr>
                                   <td>
                                       &nbsp;</td>
                                   <td align="center" class="style8">
                                       <asp:Label ID="lblCreate" runat="server"></asp:Label>
                                   </td>
                                   <td>
                                       &nbsp;</td>
                               </tr>
                               <tr>
                                   <td>
                                       &nbsp;</td>
                                   <td align="center" class="style8">
                                       &nbsp;</td>
                                   <td>
                                       &nbsp;</td>
                               </tr>
                               <tr>
                                   <td colspan="3">
                                       <asp:GridView ID="gvadmin" runat="server" AutoGenerateColumns="False" 
                                           BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" 
                                           CellPadding="4" GridLines="Horizontal" AutoGenerateDeleteButton="True" 
                                           DataKeyNames="aid" onrowdeleting="gvadmin_RowDeleting">
                                       <Columns>
                                       <asp:BoundField HeaderText="Name" DataField="Name" >
                                           <ItemStyle Width="100px" />
                                           </asp:BoundField>
                                        <asp:BoundField HeaderText="Mobile" DataField="mobilno" >
                                           <ItemStyle Width="70px" />
                                           </asp:BoundField>
                                         <asp:BoundField HeaderText="Email" DataField="emailid" >
                                           <ItemStyle Width="140px" />
                                           </asp:BoundField>
                                          <asp:BoundField HeaderText="UserName" DataField="username" >
                                           <ItemStyle Width="80px" />
                                           </asp:BoundField>
                                           <asp:BoundField HeaderText="Password" DataField="password" >
                                           <ItemStyle Width="80px" />
                                           </asp:BoundField>
                                           
                                       </Columns>
                                           <FooterStyle BackColor="White" ForeColor="#333333" />
                                           <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
                                           <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
                                           <RowStyle BackColor="White" ForeColor="#333333" />
                                           <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
                                           <SortedAscendingCellStyle BackColor="#F7F7F7" />
                                           <SortedAscendingHeaderStyle BackColor="#487575" />
                                           <SortedDescendingCellStyle BackColor="#E5E5E5" />
                                           <SortedDescendingHeaderStyle BackColor="#275353" />
                                       </asp:GridView>
                                   </td>
                               </tr>
                               </table>
                       </td>
                   </tr>
               </table>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

