<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>日志管理页面</title>
<style type="text/css">
	#main{width:80%;border:2px solid #DBDBDB ;margin-right: auto; margin-left: auto; margin-top: 80px; text-align: center;}
</style>
</head>
<%
%>
<body>
	<div id="main">
		<h1>日志管理</h1>
		<div id="list">
			<%
			%>
		</div>
		<div id="created">
			<form action="?" method="post" id="frmCreated">
				<textarea id="msg" rows="4" cols="80" onkeydown="doCreated(this)"></textarea>
			</form>
		</div>
	</div>
	
	<script type="text/javascript">
		function doCreated(_this,e){
			var ev=e||event;
			if(ev.keyCode==13 && ev.ctrlKey){
				var msg =_this.value;
				if(msg && ''!= msg){
					document.getElementById("frmCreated").submit();
				}
			}
		}
		document.getElementById('msg').focus();
	</script>
</body>
</html>