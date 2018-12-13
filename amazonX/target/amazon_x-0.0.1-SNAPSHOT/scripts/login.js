//异步校验验证码
var reg = false;
function regCode(){
	var code = $("#inCode").val();//获取id是inCode的输入框的值
	//ajax采用json格式进行书写
	$.ajax({
		type:"post",//请求方式
		url:"regCode",//请求路径
		data:{"code":code},//请求时传递参数
		dataType:"json",//交互采用的数据传输格式
		success:function(data){//请求成功时的回调函数，data包含了从后端返回的数据
			if(data=="验证码校验成功"){
				reg = true;
			}else{
				alert(data)
			}
		}
	});
}
function login(){
	//获取用户名
	var userName = $("#userName").val();  //   .val("xxx") .text("我爱<b>java</b>")  .html("ddd")
	//获取密码   <h1>我爱<b>java</b></h1>      我爱java   我爱<b>java</b>  set
	var passWord = $("#passWord").val();
	//判断验证码是否输入正确
	if(!reg){
		alert("请输入正确的验证码");
		return;
	}
	//判定用户名和密码不为空
	if(userName!=""&&passWord!=""){
		//在上述条件都成立的情况下发起ajax请求，判定用户名和密码是否正确，如果正确，跳转到页面index.jsp
		//window.location.href="要跳转的页面"
		//如果不正确弹出提示框提示用户名或密码不正确
		$.ajax({
			type:"post",
			url:"login",
			data:{"userName":userName,"passWord":passWord},
			dataType:"json",
			success:function(data){
				if(data=="登录成功"){
					window.location.href="index.jsp";
				}else{
					alert(data);
				}
			}
		});
	}
	
}