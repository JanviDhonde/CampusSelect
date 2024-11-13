<%@ Page Language="C#" MasterPageFile="~/CLogin.master" AutoEventWireup="true" CodeFile="ADDQuestion.aspx.cs" Inherits="ADDQuestion" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style8
        {
            text-align: left;
        }
      
        .style9
        {
            text-align: right;
            font-family: Amaranth;
            font-size: large;
            font-weight: bold;
            color: #333333;
            height: 24px;
        }
        .style10
        {
            text-align: left;
            height: 24px;
        }
      
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="tbl">
        <tr>
            <td style="width: 254px">
                <asp:Button ID="btnQpaper" runat="server" CssClass="lnk" Text="QPaper" 
                    onclick="btnQpaper_Click" CausesValidation="False" />
            </td>
            <td align="left">
                <asp:Button ID="btnQstion" runat="server" CssClass="lnk" Text="Add Question" 
                    onclick="btnQstion_Click" CausesValidation="False" />
            </td>
            <td>
                                                           &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 254px">
                &nbsp;</td>
            <td colspan="2">
                                                           &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 254px">
                &nbsp;</td>
            <td colspan="2">
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="3">
                <table class="tbl">
                    <tr>
                        <td class="lbll">
                            Question Paper&nbsp; :</td>
                        <td class="style8">
                            <asp:DropDownList ID="drpQpapername" runat="server" CssClass="txtt" 
                                AutoPostBack="True" onselectedindexchanged="drpQpapername_SelectedIndexChanged">
                            </asp:DropDownList>
                            <asp:Label ID="lblmsg" runat="server" ForeColor="Red"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="lbll">
                            Serial No.&nbsp;&nbsp; :</td>
                        <td class="style8">
                            <asp:TextBox ID="txtserial" runat="server" CssClass="txtt" ReadOnly="True"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                ControlToValidate="txtserial" ErrorMessage="!!" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="lbll">
                            Question&nbsp;&nbsp; :</td>
                        <td class="style8">
                            <asp:TextBox ID="txtquestion" runat="server" CssClass="txtt"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="lbll">
                            Answer_a&nbsp; :</td>
                        <td class="style8">
                            <asp:TextBox ID="txta" runat="server" CssClass="txtt"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="lbll">
                            Answer_b&nbsp; :</td>
                        <td class="style8">
                            <asp:TextBox ID="txtb" runat="server" CssClass="txtt"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="lbll">
                            Answer_c&nbsp; :</td>
                        <td class="style8">
                            <asp:TextBox ID="txtc" runat="server" CssClass="txtt"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="style9">
                            Ans&nbsp; :</td>
                        <td class="style10">
                            <asp:DropDownList ID="DropDownListkey" runat="server" CssClass="txtt">
                                <asp:ListItem>A</asp:ListItem>
                                <asp:ListItem>B</asp:ListItem>
                                <asp:ListItem>C</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td class="style10">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <asp:Button ID="btnaddquestion" runat="server" CssClass="btn" 
                                Text="ADD QUESTION" onclick="btnaddquestion_Click" />
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <asp:GridView ID="GridViewADDQuestion" runat="server" 
                                AutoGenerateColumns="False" onrowcommand="GridViewADDQuestion_RowCommand" 
                                BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" 
                                CellPadding="4" GridLines="Horizontal" Width="100%">
                                <RowStyle BackColor="White" ForeColor="#333333" />
                                <Columns>
                                    <asp:BoundField DataField="QPaperName" HeaderText="QPaper" />
                                                                       <asp:BoundField DataField="SerialNo" HeaderText="Serial No." />
                                    <asp:BoundField DataField="Quations" HeaderText="Question Name" />
                                    <asp:BoundField Datafield="Ans_A" HeaderText="Ans A" />
                                    <asp:BoundField DataField="Ans_B" HeaderText="Ans B" />
                                    <asp:BoundField DataField="Ans_C" HeaderText="Ans C" />
                                   
                                    <asp:BoundField Datafield="RightAns" HeaderText="Answer" />
                                    <asp:TemplateField HeaderText="Delete">
                                        <ItemTemplate>
                                            <asp:LinkButton ID="mkdelete" runat="server" 
                                                CommandArgument='<%#Eval("QID") %>' CommandName="del" Text="DELETE" CausesValidation="false"></asp:LinkButton>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                </Columns>
                                <FooterStyle BackColor="White" ForeColor="#333333" />
                                <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
                                <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
                                <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
                            </asp:GridView>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td colspan="3">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

