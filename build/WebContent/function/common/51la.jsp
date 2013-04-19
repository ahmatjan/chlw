<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<div style="overflow:hidden; display:none;">
<div id='jsdiv'></div>
<script type="text/javascript">
document.write = function (s)
{
document.getElementById('jsdiv').innerHTML+=s;
return false;
}
$.ajaxSetup({ cache: true });
$.getScript("http://js.users.51.la/3569695.js");
</script>

<noscript>
	<a href=" http://www.51.la/?3569695" target="_blank">
		<img alt="我要啦免费统计" src=" http://img.users.51.la/3569695.asp" style="border:none" />
	</a>
</noscript>

</div>