<%@ Page Title="Home" Language="C#" MasterPageFile="~/HomeMaster.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Moodeee.Home" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 <!--banner-slider-->
    <div class="banner">
        <div id="top" class="callbacks_container">
            <ul class="rslides" id="slider">
                <li>
                    <img src="Images/3.jpg" class="img-responsive" alt="" />
                </li>
                <li>
                    <img src="Images/2.jpg" class="img-responsive" alt="" />
                </li>
                <li>
                    <img src="Images/1.jpg" class="img-responsive" alt="" />
                </li>
            </ul>
        </div>
    </div>
    <script src="Scripts/CustomJS/responsiveslides.min.js"></script>

    <script>
        // You can also use "$(window).load(function() {"
        $(function () {
            // Slideshow 3
            $("#slider").responsiveSlides({
                auto: true,
                pager: true,
                nav: false,
                speed: 500,
                namespace: "callbacks",
                before: function () {
                    $('.events').append("<li>before event fired.</li>");
                },
                after: function () {
                    $('.events').append("<li>after event fired.</li>");
                }
            });

        });
    </script>
    <!--//end-banner-->

    <!--start-albums-->
    <div class="clearfix"></div>
    <div class="albums">
        <div class="container">
            <div class="music-info">
                <div class="col-md-4 music-grids" onclick="location.href='Happy.aspx'">
                    <figure class="effect-bubba"  >
                        <img src="images/m1.jpg" alt="" />
                        <figcaption>
                            <h4>Happy</h4>
                            <p>Getting some Disco helps us prevent the mind from unpleasant thoughts which often take over our mind.</p>
                        </figcaption>
                    </figure>
                </div>
                <div class="col-md-4 music-grids" onclick="location.href='Sad.aspx'">
                    <figure class="effect-bubba">
                        <img src="images/m2.jpg" alt="" />
                        <figcaption>
                            <h4>Sad</h4>
                            <p>It is a strong sensation that Emotional Music gives us a deep emotional experience.</p>
                        </figcaption>
                    </figure>
                </div>
                <div class="col-md-4 music-grids" onclick="location.href='Loved.aspx'">
                    <figure class="effect-bubba">
                        <img src="images/m3.jpg" alt="" />
                        <figcaption>
                            <h4>Loved</h4>
                            <p>If you are angry and need an outlet to release your feelings, you can listen to rock music with fast tempos and loud guitar playing.</p>
                        </figcaption>
                    </figure>
                </div>
                <div class="clearfix"></div>
            </div>
            <div class="music-info two">
                <div class="col-md-4 music-grids" onclick="location.href='Lonely.aspx'">
                    <figure class="effect-bubba">
                        <img src="images/m4.jpg" alt="" />
                        <figcaption>
                            <h4>Lonely</h4>
                            <p>Pop Music can discharge us from the bad memories. It helps us to get rid of an unwanted feeling or memory. So go with this</p>
                        </figcaption>
                    </figure>
                </div>
                <div class="col-md-4 music-grids" onclick="location.href='Energetic.aspx'">
                    <figure class="effect-bubba">
                        <img src="images/m6.jpg" alt="" />
                        <figcaption>
                            <h4>Energetic</h4>
                            <p>Music helps alter our mood Music is the best way to celebrate and appreciate the good things in life.</p>
                        </figcaption>
                    </figure>
                </div>
                <div class="col-md-4 music-grids">
                    <figure class="effect-bubba" onclick="location.href='Romantic.aspx'">
                        <img src="images/m5.jpg" alt="" />
                        <figcaption>
                            <h4>Romantic</h4>
                            <p>You can set the mood romantic with the one you love by playing soft ballads or love songs.</p>
                        </figcaption>
                    </figure>
                </div>
                <div class="clearfix"></div>
            </div>
            <div class="music-info two">
                <div class="clearfix"></div>
            </div>
        </div>
    </div>
</asp:Content>
