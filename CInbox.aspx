<%@ Page Language="C#" MasterPageFile="~/CLogin.master" AutoEventWireup="true" CodeFile="CInbox.aspx.cs" Inherits="CInbox" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="tbl">
        <tr>
            <td class="tblhead">
                Company Inbox(<asp:Label ID="lblinbox" runat="server"></asp:Label>
                )</td>
        </tr>
        <tr>
            <td>
                            <asp:LinkButton ID="lnkbtnCheck" runat="server" Font-Bold="True" 
                                ForeColor="#003300" onclick="lnkbtnCheck_Click" 
                    Visible="False">Check</asp:LinkButton>
                            <asp:LinkButton ID="LinkButton2" runat="server" Font-Bold="True" 
                                ForeColor="Red" onclick="LinkButton2_Click" Visible="False">Delete All</asp:LinkButton>
                            <asp:Label ID="lblmsg" runat="server"></asp:Label>
                        </td>
        </tr>
        <tr>
            <td align="center">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" 
                    CellPadding="2" Width="516px" onrowcommand="GridView1_RowCommand">
                    <FooterStyle BackColor="White" ForeColor="#000066" />
                    <RowStyle ForeColor="#000066" />
                    <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                    <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                    <Columns>
                       
                        <asp:BoundField DataField="Name" HeaderText="FromName" />
                        <asp:BoundField DataField="Message" HeaderText="Message" />
                        <asp:BoundField DataField="EntryDate" HeaderText="RecevieDate" />
                        <asp:TemplateField HeaderText="Reply">
                            <ItemTemplate>
                                <asp:LinkButton ID="lnkread" runat="server" CommandArgument='<%#Eval("From") %>' 
                                    CommandName="reply" ForeColor="Green" Text="Reply"></asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Delete">
                            <ItemTemplate>
                                <asp:LinkButton ID="lnkdel" runat="server" CommandArgument='<%#Eval("TO") %>' 
                                    CommandName="del" ForeColor="Red" Text="Delete"></asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
            </td>
        </tr>
        <tr>
            <td valign="top">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

