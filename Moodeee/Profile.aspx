<%@ Page Title="Your Profile" Language="C#" MasterPageFile="~/HomeMaster.Master" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="Moodeee.Profile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="banner two">
    </div>
    <div class="contact">
        <div class="container">
            <h3 class="tittle">Welcome, To your Profile</h3>
            <br />
            <h4 class="text-justify">Please Upload an Image of Yours</h4>
            <br />

            <div class="lcontact span_1_of_contact">
                <div class="contact-form">
                    <asp:FileUpload ID="FileUpload1" runat="server" Width="240px" />
                    <asp:Button ID="btnUpload" runat="server" Text="Upload" OnClick="btnUpload_Click" class="button play-icon popup-with-zoom-anim" />
                    <hr />
                    <br />
                    <asp:Image CssClass="img-thumbnail" Width="240px" ID="Image1" runat="server"  />
                </div>


                <asp:Repeater ID="rptComments" runat="server">
                    <ItemTemplate>
                        <br />
                        <table class="table-condensed">
                            <tr>
                                <b>About You:</b>
                            </tr>
                            <td style="padding-left: 20px;">
                                <asp:Label ID="lblCommentBody" runat="server" Text='<%# Eval("Bio") %>'></asp:Label>
                            </td>
                        </table>
                    </ItemTemplate>

                </asp:Repeater>

            </div>
            <div class="span_2_of_contact_right">
                
                                    <br />
   
                    Tell Us About Your Self:
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*"
                                ControlToValidate="Comment" ValidationGroup="save" /><br />
                    <asp:TextBox ID="Comment" runat="server"
                        TextMode="MultiLine" Rows="10" Width="400px" />
      

                    <asp:Button ID="btnSubmit" runat="server" Text="Update Info"
                        OnClick="AddBio" ValidationGroup="save"  CssClass="button" />
  


                </div>
            </div>
        </div>


</asp:Content>
