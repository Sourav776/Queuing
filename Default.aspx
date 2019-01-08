<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <table style="font-family: Arial; border: 1px solid black; text-align: center">
                <tr>
                    <td>Counter 1</td>
                    <td></td>
                    <td>Counter 2</td>
                    <td></td>
                    <td>Counter 3</td>
                </tr>
                <tr>
                    <td>
                        <asp:TextBox ID="Counter1_TB" runat="server" Width="250px"></asp:TextBox>

                    </td>
                    <td></td>
                    <td>
                        <asp:TextBox ID="Counter2_TB" runat="server" Width="250px"></asp:TextBox>
                    </td>
                    <td></td>
                    <td>
                        <asp:TextBox ID="Counter3_TB" runat="server" Width="250px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="Counter1_btn" runat="server" Text="Next" OnClick="Counter1_btn_Click" Width="125px" ForeColor="#006600" />

                    </td>
                    <td></td>
                    <td>
                        <asp:Button ID="Counter2_btn" runat="server" Text="Next" OnClick="Counter2_btn_Click" Width="125px" ForeColor="#006600" />
                    </td>
                    <td></td>
                    <td>
                        <asp:Button ID="Counter3_btn" runat="server" Text="Next" OnClick="Counter3_btn_Click" Width="125px" ForeColor="#006600" />
                    </td>
                </tr>
                <tr>
                    <td colspan="5">
                        <br />
                        <asp:TextBox ID="Display_TB" runat="server" Width="550px" ForeColor="#FF66CC"></asp:TextBox>
                        <br />
                        <br />
                    </td>
                </tr>
                <tr>
                    <td colspan="5">
                        <asp:ListBox ID="ListTokens" runat="server" Width="250px" Height="80px"></asp:ListBox>
                        <br />
                    </td>
                </tr>
                <tr>
                    <td colspan="5">
                        <asp:Button ID="Collect_Token" runat="server" Text="Collect Token" OnClick="Collect_Token_Click" ForeColor="#009900" />
                    </td>
                </tr>
                                
            </table>
            <asp:Label ID="Message_LBL" runat="server" Width="550px" ForeColor="#006600"></asp:Label>
            <br />
        </div>
        <br />
    </form>
    <br />
</body>
</html>
