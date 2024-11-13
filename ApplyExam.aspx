<%@ Page Language="C#" MasterPageFile="~/SLogin.master" AutoEventWireup="true" CodeFile="ApplyExam.aspx.cs" Inherits="onlineExam" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style7
        {
            width: 114px;
        }
        .style8
        {
            width: 358px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="tbl">
        <tr>
            <td align="center" class="tblhead">
                Online Exam</td>
        </tr>
        <tr>
            <td align="center">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    CellPadding="4" ForeColor="#333333" GridLines="None" 
                    PageSize="1" BorderColor="#006600" BorderStyle="Solid" BorderWidth="1px" 
                    Height="238px">
                    <AlternatingRowStyle BackColor="White" />
                <Columns>
                <asp:BoundField HeaderText="Question" DataField="Quations" ItemStyle-Width="400px" ItemStyle-HorizontalAlign="Left" />
                <asp:BoundField HeaderText="Answer A" DataField="ans_a" />
                  <asp:BoundField HeaderText="Answer B" DataField="ans_b" />
                    <asp:BoundField HeaderText="Answer C" DataField="ans_c" />
                    
                <asp:TemplateField HeaderText="Answer">
                <ItemTemplate>
               
               <asp:DropDownList runat="server" ID="drpans" Width="50px">
               <asp:ListItem>A</asp:ListItem>
               <asp:ListItem>B</asp:ListItem>
<asp:ListItem>C</asp:ListItem>

               
               </asp:DropDownList>
                </ItemTemplate>
                </asp:TemplateField>

                </Columns>
                    <EditRowStyle BackColor="#7C6F57" />
                    <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <PagerSettings FirstPageText="Next" LastPageText="Finish" 
                        Mode="NextPreviousFirstLast" NextPageText="Next" />
                    <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#E3EAEB" />
                    <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F8FAFA" />
                    <SortedAscendingHeaderStyle BackColor="#246B61" />
                    <SortedDescendingCellStyle BackColor="#D4DFE1" />
                    <SortedDescendingHeaderStyle BackColor="#15524A" />
                </asp:GridView>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblmsg" runat="server" CssClass="lblerrorBig"></asp:Label>
&nbsp;
                </td>
        </tr>
        <tr>
            <td>
                <table class="style1">
                    <tr>
                        <td class="style7">
                <asp:Button ID="btnresult" runat="server" CssClass="btn" Font-Bold="True" 
                    Font-Size="16pt" Height="35px" onclick="btnresult_Click" Text="Result" 
                    Width="110px" />
                        </td>
                        <td class="style8" style="text-align: left">
                <asp:Label ID="lblresult" runat="server" Font-Bold="True" Font-Size="14pt" 
                    ForeColor="#660066"></asp:Label>
                        </td>
                        <td>
                <asp:Button ID="btnkey" runat="server" CssClass="btn" Font-Bold="False" 
                    Font-Size="14pt" Height="30px" onclick="btnkey_Click" Text="Answer Key" 
                    Width="120px" Visible="False" />
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
                    CellPadding="4" ForeColor="#333333" GridLines="None" 
                    PageSize="1" BorderColor="#006600" BorderStyle="Solid" BorderWidth="1px" 
                    Height="238px" Visible="False">
                    <AlternatingRowStyle BackColor="White" />
                <Columns>
                <asp:BoundField HeaderText="Question" DataField="Quations" ItemStyle-Width="400px" ItemStyle-HorizontalAlign="Left" />
                <asp:BoundField HeaderText="Answer A" DataField="ans_a" />
                  <asp:BoundField HeaderText="Answer B" DataField="ans_b" />
                    <asp:BoundField HeaderText="Answer C" DataField="ans_c" />
                    <asp:BoundField HeaderText="Right Answer" DataField="rightans" />
              

                </Columns>
                    <EditRowStyle BackColor="#7C6F57" />
                    <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <PagerSettings FirstPageText="Next" LastPageText="Finish" 
                        Mode="NextPreviousFirstLast" NextPageText="Next" />
                    <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#E3EAEB" />
                    <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F8FAFA" />
                    <SortedAscendingHeaderStyle BackColor="#246B61" />
                    <SortedDescendingCellStyle BackColor="#D4DFE1" />
                    <SortedDescendingHeaderStyle BackColor="#15524A" />
                </asp:GridView>
            </td>
        </tr>
    </table>
</asp:Content>

