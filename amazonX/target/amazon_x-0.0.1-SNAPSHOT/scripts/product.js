$(function () {
    loadProduct();
});
var child_id = 0;
var hpc_id =0;
var page = 1;
function loadProduct() {
    $.ajax({
        type:"POST",
        url:"loadProduct",
        data:{'child_id':child_id,'hpc_id':hpc_id,'page':page},
        dataType:"json",
        success:function(data){
            pagenum = data.pages;
            var list = data.list;
            var str ="";
            for(var i=0;i<list.length;i++){
                product = list[i];
                str +=
                "<li>"+
                "<dl>"+
                "<dt>"+
                "<a href='pview?pId="+product.hp_id+"' target='_self'>"+
                    "<img src='"+product.hp_file_name+"'/></a>"+
                    "</dt>"+
                    "<dd class='title'>"+
                    "<a href='pview?pId="+product.hp_id+"' target='_self'>"+product.hp_name+"</a>"+
                    "</dd>"+
                    "<dd class='price'>￥"+product.hp_price+"</dd>"+
                "</dl>"+
                "</li>"
            }
            var obj = $("#product");
            obj.html(str);

            var pager = "";
            if(page!=1){
                pager +="<li><a href='javascript:last()' id='lastPage'>上一页</a></li>"
            }
            for(var i=1;i<pagenum;i++){
                pager +="<li><a href='javascript:fanye("+i+")'"+
                    ">"+i+"</a></li>";
            }
            if(page!=pagenum){
                pager +="<li><a href='javascript:next' id='nextPage'>下一页</a></li>";
            }
            var content = $("#fpage");
            content.html(pager);
        }
    });
}

function fanye(i) {
    page = i;
    loadProduct();
}
function last() {
    page--;
    loadProduct();
}

function next() {
    page++;
    loadProduct();
}