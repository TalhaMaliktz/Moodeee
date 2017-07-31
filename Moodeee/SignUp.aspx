<%@ Page Title="Sign Up to Moodeee" Language="C#" MasterPageFile="~/Authentication.Master" EnableEventValidation="false" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="Moodeee.SignUp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="contact">
        <div class="container">
            <h3 class="tittle">Sign up</h3>
            <div class="lcontact span_1_of_contact">
                <div class="contact-form">
                    <form method="post" action="Home.aspx">

                        <p class="comment-form-author">
                            <label for="author">First Name:</label>
                            <asp:TextBox runat="server" id="FirstName" Cssclass="form-control" placeholder="Enter your First Name here..."></asp:TextBox>
                            <asp:RequiredFieldValidator  CssClass="text-danger" ID="RequiredFieldValidator1" runat="server" ControlToValidate="FirstName" ErrorMessage="*Please Enter Your First Name"></asp:RequiredFieldValidator>
                        </p>
                        <p class="comment-form-author">
                            <label for="author">Last Name:</label>
                             <asp:TextBox  runat="server" id="LastName" Cssclass="form-control" placeholder="Enter your Second Name here..." ></asp:TextBox>
                            <asp:RequiredFieldValidator CssClass="text-danger" ID="RequiredFieldValidator2" runat="server" ControlToValidate="LastName" ErrorMessage="*Please Enter Your Last Name"></asp:RequiredFieldValidator>
                            
                        </p>
                        <p class="comment-form-author">
                            <label for="author">Email:</label>
                             <asp:TextBox TextMode="Email" runat="server" id="Email" Cssclass="form-control" placeholder="Enter Your Email here..."></asp:TextBox>
                            <asp:RequiredFieldValidator CssClass="text-danger" ID="RequiredFieldValidator3" runat="server" ControlToValidate="Email" ErrorMessage="*Please Enter your Email"></asp:RequiredFieldValidator>
                  
                        </p>
                        <p class="comment-form-author">
                            <label for="author">Password:</label>
                             <asp:TextBox  TextMode="Password" runat="server" id="Password" Cssclass="form-control" ></asp:TextBox>
                            <asp:RequiredFieldValidator CssClass="text-danger" ID="RequiredFieldValidator4" runat="server" ControlToValidate="Password" ErrorMessage="*Please Enter Your Password"></asp:RequiredFieldValidator>
                        </p>
                        <p class="comment-form-author">
                            <label for="author">Birthday:</label>
                            <asp:TextBox  TextMode="Date" runat="server" id="Date" Cssclass="form-control" placeholder="Enter Date"></asp:TextBox>
                            <asp:RequiredFieldValidator CssClass="text-danger" ID="RequiredFieldValidator5" runat="server" ControlToValidate="Date" ErrorMessage="*Please Enter Your Birthday"></asp:RequiredFieldValidator>
                            
                        </p>
                        
                            <label for="author">Gender</label>
                            <asp:RadioButton runat="server" Text="Male" CssClass="radio" GroupName="Gender"  ID="RadioMale"  />
                            <asp:RadioButton runat="server" CssClass="radio" Text="Female" ID="RadioFemale" GroupName="Gender" />

                        <asp:Button ButtonType="LinkButton" runat="server" ID="SignUP" OnClick="RegisterUser" CssClass="button" Text="Sign UP"/>
                    </form>
                </div>
            </div>

        </div>
    </div>

</asp:Content>
