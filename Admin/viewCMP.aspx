<%@ Page Language="C#" MasterPageFile="~/Admin/ADMIN.master" AutoEventWireup="true" CodeFile="viewCMP.aspx.cs" Inherits="Admin_viewCMP" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table class="tbl">
        <tr>
            <td class="tblhead">
                Company List</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lbl" runat="server" CssClass="lbl"></asp:Label>
            </td>
        </tr>
        <tr>
            <td align="center">
    <asp:GridView ID="GridView1" runat="server" CellPadding="4" 
    GridLines="Horizontal" AutoGenerateColumns="False" BackColor="White" BorderColor="#336666" 
                    BorderStyle="Double" BorderWidth="3px" Width="520px" 
                    onrowcommand="GridView1_RowCommand">
    <RowStyle BackColor="White" ForeColor="#333333" />
    <Columns>
     
        <asp:BoundField DataField="CName" HeaderText="Company Name" />
        <asp:BoundField DataField="Website" HeaderText="Website" />
        <asp:BoundField DataField="EmailId" HeaderText="Email Id" />
        <asp:BoundField DataField="Address" HeaderText="Address" />
        <asp:TemplateField HeaderText="View">
        <ItemTemplate>
        <asp:LinkButton ID="lnkcview" runat="server" Text="View Detail" CommandArgument='<%# Eval("cid") %>'></asp:LinkButton>
        </ItemTemplate>
        </asp:TemplateField>
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

