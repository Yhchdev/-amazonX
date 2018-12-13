$(function(){
    $("#very2Code").click(function(){
        $("#very2Code").attr("src","code?a="+Math.random()); //flush yanzm
    });
});


//异步校验验证码
var reg = false;
function regCode(){
    var code = $("#my_Code").val();//获取id是inCode的输入框的值
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

function register() {
    var userName = $('#userName').val();
    var passWord = $('#passWord').val();
    var sex = $('input[type="radio"][name="sex"]:checked').val();
    var birthday = $('#birthday').val();
    var identity = $('#identity').val();
    var email = $('#email').val();
    var mobile = $('#mobile').val();
    var address = $('#address').val();
    if(!reg){
        alert("请输入正确的验证码");
        return;
    }

    jsonData ={"userName":userName,"passWord":passWord,"sex":sex,"birthday":birthday,
        "identity":identity,"email":email,"mobile":mobile,"address":address};

    $.ajax({
        type:"post",
        url:"register",
        data:jsonData,
        dataType:"json",
        success:function(data){
            if(data=='ok'){
                alert('888')
                window.location.href="login.jsp"
            }else{
                alert("zhu ce shibai");
            }
        }
    });


}



