zblog.register("zblog.post");
$(function(){
  $('#editor-nav a').click(function (e) {
    e.preventDefault();//阻止a链接的跳转行为
    $(this).tab('show');//显示当前选中的链接及关联的content
  });
  
  if(!document.getElementById("container")) return ;
  
  zblog.post.editor = UE.getEditor('container',{
    /* 阻止div标签自动转换为p标签 */
    allowDivTransToP: false,
	  autoHeightEnabled: true,
	  autoFloatEnabled: true
  });
  
  zblog.post.editor.ready(function(){
	  zblog.post.editor.execCommand('serverparam', {'CSRFToken': zblog.getCookie("x-csrf-token")});
  });
});

zblog.post.insert=function(){
  var title=$.trim($("#title").val());
  if(title==""){
	 $("#title").focus();
	 return ;
  }

  var postid=$("#postid").val();
  var data={title:title,
            content:zblog.post.editor.getContent(),
            tags:$("#tags").val(),
            categoryid:$("#category").val(),
            pstatus:$("input:radio[name=pstatus]:checked").val()};
  if(postid.length>0) data.id=postid;
  
  $.ajax({
    type:postid.length>0?"PUT":"POST",
    url:zblog.getDomainLink("posts"),
    data:data,
    dataType:"json",
    success:function(data){
	    if(data&&data.success){
	      window.location.href=".";
      }else{
    	 alert(data.msg);
      }
     }
  });
}

zblog.post.remove=function(postid){
 alert(window.location.host);
 $.ajax({
   type:"DELETE",
   url:zblog.getDomainLink("posts/"+postid),
   dataType:"json",
   success:function(data){
	   if(data&&data.success){
	     window.location.reload();
     }else{
       alert(data.msg);
     }
   }
 });
}

zblog.post.edit=function(postid){
  window.location.href=zblog.getDomainLink("posts/edit?pid="+postid);
}