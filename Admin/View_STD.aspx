<%@ Page Language="C#" MasterPageFile="~/Admin/ADMIN.master" AutoEventWireup="true" CodeFile="View_STD.aspx.cs" Inherits="Admin_View_STD" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table class="tbl">
        <tr>
            <td class="tblhead">
                Student List</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td align="center">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
    BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" 
    CellPadding="4" GridLines="Horizontal" Width="500px">
        <RowStyle BackColor="White" ForeColor="#333333" />
        <Columns>
           
            <asp:BoundField DataField="EnrollNo" HeaderText="EnrollmentNo" />
            <asp:BoundField DataField="Branch" HeaderText="Branch" />
            
            <asp:BoundField DataField="semester" HeaderText="Semester" />
            <asp:BoundField DataField="CPI" HeaderText="CPI" />
            <asp:BoundField DataField="Skill" HeaderText="Skill" />
            
        </Columns>
        <FooterStyle BackColor="White" ForeColor="#333333" />
        <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F7F7F7" />
        <SortedAscendingHeaderStyle BackColor="#487575" />
        <SortedDescendingCellStyle BackColor="#E5E5E5" />
        <SortedDescendingHeaderStyle BackColor="#275353" />
    </asp:GridView>
            </td>
        </tr>
    </table>
</asp:Content>

