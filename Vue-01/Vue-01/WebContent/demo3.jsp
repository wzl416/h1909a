<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/vue.js"></script>
</head>
<body>

<div id="app">
	{{name}}<br>
	请输入：<input type="text" value="" v-model="num"><br>
	龙哥有{{num}}人民币<br>
	<button v-on:click="num++">点击</button><br>
	<button @click="add">点击</button><br>
	<button @click="deld">点击</button><br>
</div>

</body>
<script type="text/javascript">
		var app=new Vue({
			el:'#app',
			data:{
				name:'龙哥',
				num:100
			},
			methods:{
				add:function(){
					this.num++;
				},
				deld:function(){
					this.num--;
				}
			}
		});

</script>
</html>