/**
 * Created by ttc on 2018/7/18.
 */
var arg_map = {};
var url_args = decodeURI(window.location.search.substr(1));
var args = url_args.split('&');
for(var i = 0;i < args.length;i++){
    var key_value = args[i].split('=');
    arg_map[key_value[0]] = key_value[1];
}

window.onload = function () {
    //验证图片
    var v_img = document.getElementById("vertifycode-img");
    v_img.onclick = function () {
        var num = Math.random();
        this.src = '/generatecode.do?' + num;
    };

    //验证码输入框
    var v_input = document.getElementById("captcha1");
    v_input.onblur = function () {
        var req = new XMLHttpRequest();
        req.open("get",'/checkcode.do?code='+ this.value,true);
        // req.setRequestHeader("Content-type","application/x-www-form-urlencode");
        req.send();
        req.onload = function () {
            var checked = document.getElementById("check-response");
            checked.innerText = req.responseText;
            flag = req.responseText === '验证码正确';
        }
    }

    //表单
    var form = document.getElementById("rform");


    //注册按钮
    var register_btn = document.getElementById("submitbtn");
    register_btn.onclick = function () {
        var u_input = document.getElementById("username");
        var p_input = document.getElementById("pwd");
        if (u_input.value === ''){
            u_input.nextElementSibling.innerText = '用户名不能为空';
            flag = false;
        }
        if (p_input.value === ''){
            p_input.nextElementSibling.innerText = '密码不能为空';
            flag = false;
        }

        if (!flag){
            return false;
        }else{
            form.submit();
        }

    };

    //用户名输入框
    var u_input = document.getElementById("username");
    u_input.onblur = function () {
        if (this.value !==''){
            this.nextElementSibling.innerText = '';
        }
    };


    //密码输入框
    var p_input = document.getElementById("pwd");
    p_input.onblur = function () {
        if (this.value !==''){
            this.nextElementSibling.innerText = '';
        }
    };

    //登录标签
    var l_div = document.getElementById("login-label");
    l_div.onclick = function () {
        register_btn.value = '登录';
        form.action = '/login.do';
        this.className = 'y-left item active';
        this.nextElementSibling.className = 'y-left item';

    };

    //注册标签
    var r_div = document.getElementById("register-label");
    r_div.onclick = function () {
        register_btn.value = '注册';
        form.action = '/register.do';
        this.className = 'y-left item active';
        this.previousElementSibling.className = 'y-left item';
    };

    //判断是否是登录
    if (arg_map.model === 'login'){
        register_btn.value = '登录';
        form.action = '/login.do';
        l_div.className = 'y-left item active';
        l_div.nextElementSibling.className = 'y-left item';
    }
};