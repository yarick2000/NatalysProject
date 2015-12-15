<%@ Page Title="FindUs" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="FindUs.aspx.cs" Inherits="ContactUs" %>

<asp:Content ID="ScriptContent" ContentPlaceHolderID="scriptContent" runat="server" >
<script src="http://maps.googleapis.com/maps/api/js"></script>
<script src="/scripts/geopositioning.js"></script>
</asp:Content>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
       <h1 class="commonHeader">Please visit our store</h1>
        <div class="geopositioning" id="googleMap" style="border:1px solid black; width:45%;height:450px;"></div>
        <script type="text/javascript">
                google.maps.event.addDomListener(window, 'load', initialize);
        </script>  
</asp:Content>



