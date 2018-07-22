window.onload = function () {
    const nav = document.getElementById("nav");
    const qlist = document.getElementById('user-question-list');
    let nav_children = nav.children;
    let qlist_children = qlist.children;
    for (let i = 0;i < nav_children.length;i++){
        nav_children[i].onclick = function () {
            this.index = i;
            for (let i = 0;i < nav_children.length;i++){
                nav_children[i].className = '';
            }
            for (let i = 0;i < qlist_children.length;i++){
                qlist_children[i].style.display = 'none';
            }
            this.className = 'current';
            qlist_children[this.index].style.display = 'block';
        }
    }
};