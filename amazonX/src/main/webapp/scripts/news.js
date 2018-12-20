$(function(){//当页面加载完毕之后加载的选项
	loadNews();
	hotNews();
});
//加载新闻动态
function loadNews(){
	$.ajax({
		type:"post",        //没有json请求方式
		url:"loadNews",
		data:{},
		dataType:"json",
		success:function(data){
			var list = data;
			var str = "";
			//集合中每一条记录对应一条新闻信息，对应一个li
			for(var i =0;i<list.length;i++){
				var news = list[i];
				str += "<li>"+
					      "<a href='readNews?nid="+news.hn_id+"'>"+news.hn_title+"</a>"+
					   "</li>";
			}
			var obj = $("#loadNews");
			//首先会清空obj对应的元素下的所有内容(包括子元素)，然后再添加上str的内容
			obj.html(str);
		}
	});
}

function hotNews() {
	$.ajax({
		type:"post",
		url:"pro_Hot",
		data:{},
		dataType:"json",
		success:function (data) {
			var list = data;
			var str = "";

			for(var i=0;i<list.length;i++){
				var hot_news = list[i];
				str +=
					'\t\t<li>\n' +
                    '\t\t\t<dl>\n' +
                    '\t\t\t\t<dt>\n' +
                    '\t\t\t\t\t<a href="pview?pId="'+hot_news.hp_id+'" target="_self"><img\n' +
                    '\t\t\t\t\t\t\tsrc="'+hot_news.hp_file_name+'" /></a>\n' +
                    '\t\t\t\t</dt>\n' +
                    '\t\t\t\t<dd class="p_name">\n' +
                    '\t\t\t\t\t<a href="pview?pId="'+hot_news.hp_id+'" target="_self">'+hot_news.hp_name+'</a>\n' +
                    '\t\t\t\t</dd>\n' +
                    '\t\t\t\t<dd class="price">￥'+hot_news.hp_price+'</dd>\n' +
                    '\t\t\t</dl>\n' +
                    '\t\t</li>'
			}
			var objhot = $("#hotp")
			objhot.html(str)
        }
	});
}