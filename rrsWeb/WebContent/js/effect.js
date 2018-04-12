var favorContent = ["Western Dish",
                    "Chinese Dish",
                    "Southeast Asia Dish",
                    "Japanese Dish",
                    "Korean Dish",
                    "Franch Dish",
                    "Indian Dish",
                    "Mexican Dish",
                    "Italian Dish",
                    "Muslim Dish",
                    "Other Cuisine",
                    "Hot Pot",
                    "BBQ",
                    "Seafood",
                    "Buffet",
                    "Noodles",
                    "Fast Food",
                    "Cafe",
                    "Dessert & Bakery",
                    "Breakfast",
                    "Vegetarian"];


$(function(){
   
    conConfirm();//确认事件
    
    conChoice();//选择内容
    
    addFavors();//传到后端
    
});

$().ready( function() {

	//这里接收后端给的东西
	
	//
	function setUserFavor(){
		
		var userFavor = [1,2,3];
		
		var hasCon_html = "";
		
		console.log(userFavor[0]);
		
		for(var i =0; i<userFavor.length; i++){

	        var hasObj = favorContent[(userFavor[i])];
	        hasCon_html += "<span>";
	        hasCon_html += "<em>"+hasObj+"</em>";
	        hasCon_html += "</span>";
	        console.log("a");
	        
	        $("#tag_"+userFavor[i].toString()).attr("class","cur");
	        

	    };
	    return hasCon_html;
	}

	$(".label-box").append(setUserFavor());
} ); 


//选择内容

function conChoice() {//选择中内容的当前样式

    $(".select-list span").click(function () {

        if($(this).hasClass("cur")){
            $(this).removeClass("cur");
        }else {
            $(this).addClass("cur");
        }

    })
};



function addFavors(favors) {
	
	// 数据传到后台
	
	$.ajax({
		url: "",
		type: "POST",
		data: {
			favors: favors
		},  // ["xxx", "xxx"]  接收： String[] favors
		dataType: "JSON",
		success: function(res) {
			console.log(res);
		},
		fail: function(err){
			console.error(err);
		}
	});
	
	
}

/*//得到所有tags
function getAllTags() {
	
	// 数据传到后台
	
	$.ajax({
		url: "",
		type: "GET",
		data: {
			favors: favors
		},  // ["xxx", "xxx"]  接收： String[] favors
		dataType: "JSON",
		success: function(res) {
			console.log(res);
		},
		fail: function(err){
			console.error(err);
		}
	});
	
	var allTagsContentHtml = "";
	var allTagsContent = [];
	
	for(var j =0; j<allTagsContent.length; j++){

        var hasObj = allTagsContent[j];
        allTagsContentHtml += "<span>";
        allTagsContentHtml += "<em>"+allTagsContent.conText+"</em>";
        allTagsContentHtml += "</span>";
    };
    
    acticveSelect = $(".select-list").find(".cur");
    
    return allTagsContentHtml;
	
	
}*/

//确认事件

function conConfirm() {
        
    var conAdded = $(".label-box span");//已添加的内容
    
    /*将选中的标签添加到面板上*/

    //确认点击后触发
    $("#btn-choose").click(function () {
    	console.log("aaa");

        conAdded.remove();//删除已添加的

        //重新计算快捷按钮选中数量
        function init_html() {
            
            var select_iClass_data = [];//选中的内容的em标签的class
            
            var select_conText_data = [];//选中的内容的em标签的文字
           
            var selected_data = []; //清空数组，防止遍历后重复添加
            var has_data =[];             //面板上已有的元素文字
            var has_iclass_data =[];        //面板上已有的元素类
            
            var hasCon_html = "";//面板上的内容
            
            var acticveSelect = null;//选中内容

            acticveSelect = $(".select-list").find(".cur");
            
            $.each(acticveSelect,function (i) {//遍历选中的内容,将元素添加进select_iClass_data数组和select_conText_data数组
                //赋值数组
                select_iClass_data.push(acticveSelect.eq(i).find("em").attr("class"));
                select_conText_data.push(acticveSelect.eq(i).find("em").text());
            });
            //遍历面板上已有的元素
            $.each($(".label-box span"),function (i) {
                has_data.push($(".label-box span").find("em").text());
            });
            
            //addFavors(select_conText_data);

            //去掉重复选择的数据
            function test(a,b) {
                var c = [];
                var tmp = a.concat(b);
                var o = {};
                for (var i = 0; i < tmp.length; i ++) (tmp[i] in o) ? o[tmp[i]] ++ : o[tmp[i]] = 1;
                for (var x in o) if (o[x] == 1) c.push(x);
                return c;
            }

            //将遍历数组循环存入到选中的内容数组中
            for(var i=0; i<test(has_iclass_data,select_iClass_data).length; i++){

                var select_i_class = test(has_iclass_data,select_iClass_data)[i];
                var select_i_con = test(has_data,select_conText_data)[i];
                var select_attr ={"iClass":select_i_class, "conText":select_i_con};
                selected_data.push(select_attr);
            };

            for(var j =0; j<selected_data.length; j++){

                var hasObj = selected_data[j];
                hasCon_html += "<span>";
                hasCon_html += "<em>"+hasObj.conText+"</em>";
                hasCon_html += "</span>";
            };
            return hasCon_html;
        }
        
        $(".label-box span").remove();
        $(".label-box").append(init_html());

    });
}
