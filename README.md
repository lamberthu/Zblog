Zblog
=======

a java blog
---------------
程序运行见http://blog.zhouhaocheng.cn

### 核心功能
1.	文章/页面发布、分类、统计阅读次数。
2.	提供文章形式的RSS聚合。
3.	提供链接的添加、归类功能。
4.	附件上传添加管理功能。
5.	评论的管理，垃圾信息过滤功能。
6.	文章静态html页面生成。
7.	会员注册登录，后台管理功能。
8.	lucene实现的站内搜索。
9.	防xss、csrf攻击。
10.	支持metaWeblog Api(支持windows live writer等离线博客编写)
11.	WordPress站点xml文件导入功能(支持文章、附件及标签)
12.	文章标签tag功能、私密文章支持

#### TODO
*	评论邮件提醒
*	文章归档/近期评论
*	文章编辑markdown/纯文本支持
*	文章快速编辑功能

### 技术选型

#### 后端
* Ioc容器 Spring
* Web框架 SpringMVC
* Orm框架 MyBatis
* 安全权限 Shiro
* 搜索工具 Lucene
* 缓存 Ehcache
* 静态化 FreeMarker
* 视图模板 Jsp/Jstl/JspTaglib
* 其它 Jsoup(xss过滤)、fastjson、IKAnalyzer

#### 前端
* jquery js框架
* bootstrap 后台界面
* ueditor 编辑器
* webuploader 文件上传
* font-wesome/icomoon.io 字体/图标

### 支持浏览器
* 前台 ie6+
* 后台 chrome/firefox/ie8+
  
### 作者博客
  (http://www.zhouhaocheng.cn)