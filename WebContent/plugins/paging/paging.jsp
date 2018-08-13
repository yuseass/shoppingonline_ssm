<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath() + "/";
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path;
%>


<input type="hidden" name="index" value="${page.index }" id="index"/>
<a href="javascript:paging('prev')">上一页</a>
第${page.index }页/共${page.all }页
<a href="javascript:paging('next')">下一页</a>



<script type="text/javascript">
function paging(type) {
	var $index = $("#index");
	var index = parseInt($index.val());
	if(type == "prev") {
		if(index == 1) {
			return;
		}
		
		index--;
	}else if(type == "next") {
		if(index == "${page.all}") {
			return;
		}
		index++;
	}
	
	$index.val(index);
	
	$("#myform").submit();//提交表单
	
}
</script>
