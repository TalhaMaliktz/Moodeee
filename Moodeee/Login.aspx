<%@ Page Title="Login To Moodeee!" Language="C#" MasterPageFile="~/Authentication.Master" EnableEventValidation="false" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Moodeee.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!--contact-->
    <div class="contact">
        <div class="container">

            <h3 class="tittle">Sign in</h3>
            <p class="tittle">&nbsp;</p>
            <p class="tittle">&nbsp;</p>
            <div class="contact_grid span_2_of_contact_right">
                <div>
                    <form method="post">
                        <asp:Login ID="Login1" runat="server" OnAuthenticate="ValidateUser" CssClass="form-group" TitleText="" DestinationPageUrl="~/Home.aspx" BackColor="#F7F6F3" BorderColor="#E6E2D8" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" BorderPadding="4" ForeColor="#333333">
                            <InstructionTextStyle Font-Italic="True" ForeColor="Black" />
                            <LoginButtonStyle BackColor="#FFFBFF" BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#284775" />
                            <TextBoxStyle Font-Size="0.8em" />
                            <TitleTextStyle BackColor="#5D7B9D" Font-Bold="True" Font-Size="0.9em" ForeColor="White" />
                        </asp:Login>
                        <label style="padding-top: 1em; padding-bottom: 1em;">
                            <a href="SignUp.aspx">Don't have an account ? Click to SignUp!</a>
                        </label>
                    </form>
                </div>

                <div class="clearfix"></div>
            </div>

            <div class="clearfix"></div>

        </div>
    </div>
</asp:Content>

