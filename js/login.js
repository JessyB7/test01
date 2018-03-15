var login = {
	//用户名密码非空校验
	checkedUserPsw : function() {
		if ($("#loginId").val() == "") {
			layer.tips('用户名不能为空！', '#loginId', {tips : [ 2, '#00B050' ],time:3000});
			return false;
		}
		if ($("#loginPsw").val() == "") {
			layer.tips("密码不能为空！", "#loginPsw", {tips : [ 2, '#00B050' ],time:3000});
			return false;
		}
		if ($("#loginYzCode").val() == "") {
			layer.tips("验证码不能为空！", "#loginYzCode", {tips : [ 2, '#00B050' ],time:3000});
			return false;
		}
		return true;
	},

	login : function(i, g) {
		if(!login.checkedUserPsw(i, g)){
			return false;
		}
		var loginId = $("#loginId").val();
		var loginPsw = $("#loginPsw").val();
		var loginYzCode=$("#loginYzCode").val();
		var rememberme = $("#rememberme").prop("checked");

		$.ajax({
			type : "POST",
			url : "http://localhost:8080/web3/content/admin/index.jsp",
			data : {
				loginId : Base64.encode(loginId),//用户名加密
				password : hex_md5(loginPsw),//密码加密
				loginYzCode : loginYzCode,
				remenberme : rememberme,
				ajax : "json"
			},
			success : function() {
				window.location.href ="http://localhost:8080/web3/content/admin/index.jsp";
				alert("OLLLL！", true);
					
			},
			error : function() {
				alert("加载数据失败！", true);
			}
		})
	},
	//忘记密码
	forgetPsw : function() {
		window.location.href = "login/forgetPsw.jsp";
	},
	//切换验证码图片
	changeYzCode : function(a, b) {
		document.getElementById("loginYzCodeImg").src = "/login!makeYzcode.action?yzCode=loginSessionYzCode&ma=" + Math.random();
	},
};