% include("header.tpl")
% include("banner.tpl")


<div class="w3-row w3-xxlarge w3-bottombar w3-border-theme-dark-blue w3-margin-bottom"></div>

<div class="w3-row">
  <div class="w3-panel w3-card-4 w3-round-xlarge" style="background-color:#1b1b2a; color:#b1b7ba; margin: auto; width:800px">
    <div class="w3-row w3-xxlarge w3-bottombar w3-border-theme-dark-blue w3-margin-bottom">
      <h1><i>Sign Up</i></h1>
    </div>
        <form action="/register-account">
            <label for="uname">Username:</label><br>
            <input type="text" id="uname" name="uname"><br>
            <label for="pword">Password:</label><br>
            <input type="password" id="pword" name="pword"><br>
            <label for="email">Email:</label><br>
            <input type="email" id="email" name="email"><br><br>
         
            <input type="submit">
        </form>
         <br>
        <div class="w3-row w3-xxlarge w3-bottombar w3-border-theme-dark-blue w3-margin-bottom">
   </div>
</div>

% include("footer.tpl")
