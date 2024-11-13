<%@ Page Language="C#" MasterPageFile="~/SLogin.master" AutoEventWireup="true" CodeFile="OnlineExam.aspx.cs" Inherits="OnlineExam" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="tbl">
        <tr>
            <td class="tblhead">
                Select Question Paper
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lbl" runat="server" CssClass="lbl"></asp:Label>
            </td>
        </tr>
        <tr>
            <td align="center">
                <asp:GridView ID="gvexam" runat="server" BackColor="White" 
                    BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" 
                    GridLines="Horizontal" AutoGenerateColumns="False" 
                    onrowcommand="gvexam_RowCommand" Width="540px">
                    <FooterStyle BackColor="White" ForeColor="#333333" />
                    <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="White" ForeColor="#333333" BorderColor="#006600" 
                        BorderStyle="Solid" BorderWidth="1px" />
                    <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F7F7F7" />
                    <SortedAscendingHeaderStyle BackColor="#487575" />
                    <SortedDescendingCellStyle BackColor="#E5E5E5" />
                    <SortedDescendingHeaderStyle BackColor="#275353" />
                    <Columns>
                    <asp:BoundField HeaderText="Question Paper" DataField="QPaperName" 
                            ItemStyle-Width="200px" >
<ItemStyle Width="200px"></ItemStyle>
                        </asp:BoundField>
                    <asp:BoundField HeaderText="Company Name" DataField="CompanyName" 
                            ItemStyle-Width="200px">
<ItemStyle Width="200px"></ItemStyle>
                        </asp:BoundField>
                    <asp:TemplateField HeaderText="Exam">
                    <ItemTemplate>
                    <asp:LinkButton runat="server" Text="Start Exam" ForeColor="Green" ID="lnkstartexam" CommandArgument='<%#Eval("QPID")%>' CommandName="qpaper" ></asp:LinkButton>
                    </ItemTemplate>
                    </asp:TemplateField>
                    </Columns>
                </asp:GridView>
                <br />
            </td>
        </tr>
    </table>
</asp:Content>

