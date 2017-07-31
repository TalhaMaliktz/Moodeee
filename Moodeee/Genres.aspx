<%@ Page Title="Genres" Language="C#" MasterPageFile="~/HomeMaster.Master" AutoEventWireup="true" CodeBehind="Genres.aspx.cs" Inherits="Moodeee.Genres" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="banner two">
    </div>
    <!--start-albums-->
    <div class="clearfix"></div>
    <!--albums-->
    <!-- pop-up-box -->
    <link href="css/popuo-box.css" rel="stylesheet" type="text/css" media="all" />
    <script src="js/jquery.magnific-popup.js" type="text/javascript"></script>
    <script>
        $(document).ready(function () {
            $('.popup-with-zoom-anim').magnificPopup({
                type: 'inline',
                fixedContentPos: false,
                fixedBgPos: true,
                overflowY: 'auto',
                closeBtnInside: true,
                preloader: false,
                midClick: true,
                removalDelay: 300,
                mainClass: 'my-mfp-zoom-in'
            });
        });
    </script>

    <!--//pop-up-box -->
    <div class="content-grids">
        <div class="container">
            <h3 class="tittle" style="padding-bottom: 20px">Genres</h3>
            <div class="clearfix"></div>
            <div class="content-grid">
                <a class="play-icon popup-with-zoom-anim" href="Rock.aspx">
                    <img src="images/v1.jpg" title="Rock" /></a>
                <h3 style="height: 200px">A genre of popular music originating in the 1950s; a blend of black rhythm-and-blues with white country-and-western; "rock is a generic term for the range of styles that evolved out of rock'n'roll."</h3>

                <a class="button play-icon popup-with-zoom-anim" href="Rock.Aspx">Listen now</a>
            </div>
            <div class="content-grid">
                <a class="play-icon popup-with-zoom-anim" href="Pop.aspx">
                    <img src="images/v2.jpg" title="Pop" /></a>
                <h3 style="height: 200px">Music of general appeal to teenagers; a bland watered-down version of rock'n'roll with more rhythm and harmony and an emphasis on romantic love.</h3>

                <a class="button play-icon popup-with-zoom-anim" href="Pop.aspx">Listen now</a>
            </div>
            <div class="content-grid">
                <a class="play-icon popup-with-zoom-anim" href="HipHop.aspx">
                    <img src="images/v3.jpg" title="Hip-Hop" /></a>
                <h3 style="height: 200px">Hip hop music, also called hip-hop or rap music, is a music genre consisting of a stylized rhythmic music that commonly accompanies rapping, a rhythmic and rhyming speech that is chanted.</h3>

                <a class="button play-icon popup-with-zoom-anim" href="HipHop.aspx">Listen now</a>
            </div>
            <div class="content-grid last-grid">
                <a class="play-icon popup-with-zoom-anim" href="AlternativeRock.aspx">
                    <img src="images/v4.jpg" title="Alternative Rock" /></a>
                <h3 style="height: 200px">An umbrella term used to describe a style of music that emerged in the late 80's and early 90's. Alternative Rock is usually characterized by bands who have a "do-it-yourself" or non-conformist attitude; hence "alternative". </h3>
                <a class="button play-icon popup-with-zoom-anim" href="AlternativeRock.aspx">Listen now</a>
            </div>
            <div class="content-grid">
                <a class="play-icon popup-with-zoom-anim" href="RandB.aspx">
                    <img src="images/v5.jpg" title="R&B" /></a>
                <h3 style="height: 200px">The term "R&B" became used to refer to music styles that developed from and incorporated electric blues, as well as gospel and soul music. By the 1970s, rhythm and blues was used as a blanket term for soul and funk.</h3>
                <a class="button play-icon popup-with-zoom-anim" href="RandB.aspx">Listen now</a>
            </div>
            <div class="content-grid">
                <a class="play-icon popup-with-zoom-anim" href="Dance.aspx">
                    <img src="images/v6.jpg" title="Dance" /></a>
                <h3 style="height: 200px">A type of popular music intended for dancing to in clubs, typically having a repetitive beat and a synthesized backing track that features sound samples.</h3>
                <a class="button play-icon popup-with-zoom-anim" href="Dance.aspx">Listen now</a>
            </div>
            <div class="content-grid">
                <a class="play-icon popup-with-zoom-anim" href="Soundtrack.aspx">
                    <img src="images/v7.jpg" title="Soundtrack" /></a>
                <h3 style="height: 200px">A soundtrack, also written sound track, can be recorded music accompanying and synchronized to the images of a motion picture, book, television program or video game; a commercially released soundtrack album of music as featured in the soundtrack of a film or TV show</h3>
                <a class="button play-icon popup-with-zoom-anim" href="Soundtrack.aspx">Listen now</a>
            </div>


            <div class="content-grid last-grid">
                <a class="play-icon popup-with-zoom-anim" href="Metal.aspx">
                    <img src="images/v8.jpg" title="Metal" /></a>
                <h3 style="height: 200px">With roots in blues rock and psychedelic rock, the bands that created heavy metal developed a thick, massive sound, characterized by highly amplified distortion, extended guitar solos, emphatic beats, and overall loudness.</h3>
                <a class="button play-icon popup-with-zoom-anim" href="Metal.aspx">Listen now</a>
            </div>
            <div class="clearfix"></div>
            <!--start-pagenation-->

            <div class="clearfix"></div>
            <!--//End-pagenation-->
        </div>
    </div>
    <div class="clearfix"></div>
</asp:Content>
