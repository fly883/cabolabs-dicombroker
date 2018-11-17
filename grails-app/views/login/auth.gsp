<html>
<head>
	<meta name='layout' content='main'/>
	<title><g:message code="springSecurity.login.title"/></title>
	<style type='text/css' media='screen'>
  #login {
	    margin: 15px 0px;
	    padding: 0px;
	    text-align: center;
	  }
	  #login .inner {
	    width: 340px;
	    padding-bottom: 6px;
	    margin: 60px auto;
	    text-align: left;
	    border: 1px solid #aab;
	    background-color: #f0f0fa;
	    -moz-box-shadow: 2px 2px 2px #eee;
	    -webkit-box-shadow: 2px 2px 2px #eee;
	    -khtml-box-shadow: 2px 2px 2px #eee;
	    box-shadow: 2px 2px 2px #eee;
	  }
	  #login .inner .fheader {
	    padding: 18px 26px 14px 26px;
	    background-color: #f7f7ff;
	    margin: 0px 0 14px 0;
	    color: #2e3741;
	    font-size: 18px;
	    font-weight: bold;
	  }
	  #login .inner .cssform p {
	    clear: left;
	    margin: 0;
	    padding: 4px 0 3px 0;
	    padding-left: 105px;
	    margin-bottom: 20px;
	    height: 1%;
	  }
	  #login .inner .cssform input[type='text'] {
	    width: 120px;
	  }
	  #login .inner .cssform label {
	    font-weight: bold;
	    float: left;
	    text-align: right;
	    margin-left: -105px;
	    width: 110px;
	    padding-top: 3px;
	    padding-right: 10px;
	  }
	  #login #remember_me_holder {
	    padding-left: 120px;
	  }
	  #login #submit {
	    margin-left: 15px;
	  }
	  #login #remember_me_holder label {
	    float: none;
	    margin-left: 0;
	    text-align: left;
	    width: 200px
	  }
	  #login .inner .login_message {
	    padding: 6px 25px 20px 25px;
	    color: #c33;
	  }
	  #login .inner .text_ {
	    width: 120px;
	  }
	  #login .inner .chk {
	    height: 12px;
	  }

     .navbar-header img {
       max-height: 30px;
     }
     .navbar-brand {
       padding: 10px 21px;
     }
     a.active {
       font-weight: bold;
     }
     a {
      color: #4185F3;
     }
     #app_version {
       font-size: 0.8em;
       padding: 10px 5px 5px 5px;
     }
     .help-block {
      display: none;
      margin: 0;
      padding: 10px 0;
     }
	</style>
</head>

  <body>
    <div class="container">
      <div class="row">
        <div class="col-md-4 col-md-offset-4">
          <div class="login-panel panel panel-default">
            <div class="panel-heading">
              <h3 class="panel-title"><g:message code="springSecurity.login.header" /></h3>
            </div>
            <div class="panel-body">
              <g:if test='${flash.message}'>
                <div class='login_message'>${flash.message}</div><br/>
              </g:if>

              <form action='${postUrl}' method='POST' id='loginForm' class='cssform' autocomplete='off'>
                <fieldset>
                  <div class="form-group">
                    <label for='username'><g:message code="springSecurity.login.username.label"/></label>
                    <input type='text' class='form-control' name='j_username' id='username' required="required" />
                  </div>
                  <div class="form-group">
                    <label for='password'><g:message code="springSecurity.login.password.label"/></label>
                    <input type='password' class='form-control' name='j_password' id='password' required="required" value="" />
                  </div>

                  <input type='submit' id="submit" class="btn btn-lg btn-success btn-block" value='${message(code: "springSecurity.login.button")}'/>

                  <%--
                  <div class="form-group" style="margin:0; padding:15px 0 15px 0; text-align:center;">
                    <g:link controller="user" action="forgotPassword">
                      <g:message code="springSecurity.login.forgotPassword.label"/>
                    </g:link>
                  </div>
                  --%>

                </fieldset>

                <%--
                <g:if test="${grailsApplication.config.app.allow_web_user_register.toBoolean()}">
                  <fieldset>
                    <div class="form-group" style="margin:0; padding-top:15px; text-align:center; border-top:1px solid #ccc;">
                      <g:link controller="user" action="register">
                        <b><g:message code="springSecurity.login.register.label"/></b>
                      </g:link>
                    </div>
                  </fieldset>
                </g:if>
                --%>
              </form>
            </div>
          </div>
          <div align="center" id="app_version">DICOM Boker v<g:meta name="app.version"/></div>
        </div>
      </div>
    </div>

<%--
<div id='login'>
	<div class='inner'>
		<div class='fheader'><g:message code="springSecurity.login.header"/></div>

		<g:if test='${flash.message}'>
			<div class='login_message'>${flash.message}</div>
		</g:if>

		<form action='${postUrl}' method='POST' id='loginForm' class='cssform' autocomplete='off'>
			<p>
				<label for='username'><g:message code="springSecurity.login.username.label"/>:</label>
				<input type='text' class='text_' name='j_username' id='username'/>
			</p>

			<p>
				<label for='password'><g:message code="springSecurity.login.password.label"/>:</label>
				<input type='password' class='text_' name='j_password' id='password'/>
			</p>

			<p id="remember_me_holder">
				<input type='checkbox' class='chk' name='${rememberMeParameter}' id='remember_me' <g:if test='${hasCookie}'>checked='checked'</g:if>/>
				<label for='remember_me'><g:message code="springSecurity.login.remember.me.label"/></label>
			</p>

			<p>
				<input type='submit' id="submit" value='${message(code: "springSecurity.login.button")}'/>
			</p>
		</form>
	</div>
</div>
--%>
<script type='text/javascript'>
	<!--
	(function() {
		document.forms['loginForm'].elements['j_username'].focus();
	})();
	// -->
</script>
</body>
</html>
