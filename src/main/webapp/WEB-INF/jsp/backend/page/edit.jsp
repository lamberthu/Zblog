<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE Html>
<html>
 <head>
  <jsp:include page="../common/bootstrap.jsp" flush="false" />
  <script type="text/javascript" src="${g.domain}/resource/ueditor-1.4.3/ueditor.config.js"></script>
  <script type="text/javascript" src="${g.domain}/resource/ueditor-1.4.3/ueditor.all.js"></script>
 </head>
 <body style="margin-top: 50px;">
  <jsp:include page="../common/navbar.jsp" flush="false" />
  <div class="container-fluid">
    <div class="row">
      <div class="col-sm-3 col-md-2" id="sidebar" style="padding: 0;">
        <jsp:include page="../common/sidebar.jsp" flush="false" />
      </div>
      <div class="col-sm-9 col-md-10">
        <ol class="breadcrumb header">
          <li><span class="icon glyphicon glyphicon-file"></span>主菜单</li>
          <li>页面</li>
          <li class="active">编辑页面</li>
        </ol>
       <div class="row">
         <div class="col-sm-9 .col-md-9">
          <div class="panel panel-default">
            <div class="panel-heading"><span class="icon glyphicon glyphicon-edit"></span>标题/内容</div>
            <div class="panel-body">
              <input type="hidden" id="postid" value="${post.id}" />
              <input type="text" id="title" class="form-control input-md" placeholder="输入标题" value="${post.title}"><br/>
                            <ul class="nav nav-tabs nav-justified" id="editor-nav">
                <li class="active"><a href="#editor-ue">UEditor</a></li>
                <li><a href="#editor-txt">纯文本</a></li>
                <li><a href="#editor-mk">Markdown</a></li>
              </ul>
              <div class="tab-content">
                <div class="tab-pane active" id="editor-ue">
                  <!-- 必须要添加width:100% -->
                  <script id="container" style="width: 100%; height: 300px;" name="content" type="text/plain">${post.content}</script>
                </div>
                <div class="tab-pane" id="editor-txt">
                  <textarea name="content" style="width: 100%; height: 300px">${post.content}</textarea>
                </div>
                <div class="tab-pane" id="editor-mk">正在集成中...</div>
              </div>
            </div>
           </div>
         </div>
         <div class="col-sm-3 .col-md-3">
           <div class="panel panel-default">
             <div class="panel-heading">发布</div>
             <div class="panel-body">
               <div class="form-group">
                 <label for="categoty">父页面</label>
                 <select class="form-control" id="parent">
                   <option value="Root">(无父级)</option>
                   <c:forEach items="${parents}" var="parent">
                     <option value="${parent.id}">${parent.title}</option>
                   </c:forEach>
                 </select>
               </div>
               <div class="form-group">
                 <label>公开度</label><br/>
                 <label class="radio-inline">
                    <input type="radio" name="visual" value="open" checked="checked">公开
                 </label>
                 <label class="radio-inline">
                    <input type="radio" name="visual" value="open">隐藏
                 </label>
               </div>
               <div class="form-group">
                 <label for="mark">标签</label>
                 <input type="text" class="form-control" id="mark" />
                 <span class="help-block">多个标签请用英文逗号（,）分开</span>
               </div>
             </div>
             <div class="panel-footer">
               <button type="button" class="btn btn-info btn-block" onclick="zblog.page.insert();">发布</button>
             </div>
           </div>
         </div>
       </div>

      </div>
    </div>
  </div>
  <script type="text/javascript" src="${g.domain}/resource/js/backend/admin.page.js"></script>
 </body>
</html>
