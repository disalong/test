<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!-- 图片链接（底层是图片的链接） -->
<script type="text/template" id="imageLinkTemplate">
<a id="{{= id }}" 
style="display:block;width:{{= width }};height:{{= height}};
background:url({{= image }}) no-repeat center 0;" 
target="_blank" 
href="{{= href }}"></a>
</script>
