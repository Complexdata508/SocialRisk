(function($) {
	/**
	 * 分页组件
	 * @param options  
	 * Json格式的分页属性* {
	 * curPage:当前页,
	 * pageSize:每页显示条数,
	 * pageCount:总页数,
	 * goPageCall:点击分页执行函数}
	 */
	$.fn.pager = function(options) {
		var obj = $(this);
		var defVal = $.fn.pager.defaults;
        $.extend({}, defVal, options);
        
        var curPage    = parseInt(options.page.num);   // 当前页数
        var pageSize   = parseInt(options.page.limit); // 每页显示条数
        var pageCount  = parseInt(options.page.sum);   // 总页数
        var pageTotal  = parseInt(options.page.count); // 总条数
        var goPageCall = options.goPageCall;           // 点击分页执行函数
        
        init();
        
        function init() { // 分页初始化
        	if(curPage < 1 || isNaN(curPage)) curPage = defVal.curPage;
	    	if(pageCount < 1 || isNaN(pageCount)) pageCount = defVal.pageCount;
	    	if(pageSize < 1 || isNaN(pageSize)) pageSize = defVal.pageSize;
	    	
	    	obj.addClass("page").empty();
	    	if(pageCount > 1) {
	        	generatePageHtml();
	        	var limit = '显示<select><option value="10" '+(pageSize==10?'selected':'')+'>10</option><option value="50" '+(pageSize==50?'selected':'')+'>50</option><option value="100" '+(pageSize==100?'selected':'')+'>100</option></select>';
	        	var $total = $('<span>&nbsp;&nbsp;'+(options.isPageSizeChange?limit:'')+'共'+pageCount+'页'+pageTotal+'条&nbsp;&nbsp;</span>');
	        	var $skip = $('<span>到第<input type="text" id="jp" style="width:40px;"/>页</span>');
	        	var $queding = $('<a class="btn">确定</a>');
	        	if(options.isPageSizeChange){
	        		$total.find("select").change(function(){
		        		pageSize = $(this).val();
		        		go(1);
		        	});
	        	}
	        	$skip.find("input:text").keydown(function(e){
	        		if(e.keyCode == 13)
	        			go($(this).val());
	        	});
	        	$queding.click(function(){
	        		go($skip.find("input:text").val());
	        	});
	        	obj.append($total).append($skip).append($queding);
	    	} else if(pageCount == 0) {
	    		obj.html('抱歉，没有找到您想要的数据');
	    	}
        }
	    
	    function generatePageHtml() { // 生成分页的html代码
	    	if(curPage > 1) {
	    		obj.append('<a href="javascript:void(0)">上一页</a>');
	    	}
	    	
	    	if(pageCount > 5 && curPage > 3) {
	    		obj.append('…');
	    	}
	    	
	    	if(pageCount <= 5) {
	    		for(var i=1;i<=pageCount;i++) {
	    			if(i == curPage) {
	    				obj.append('<span class="current">'+i+'</span>');
	    			} else {
	    				obj.append('<a href="javascript:void(0)">'+i+'</a>');
	    			}
	    		}
	    	}
	    	
	    	if(pageCount > 5 && curPage <= 3) {
	    		for(var i=1;i<=5;i++) {
	    			if(i == curPage) {
	    				obj.append('<span class="current">'+i+'</span>');
	    			} else {
	    				obj.append('<a href="javascript:void(0)">'+i+'</a>');
	    			}
	    		}
	    	}
	    	
	    	if(pageCount > 5 && curPage > 3 && curPage <= pageCount - 2) {
	    		obj.append('<a href="javascript:void(0)">'+(curPage-2)+'</a>');
	    		obj.append('<a href="javascript:void(0)">'+(curPage-1)+'</a>');
	    		obj.append('<span class="current">'+curPage+'</span>');
	    		obj.append('<a href="javascript:void(0)">'+(curPage+1)+'</a>');
	    		obj.append('<a href="javascript:void(0)">'+(curPage+2)+'</a>');
	    	}
	    	
	    	if(pageCount > 5 && curPage > pageCount - 2) {
	    		for(var i=pageCount-4;i<=pageCount;i++) {
	    			if(i == curPage) {
	    				obj.append('<span class="current">'+i+'</span>');
	    			} else {
	    				obj.append('<a href="javascript:void(0)">'+i+'</a>');
	    			}
	    		}
	    	}
	    	
	    	if(pageCount > 5 && curPage < pageCount - 2) {
	    		obj.append('…');
	    	}
	    	
	    	if(curPage < pageCount) {
	    		obj.append('<a href="javascript:void(0)">下一页</a>');
	    	}
	    	
	    	obj.find("a").click(function() {
    			go($(this).text());
    		});
	    }
	    
	    function go(v) {// 执行处理函数
	    	var pageNum;
	    	switch (v) {
	            case "上一页":
	                pageNum = curPage - 1; // 上一页
	                break;
	            case "下一页":
	                pageNum = curPage + 1; // 下一页
	                break;
	            default:
	            	pageNum = parseInt(v); // 点击页
	            	break;
	        }
			if(!isNaN(pageNum) && pageNum >= 1 && pageNum <= pageCount) { // && pageNum != curPage
				curPage = pageNum;
				init(); // 点击后重新初始化分页代码
				obj.find("input:text").val(curPage);
				goPageCall(curPage, pageSize);
			}
	    }
    };
	
    $.fn.pager.defaults = { // 默认值
        curPage   : 1,
        pageSize  : 10,
        pageCount : 0,
        isPageSizeChange : false
    };
	
})(jQuery);


function tagGoPage(p){
	  var url = window.location.href;
	  if(url.indexOf("?") != -1) {
	      if(url.indexOf("currentPageNo") != -1){
	      	 var reg = new RegExp("currentPageNo=[0-9]*","g");
	      	 url = url.replace(reg, "currentPageNo="+p);
	      }else url = url + "&currentPageNo="+p;
	  }else url = url + "?currentPageNo="+p;
	  window.location.href = url;
}
function tagGo(){
	  var jp = $("#jp").val();
	  if(jp > 0 && jp <= 210) {
		  tagGoPage(jp);
	  }else $("#jp").val("");
}