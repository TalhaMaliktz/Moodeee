﻿<%@ Page Title="Hip Hop" Language="C#" MasterPageFile="~/HomeMaster.Master" AutoEventWireup="true" CodeBehind="HipHop.aspx.cs" Inherits="Moodeee.HipHop" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
           <div class="banner two">
    </div>   <div class="container">
    <h3 class="tittle">Hip Hop</h3>
        <asp:FileUpload ID="FileUpload1" runat="server" Width="240px" />
        <asp:Label ID="ErrorLabel" runat="server"></asp:Label>
        <asp:Button ID="btnUpload" runat="server" Text="Upload" OnClick="btnUpload_Click" class="button play-icon popup-with-zoom-anim" />
        <hr />
        <asp:GridView ID="HipHopMusic" Style="width: inherit; margin-bottom:5%" runat="server" AutoGenerateColumns="False" RowStyle-BackColor="#A1DCF2" Font-Names="Calibri Light" Font-Size="Medium"
            HeaderStyle-BackColor="#3AC0F2" HeaderStyle-ForeColor="White" CellPadding="10" GridLines="Horizontal" Width="363px" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellSpacing="10">
            <AlternatingRowStyle BackColor="#F7F7F7" />
            <Columns>
                <asp:BoundField DataField="Name" HeaderText="FileName" />
                <asp:TemplateField>
                    <ItemTemplate>
                        <object type="application/x-shockwave-flash" data='dewplayer-playlist.swf?mp3=HipHop.ashx?Id=<%# Eval("Id") %>'
                            width="240" height="20" id="dewplayer">
                            <param name="wmode" value="transparent" />
                            <param name="movie" value='dewplayer-playlist.swf?mp3=HipHop.ashx?Id=<%# Eval("Id") %>' />
                        </object>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:HyperLinkField DataNavigateUrlFields="Id" Text="Download" DataNavigateUrlFormatString="~/HipHop.ashx?Id={0}" HeaderText="Download" />
            </Columns>
            <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />

            <HeaderStyle BackColor="#4A3C8C" ForeColor="#F7F7F7" Font-Bold="True"></HeaderStyle>

            <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />

            <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
            <SortedAscendingCellStyle BackColor="#F4F4FD" />
            <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
            <SortedDescendingCellStyle BackColor="#D8D8F0" />
            <SortedDescendingHeaderStyle BackColor="#3E3277" />
        </asp:GridView>
        </div>
</asp:Content>
