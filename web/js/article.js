/**
 * Created by ttc on 2018/7/20.
 */
window.onload = function () {

    testEditor = editormd("test-editormd", {
        width: "100%",
        height: 200,
        path: contextPath + "/editor-md-master/lib/",
        placeholder:'可以直接拖拽图片或者粘贴截图，看效果请打开实时预览',
        toolbarIcons: function () {
            // Or return editormd.toolbarModes[name]; // full, simple, mini
            // Using "||" set icons align right.
            return editormd.toolbarModes['mini'];
        },
        codeFold: true,
        saveHTMLToTextarea: true,    // 保存 HTML 到 Textarea
        watch : false,                // 关闭实时预览

    });

    const submitbar = document.getElementById("submitbar");
    submitbar.children[1].onclick = function () {
        let form = document.getElementById('markdown-form');
        form.submit();
    }
};
var blob = null;
var testEditor;
document.ondragover = function () {
    return false;
};

document.ondrop = function (e) {
    console.log();
    blob = e.dataTransfer.items[0].getAsFile();
    var req = new XMLHttpRequest();
    var formdata = new FormData();
    formdata.append("editormd-image-file",blob);
    req.open("post",contextPath+"/article_pic_upload.do",true);
    req.send(formdata);
    req.onload = function (ev) {
        var json = JSON.parse(req.responseText);
        testEditor.appendMarkdown("!["+ json.name +"](" + json.url + ")");
    }
    e.preventDefault();
};


//系统的ctrl+v 会触发js中的document的paste事件，event.clipboardData可以获取粘贴板里的内容，虽然在控制台
//上显示clipboardData的长度为0，但是确实是可以获取到其中内容的。clipboardData.items获取内容列表，
//clipboardData.items[0]为最近复制到粘贴板的内容，如果内容是截图，则type为“image/png”，
//所以可用type来判断是否是截图，然后用items[0].getAsFile()方法将其转为图片
document.addEventListener("paste", function (event) {
    // console.log(event);
    var isChrome = false;
    if (event.clipboardData || event.originalEvent) {
        //某些chrome版本使用的是event.originalEvent
        var clipboardData = (event.clipboardData || event.originalEvent.clipboardData);
        if (clipboardData.items) {
            // for chrome
            var items = clipboardData.items;
            var len = items.length;
            isChrome = true;
            for (var i = 0; i < len; i++) {
                console.log(items[i]);
                if (items[i].type.indexOf("image") !== -1) {
                    //getAsFile() 此方法只是living standard firefox ie11 并不支持
                    blob = items[i].getAsFile();
                    var req = new XMLHttpRequest();
                    var formdata = new FormData();
                    formdata.append("editormd-image-file",blob);
                    req.open("post",contextPath + "/article_pic_upload.do",true);
                    req.send(formdata);
                    req.onload = function (ev) {
                        var json = JSON.parse(req.responseText);
                        testEditor.appendMarkdown("!["+ json.name +"](" + json.url + ")");
                    }
                }
            }
        }
    }
});