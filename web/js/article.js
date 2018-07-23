/**
 * Created by ttc on 2018/7/20.
 */
function mouseover(e) {
    e.className = 'w-follow-btn followed dis-follow';
    e.children[2].innerText = '取消关注';
}

function mouseout(e) {
    e.className = 'w-follow-btn followed';
    e.children[2].innerText = '已关注';
}

window.onload = function () {
    //关注按钮
    let follow_btn = document.getElementsByClassName('w-follow-btn');
    for (let i = 0;i < follow_btn.length;i++){
        follow_btn[i].onclick = function () {
            let followedid = this.nextElementSibling.value;
            let req = new XMLHttpRequest();
            req.open('post',contextPath+'/follower.admin',true);
            req.setRequestHeader('Content-type','application/x-www-form-urlencoded');
            req.send('followedid='+followedid);
            req.onload = function () {
                if (req.responseText === 'successful'){
                    if (follow_btn[i].children[2].innerText === '关注'){
                        follow_btn[i].className = 'w-follow-btn followed';
                        follow_btn[i].children[2].innerText = '已关注';
                        follow_btn[i].onmouseover = function () {
                            mouseover(this);
                        };
                        follow_btn[i].onmouseout = function () {
                            mouseout(this);
                        };
                    }else{
                        follow_btn[i].className = 'w-follow-btn';
                        follow_btn[i].children[2].innerText = '关注';
                        follow_btn[i].onmouseover = function () {

                        };
                        follow_btn[i].onmouseout = function () {

                        };
                    }
                }
            }
        };
    }

    //收藏按钮
    let collection_btn = document.getElementById("collection-btn");
    collection_btn.onclick = function () {
        let aid = window.location.search.substr(1).split("=").pop();
        const req = new XMLHttpRequest();
        req.open('post',contextPath+'/collection.admin',true);
        req.setRequestHeader('Content-type','application/x-www-form-urlencoded');
        req.send('aid='+aid);
        req.onload = function () {
            if (req.responseText === 'successful'){
                let collection_btn = document.getElementById("collection-btn");
                if (collection_btn.children[1].innerText === '已收藏'){
                    collection_btn.children[2].innerText = parseInt(collection_btn.children[2].innerText) - 1;
                    collection_btn.children[0].className = 'iconfont icon-collection';
                    collection_btn.children[1].innerText = '收藏问题';
                }else{
                    collection_btn.children[2].innerText = parseInt(collection_btn.children[2].innerText) + 1;
                    collection_btn.children[0].className = 'iconfont icon-collection collected';
                    collection_btn.children[1].innerText = '已收藏';
                }
            }
        }
    };

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
    };

    //图片点击事件
    const preview_img = document.getElementById("preview-img");
    if (preview_img !== null){
        preview_img.onclick = function () {
            let index = layer.open({
                title:false,
                area:['600px'],
                content:`<img src="${this.src}" width="500px" height="500px">`,
                shade:0.8,
                shadeClose:true,
                btn:[],
                scrollbar:false
            });
            layer.style(index,{
                "background": '#333333',
                // "opacity": 0.5,
            });
        }
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