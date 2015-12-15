<%@ Page Title="SignUp" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Order.aspx.cs" Inherits="SignUp" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
<div class="order">
 <form id="mayForm" action="#" method="post">
            <fieldset class="box">
                <legend>Your information</legend>
                <div>
                    <p>
                        <label class="inputLabel" for="fName">First Name</label>
                        <input type="text" id="fName" name="fName" autofocus="autofocus" class="textInput" maxlength="35" required="required" placeholder="First Name" />
                        
                    </p>
                    <p>
                        <label class="inputLabel" for="lName">Last Name</label>
                        <input type="text" id="lName" name="lName" class="textInput" maxlength="35" required="required" placeholder="Last Name" />
                    </p>

                    <p>
                        <label class="inputLabel" for="userMail">Email </label>
                        <input type="email" id="userMail" name="userMail" class="textInput" required="required" placeholder="Your email" pattern="[^0-9][A-z0-9_]+([.][A-z0-9_]+)*[@][A-z0-9_]+([.][A-z0-9_]+)*[.][A-z]{2,4}" title="email"/>
                    </p>

                    <p>
                        <label class="inputLabel" for="street">Street</label>
                        <input type="text" id="street" name="street" class="textInput" required="required" placeholder="Shipping street" />
                    </p>

                    <p>
                        <label class="inputLabel" for="userNumber">Number</label>
                        <input type="text" id="userNumber" name="userNumber" class="textInput" required="required" placeholder="Shipping building" pattern="[0-9]*" title="building" />
                    </p>

                    <p>
                        <label class="inputLabel" for="zip">ZIP code</label>
                        <input type="text" id="zip" name="zip" class="textInput" required="required" placeholder="A1A 1A1" pattern="[A-Z]{1}[0-9]{1}[A-Z]{1}\s{1}[0-9]{1}[A-Z]{1}[0-9]{1}" title="A1A 1A1"/>
                    </p>
                    <p>
                        <label class="inputLabel" for="city">City</label>
                        <input type="text" id="city" name="city" class="textInput" required="required" placeholder="Shipping city" pattern="[A-Za-z]+" title="city"/>
                    </p>

                    <p>
                        <label class="inputLabel" for="country">Country</label>
                        <input type="text" id="country" name="country" class="textInput" pattern="[A-za-z]{3}" required="required" placeholder="CAN or USA" title="CAN or USA" />
                    </p>

                    <p>
                        <label class="inputLabel" for="phone">Phone number</label>
                        <input type="tel" id="phone" name="phone" class="textInput" required="required" placeholder="(000)000 0000" pattern="\({1}[0-9]{3}\){1}[0-9]{3}\s{1}[0-9]{4}" title="(000)000 0000" />
                    </p>
                    
                    <p>
                        <label class="inputLabel" for="userUrl">Blog</label>
                        <input type="url" id="userUrl" name="userUrl" class="textInput" />
                    </p>

                    <p>
                        <label class="inputLabel" for="comment">Your comment</label>
                        <input type="text" id="comment" name="comment" class="textInput" />
                    </p>
                </div>
            </fieldset>

            <fieldset class="box">
                <legend>Your order</legend>

                <p>
                    <label class="inputLabel" for="deliveryDate">Requested Delivery Date</label>
                    <input type="text" id="deliveryDate" name="deliveryDate" class="textInput" placeholder="January 1, 2001" pattern="[A-Za-z]+\s{1}[0-9]{1,2}\,{1}\s{1}[0-9]{4}" title="January 1, 2001" />

                </p>

                <p>
                    <label class="inputLabel" for="colorOfGift">Wrapping paper color</label>
                    <!--color picker works only in Firefox or Chrome, in IE it appears as a regular textbox type...-->
                    <input type="color" id="colorOfGift" name="colorOfGift" class="textInput" />

                </p>
                <p>
                    <label class="inputLabel" for="numOfBows">Number of Bows</label>
                    <input type="number" id="numOfBows" name="numOfBows" class="textInput" min="1" max="10"/>

                </p>
            </fieldset>

            <input type="submit" class="submitButton" value="Order is ready" />
        </form>
</div>
</asp:Content>

