window.onload = function () {
    const nav = document.getElementById("nav");
    let nav_children = nav.children;
    for (let i = 0;i < nav_children.length;i++){
        nav_children[i].onclick = function () {
            for (let i = 0;i < nav_children.length;i++){
                nav_children[i].className = '';
            }
            this.className = 'current';
        }
    }
};