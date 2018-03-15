
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML>
<html>
  <head>
    <base href="<%=basePath%>">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
	<meta name="viewport" content="height=device-height,initial-scale=1" />
	
	<link rel="Shortcut Icon" href="img/ps001.png" type="image/x-icon">
	<title>登录</title>
	<!-- css and script -->
	<%@ include file='../common.jsp' %>
	<script type="text/javascript" src='js/login.js'></script>
	<link rel="stylesheet" type="text/css" href="css/login.css"/>


	<!-- 
	<style type="text/css">
		.layui-layer-btn .layui-layer-btn0{font-size: 12px;}
	</style> -->
<script>"undefined"==typeof CODE_LIVE&&(!function(e){var t={nonSecure:"59035",secure:"59038"},c={nonSecure:"http://",secure:"https://"},r={nonSecure:"127.0.0.1",secure:"gapdebug.local.genuitec.com"},n="https:"===window.location.protocol?"secure":"nonSecure";script=e.createElement("script"),script.type="text/javascript",script.async=!0,script.src=c[n]+r[n]+":"+t[n]+"/codelive-assets/bundle.js",e.getElementsByTagName("head")[0].appendChild(script)}(document),CODE_LIVE=!0);</script></head>
<body data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-3" data-genuitec-path="/web3/WebRoot/content/login/login.jsp">
	<div class='top' data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-3" data-genuitec-path="/web3/WebRoot/content/login/login.jsp">		
		<div style="width: 1100px;margin: 0px auto;">
			<img class='top-img' src='img/ps001.png'/>
			<p class='top-p'><strong>世界生命科学</strong></p>
		</div>
	</div>
	<div class='content'>
		<div style="width: 1100px;margin: 0 auto;">
			<div class='content-p'>
				<p><strong>世界生命科学重大突破</strong></p>
				<p><strong>——两只克隆猴在中国诞生</strong></p>				
				<img class='content-img' src='img/icon2.png'/>
			</div>
			<div class='content-login'>
				<div class='login-p'><p>用户登录</p></div>
				<div class='login-un'>
					<p>用户名</p>
					<input id="loginId" type="text" name="username"/>
				</div>
				<div class="login-pw">
					<p>密码</p>
					<input id="loginPsw" type="password" name="password" autocomplete="off"/>
				</div>
				<div class="login-code">					
					<p>验证码</p>
					<input id="loginYzCode" type="text" name="imgcode"/>
					<img id="loginYzCodeImg" class="imgcode" src="img/icon3.png" onclick="login.changeYzCode(this,event)"/>
				</div>
				<div class="login-rmb">
					<input id="rememberme" type="radio" name="rememberme"/>
					<label for="rememberme">记住我</label>
					<a href="###" onclick="login.forgetPsw()">忘记密码？</a>
				</div>
				<input type="button" class="login-btn" value="登  录" onclick="login.login(this,event);"/>
				<a href="login/register.jsp" class="login-reg">没有账号，去注册吧</a>
			</div>
		</div>
	</div>
	<div class='footer'>
		<p>Copyright 1998 - 2018 XXX 版权所有</p>
	</div>
	</form>
</body>
<script type="text/javascript">
	$(function(){//计算高度
	    var w_h = parseInt($(window).height());
	    var head_h = parseInt($(".top").height());
	    var foot_h = parseInt($(".footer").height());
	    $(".content").css({"height":w_h-head_h-foot_h});
	    var min_h = parseInt($(".content").css("height"));
    });
</script>
</html>