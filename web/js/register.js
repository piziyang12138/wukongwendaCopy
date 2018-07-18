/**
 * Created by ttc on 2018/7/18.
 */
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

    //注册按钮
    var register_btn = document.getElementById("submitbtn");
    register_btn.onclick = function () {
        var u_input = document.getElementById("username");
        var p_input = document.getElementById("pwd");
        if (u_input.value === ''){
            u_input.nextElementSibling.innerText = '用户名不能为空'
        }
        if (p_input.value === ''){
            p_input.nextElementSibling.innerText = '用户名不能为空'
        }
        flag = u_input.value !== '';
        flag = u_input.value !== '';
        if (!flag){
            return false;
        }
        var form = document.getElementById("rform");
        form.submit();
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

};