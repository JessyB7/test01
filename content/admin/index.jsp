 <%@ page language="java" import="java.util.*" pageEncoding="utf-8" %>
 <%@page isELIgnored="false" %>
<%
 	String path = request.getContextPath();
 	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
 	List<String> strList=new ArrayList<String>();
 	strList.add("用户管理");
 	strList.add("组织管理");
 	strList.add("切换系统");
 %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="${basePath}">    
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
  <title>首页</title>
	<%@ include file='../common.jsp' %>
  <link rel="stylesheet" href="../../js/layui/css/layui.css"  media="all">
  
<script>"undefined"==typeof CODE_LIVE&&(!function(e){var t={nonSecure:"59035",secure:"59038"},c={nonSecure:"http://",secure:"https://"},r={nonSecure:"127.0.0.1",secure:"gapdebug.local.genuitec.com"},n="https:"===window.location.protocol?"secure":"nonSecure";script=e.createElement("script"),script.type="text/javascript",script.async=!0,script.src=c[n]+r[n]+":"+t[n]+"/codelive-assets/bundle.js",e.getElementsByTagName("head")[0].appendChild(script)}(document),CODE_LIVE=!0);</script></head>
<body class="layui-layout-body" data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-0" data-genuitec-path="/web3/WebRoot/content/admin/index.jsp">
<div class="layui-layout layui-layout-admin" data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-0" data-genuitec-path="/web3/WebRoot/content/admin/index.jsp">
  <div class="layui-header">
    <div class="layui-logo">一门一网</div>
    <!-- 头部区域（可配合layui已有的水平导航） -->
    <ul class="layui-nav layui-layout-left">
      <s:iterator value="{'1','2','3','4','5'}" var='number'>

      <li class="layui-nav-item"><a href="">控制台${number}</a></li><!-- 
      <li class="layui-nav-item"><a href="">商品管理</a></li>
      <li class="layui-nav-item"><a href="">用户</a></li> -->
      <li class="layui-nav-item">
        <a href="javascript:;">其它系统</a>
        <dl class="layui-nav-child">
          <dd><a href="">邮件管理</a></dd>
          <dd><a href="">消息管理</a></dd>
          <dd><a href="">授权管理</a></dd>
        </dl>
      </li>
      </s:iterator>
    </ul>
    <ul class="layui-nav layui-layout-right">
      <li class="layui-nav-item">
        <a href="javascript:;">
          <img src="http://t.cn/RCzsdCq" class="layui-nav-img">
          贤心
        </a>
        <dl class="layui-nav-child">
          <dd><a href="">基本资料</a></dd>
          <dd><a href="">安全设置</a></dd>
        </dl>
      </li>
      <li class="layui-nav-item"><a href="">退了</a></li>
    </ul>
  </div>
  
  <div class="layui-side layui-bg-black">
    <div class="layui-side-scroll">
      <ul class="layui-nav layui-nav-tree"  lay-filter="test">      
	<c:set var="heros" value="所有商品;解决方案;云市场;发布商品" /> 
	<c:forTokens items="${heros}" delims=":;|!" var="hero" varStatus="status">
	<li class="layui-nav-item layui-nav-itemed">
        <a class="" href="javascript:;">${hero}</a>  
        <c:if test="${status.count%2==0}"><%--   <c:if test="${hero!='云市场'}">  --%>     
			<c:set var="hero" value="qw1;qw2;qw3" /> 
			<c:forTokens items="${hero}" delims=":;|!" var="h">
	          <dl class="layui-nav-child">
	            <dd><a href="javascript:;">${h}</a></dd>
	          </dl>
	          </c:forTokens>
        </c:if>
    </li>
	</c:forTokens>
      </ul>
    </div>
  </div>
  
  <div class="layui-body">
    <!-- 内容主体区域 -->
    <div style="padding: 15px;">
      内容主体区域      
<c:set var="money" value="888.8" />
<c:set var="pi" value="3.1415926" />
最少两个小数点:<fmt:formatNumber type="number" value="${money}" minFractionDigits="2"/><br>
最多两个小数点:<fmt:formatNumber type="number" value="${pi}" maxFractionDigits="2" />
      
      <br><br>
      <blockquote class="layui-elem-quote">
        layui 之所以赢得如此多人的青睐，更多是在于它“前后台系统通吃”的能力。既可编织出绚丽的前台页面，又可满足繁杂的后台功能需求。
        <br>layui 后台布局， 致力于让每一位开发者都能轻松搭建自己的后台模板。
      </blockquote>
      
      <a href="/doc/element/layout.html#admin" target="_blank" class="layui-btn layui-btn-big">获取该布局代码</a>
      
      <br><br><br><br>
      
       
      
      
      下面是充数内容，为的是出现滚动条<br>充数内容<br>充数内容<br>充数内容<br>充数内容<br>充数内容<br>充数内容<br>充数内容<br>充数内容<br>充数内容<br>充数内容<br>充数内容<br>充数内容<br>充数内容<br>充数内容<br>充数内容<br>充数内容<br>充数内容<br>充数内容<br>充数内容<br>充数内容<br>充数内容<br>充数内容<br>充数内容<br>充数内容<br>充数内容<br>充数内容<br>充数内容<br>充数内容<br>充数内容<br>充数内容<br>充数内容<br>充数内容<br>充数内容<br>充数内容<br>充数内容<br>充数内容<br>充数内容<br>充数内容<br>充数内容<br>充数内容<br>充数内容<br>充数内容<br>充数内容<br>充数内容<br>充数内容<br>充数内容<br>充数内容<br>充数内容<br>充数内容<br>充数内容<br>
    </div>
  </div>
  
  <div class="layui-footer">
    <!-- 底部固定区域 -->
    © layui.com - 底部固定区域
  </div>
</div>
<script>
//JavaScript代码区域
layui.use('element', function(){
  var element = layui.element;
  
});
</script>
<script type="text/javascript">var cnzz_protocol = (("https:" == document.location.protocol) ? " https://" : " http://");document.write(unescape("%3Cspan id='cnzz_stat_icon_30088308'%3E%3C/span%3E%3Cscript src='" + cnzz_protocol + "w.cnzz.com/c.php%3Fid%3D30088308' type='text/javascript'%3E%3C/script%3E"));</script>
</body>
</html>
