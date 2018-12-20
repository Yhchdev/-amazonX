$(function () {
   loadCategory();
});



function loadCategory(){
    $.ajax({
        type:"POST",
        data:{},
        url:"loadCategory",
        dataType:"json",
        success:function (data) {
            var childs = data.child;
            var parents = data.parent;
            var str = "";
            for (var i=0;i<parents.length;i++){
                parent = parents[i];
                str +=
                "<dl>"+
                "<dt>"+
                "<a href='category?cate=parent&hpcId="+parent.hpc_id+ "'>"+parent.hpc_name+"</a>"+
                    "</dt>"+ loadchild(parent.hpc_id,childs)+
                    "</dl>";
            }
            var obj = $("#category");
            obj.html(str);
        }
    });
}

function loadchild(parent_id,childs) {
    var str = "";
    for(var i= 0;i<childs.length;i++){
        var child = childs[i];
        if (child.hpc_parent_id==parent_id){
            str += "<dd>"+
                        "<a href='category?cate=child&hpcId="+child.hpc_id+"'>" +child.hpc_name+"</a>"+
                    "</dd>";
        }

    }
    return str;
}