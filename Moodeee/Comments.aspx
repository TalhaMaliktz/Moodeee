<%@ Page Title="Comments" Language="C#" MasterPageFile="~/HomeMaster.Master" AutoEventWireup="true" EnableEventValidation="false" CodeBehind="Comments.aspx.cs" Inherits="Moodeee.Comments" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
            <div class="banner two">
    </div>
    <div class="contact">
        <div class="container">
            <h3 class="tittle">Comments</h3>
            <div class="lcontact span_1_of_contact">
                <div class="contact-form">

                    <asp:Panel ID="Panel1" runat="server" DefaultButton="btnSubmit">
                        <p>
                            Please Fill the Following to add a comment.
                        </p>
                        <p>
                            Your name:
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ErrorMessage="*"
                            ControlToValidate="Name" ValidationGroup="save" /><br />
                            <asp:TextBox ID="Name" runat="server" Width="250px" /><br />
                            Your email address:
                       <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*"
                           ControlToValidate="Email" ValidationGroup="save" /><br />
                            <asp:TextBox ID="Email" runat="server" Width="250px" />
                            <asp:RegularExpressionValidator runat="server" ID="RegularExpressionValidator23"
                                SetFocusOnError="true" Text="Example: username@gmail.com" ControlToValidate="Email"
                                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Display="Dynamic"
                                ValidationGroup="save" /><br />
                            Your Comments:
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*"
                                ControlToValidate="Comment" ValidationGroup="save" /><br />
                            <asp:TextBox ID="Comment" runat="server"
                                TextMode="MultiLine" Rows="10" Width="400px" />
                        </p>
                        <p>
                            <asp:Button ID="btnSubmit" runat="server" Text="Add Comment"
                                OnClick="AddComment" ValidationGroup="save" />
                        </p>
                    </asp:Panel>
                    <p>
                        <asp:Label ID="DisplayMessage" runat="server" Visible="false" />
                    </p>

                </div>

                <asp:Repeater ID="rptComments" runat="server">
                    
                    <ItemTemplate>
                       <br />
                        <table class="table-bordered table-condensed">
                            <tr>
                                <td>
                                    <b>Name</b>
                                </td>
                                <td style="padding-left: 20px;" class="f-text">
                                    <asp:Label ID="lblName" runat="server" Text='<%# Eval("Name") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <b>Email</b>
                                </td>
                                <td style="padding-left: 20px;" >
                                    <asp:Label ID="lblEmail" runat="server" Text='<%# Eval("Email") %>'></asp:Label>
                                </td>
                            </tr>
                            <td>
                                <b>Comment</b>
                            </td>
                            <td style="padding-left: 20px;">
                                <asp:Label ID="lblCommentBody" runat="server" Text='<%# Eval("CommentBody") %>'></asp:Label>
                            </td>
                        </table>
                    </ItemTemplate>
                </asp:Repeater>
            </div>
        </div>
    </div>
</asp:Content>
