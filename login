<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Connect Grátis</title>
<meta http-equiv="pragma" content="no-cache" />
<meta http-equiv="expires" content="-1" />	
<meta content='width=device-width, user-scalable=no' name='viewport'/>
<link rel="stylesheet" href="login.css" media="screen">
 

</head>
<body class='login'>
$(if chap-id)
	<form name="sendin" action="$(link-login-only)" method="post">
		<input type="hidden" name="username" />
		<input type="hidden" name="password" />
		<input type="hidden" name="dst" value="$(link-orig)" />
		<input type="hidden" name="popup" value="true" />
	</form>
	
	<script type="text/javascript" src="/md5.js"></script>
	<script type="text/javascript">
	<!--
	    function doLogin() {
		document.sendin.username.value = document.login.username.value;
		document.sendin.password.value = hexMD5('$(chap-id)' + document.login.password.value + '$(chap-challenge)');
		document.sendin.submit();
		return false;
	    }
	//-->
	</script>
$(endif)


<form class="vertical-form" name="login" action="$(link-login-only)" method="post" background="#A03472"
	$(if chap-id) onSubmit="return doLogin()" $(endif)>
<input type="hidden" name="dst" value="$(link-orig)" />
<input type="hidden" name="popup" value="true" />
<div style="margin:0;padding:0;display:inline"></div>
<legend>
<img class="logo" src="logo.png" width="320px" />
<aqui se puede escribir>
</legend>
<input name="username" type="text" value="$(username)" placeholder="User Name" size="30" />
<input autocomplete="off" name="password" type="password" label="false" placeholder="Password" size="30" />
<input name="submit" type="submit" value=" " />
<div class='footer'>
<p>$(if trial == 'yes')Free trial available, <a href="$(link-login-only)?dst=$(link-orig-esc)&amp;username=T-$(mac-esc)">click here</a>.$(endif)</p>
<p>$(if error)<span style="color: #FF8080; font-size: 16px">$(error)</span>$(endif)</p>
<br>
<p>
</p>
</div>
</form>

<script type="text/javascript">
<!--
  document.login.username.focus();
//-->
</script>
</body>
</html>
