/**
 * Created by ttc on 2018/7/19.
 */
var user = getUser();
window.onload = function () {
    //文件input
    var upload_input = document.querySelector("#file");
    upload_input.onchange = function () {
        var formdata = new FormData();
        var req = new XMLHttpRequest();
        formdata.append('file',this.files[0]);
        req.open("post", "/upload.do", true);
        req.send(formdata);
        req.onload = function () {
            var h_img = document.getElementsByClassName("header-img");
            for (var i = 0;i < h_img.length;i++){
                h_img[i].src = '/upload/'+ req.responseText;
            }

        }
    };

    //编辑用户名
    var editor_span = document.querySelector("#editor-username");
    editor_span.onclick = function () {
        var editor_div = document.querySelector("#editor-div");
        editor_div.className = "name-wrapper changeMarginTop";
        var input = document.createElement("input");
        input.type = "text";
        input.className = "input";
        input.value = user.username;

        var btn_warrp = document.createElement("div");
        btn_warrp.className = 'btn-wrapper';
        btn_warrp.innerHTML = '<a class="btn btn-save" onclick="store(this)">保存</a> <a class="btn btn-cancel" onclick="cancel(this)">取消</a>';

        this.parentNode.appendChild(input);
        this.parentNode.appendChild(btn_warrp);
        this.previousElementSibling.remove();
        this.remove();
    }

};

function store(e) {
    user.username = e.parentNode.previousElementSibling.value;
    var req = new XMLHttpRequest();
    req.open("post", contextPath + "/editor_user.do", true);
    req.setRequestHeader("Content-type","application/x-www-form-urlencoded");
    req.send('user='+JSON.stringify(user));
    req.onload = function () {

    }
}

function cancel(e) {

}