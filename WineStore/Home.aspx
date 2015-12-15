<%@ Page Title="Home" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<asp:Content ID="scriptContent" ContentPlaceHolderID="scriptContent" runat="server">
<script src="/scripts/dataModel.js"></script>
<script src="/scripts/dragAndDrop.js"></script>
</asp:Content>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
  <div class="homePage">
        <h1>Welcome to Nataly's Wine Store!</h1>
        <p class="welcomeText">
                You have probably heard from both friends and experts many times that any wine you like is a good wine.
                This is true if simply enjoying wine is your goal.
                You don’t have to do more than take a sip, give it a swallow and let your inner geek decide “yes” or “no.”
                The end. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam in lobortis ex. Suspendisse vestibulum varius porta. Ut ligula risus, fermentum nec elit eget, feugiat consequat diam. Donec accumsan tristique convallis. Curabitur sit amet facilisis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Quisque sollicitudin augue et metus volutpat pellentesque. Maecenas dui quam, iaculis at massa in, varius varius lectus.
                Fusce efficitur justo sed lobortis efficitur. Sed vel quam at mi tristique convallis non id justo. Vestibulum molestie odio sed congue tempor. Mauris at nisl a risus finibus efficitur. Mauris quis luctus erat, id auctor tellus. Nulla vel suscipit metus. Donec porta dapibus eros et finibus. Maecenas suscipit nisl sed dictum luctus. Proin suscipit laoreet ante a dictum. Donec ornare, erat quis dignissim maximus, neque ex laoreet massa, sed convallis turpis turpis ut elit. Suspendisse varius augue ante, sed fermentum dui facilisis non. Nulla neque leo, placerat ut tempor quis, ornare sed lorem. Mauris egestas sem non magna semper lobortis.
        </p>      

        <aside class="events">
            <header>News from our partners</header>
            <ul>
                <li><a href="http://www.cnn.com/2015/03/31/living/food--wine-best-new-chefs-2015-feat/index.html" target="_blank">Best new wines</a></li>
                <li><a href="http://www.decanter.com/wine-news/ " target="_blank">News about wine</a></li>
                <li><a href="http://www.niagarawinefestival.com/" target="_blank">Wine Festivals</a></li>
            </ul>
        </aside>
      <p> Our store is closed on Cristmas. <mark>Don't forget to visit us before Cristmas Eve!</mark></p>
    </div>

    <section class="bestsellers">
        <header class="backgroundGradient">Bestsellers @ Jim's Store...</header>
        <div id="shoppingCart" class="shoppingCart">
            <header><span>Shopping Cart</span></header>
            <ul></ul>
            <a href="#" onclick="currentCart.clearCart(); document.querySelectorAll('#shoppingCart ul')[0].innerHTML = ''; return false;">Clear cart</a>
        </div>
        <section class="bestsellersGroup">
            <header>Our Dry Wines</header>
            <div>
                <article>
                    <figure id="wineOne" class="dragableToCart" draggable="true" data-price="10.00"></figure>
                    <header>
                        <a href="wineDetails/wineDetails1.aspx">Wine1</a>
                    </header>
                    <p>$10</p>
                    <p class="smallText">Drag me into your cart</p>
                </article>
                <article id="wine-2">
                    <figure id="wineTwo" class="dragableToCart" draggable="true" data-price="10.00"></figure>
                    <header>
                        <a href="wineDetails/wineDetails2.aspx">Wine2</a>
                    </header>
                    <p>$10</p>
                    <p class="smallText">Drag me into your cart</p>
                </article>
                <article>
                    <figure id="wineThree" class="dragableToCart" draggable="true" data-price="10.00"></figure>
                    <header>
                        <a href="wineDetails/wineDetails3.aspx">Wine3</a>
                    </header>
                    <p>$10</p>
                    <p class="smallText">Drag me into your cart</p>
                </article>
            </div>
        </section>
        <section class="bestsellersGroup">
            <header>Our Sweet Wines</header>
            <div>
                <article>
                    <figure id="wineFour" class="dragableToCart" draggable="true" data-price="10.00"></figure>
                    <header>
                        <a href="wineDetails/wineDetails4.aspx">Wine4</a>
                    </header>
                    <p>$10</p>
                    <p class="smallText">Drag me into your cart</p>
                </article>
                <article>
                    <figure id="wineFive" class="dragableToCart" draggable="true" data-price="10.00"></figure>
                    <header>
                        <a href="wineDetails/wineDetails5.aspx">Wine5</a>
                    </header>
                    <p>$10</p>
                    <p class="smallText">Drag me into your cart</p>
                </article>
                <article>
                    <figure id="wineSix" class="dragableToCart" draggable="true" data-price="10.00"></figure>
                    <header>
                        <a href="wineDetails/wineDetails6.aspx">Wine6</a>
                    </header>
                    <p>$10</p>
                    <p class="smallText">Drag me into your cart</p>
                </article>
            </div>
        </section>
    </section>
    <script>
        document.addEventListener("DOMContentLoaded", dragAndDropHendlers, false);
    </script>
</asp:Content>


