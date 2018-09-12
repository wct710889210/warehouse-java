<!DOCTYPE html>
<!--[if IE 9]>         <html class="no-js lt-ie10" lang="en"> <![endif]-->
<!--[if gt IE 9]><!-->
<html class="no-js" lang="zh-cn">
  <!--<![endif]-->

  <head>
    <meta charset="utf-8">

    <title>悦批</title>

    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">

    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/plugins.css">
    <link rel="stylesheet" href="css/main.css">
    <link rel="stylesheet" href="css/themes.css">

    <script src="js/vendor/modernizr-3.3.1.min.js"></script>
    <!--富文本编辑器部分 开头-->
    <meta http-equiv="Content-Type" content="text/html;charset=utf-8" />
    <script type="text/javascript" charset="utf-8" src="ueditor/ueditor.config.js"></script>
    <script type="text/javascript" charset="utf-8" src="ueditor/ueditor.all.min.js">
    </script>
    <!--建议手动加在语言，避免在ie下有时因为加载语言失败导致编辑器加载失败-->
    <!--这里加载的语言文件会覆盖你在配置项目里添加的语言类型，比如你在配置项目里配置的是英文，这里加载的中文，那最后就是中文-->
    <script type="text/javascript" charset="utf-8" src="ueditor/lang/zh-cn/zh-cn.js"></script>
    <!--富文本编辑器部分 结尾-->
  </head>

  <body>
    <div id="page-wrapper" class="page-loading">

      <div class="preloader">
        <div class="inner">
          <!-- Animation spinner for all modern browsers -->
          <div class="preloader-spinner themed-background hidden-lt-ie10"></div>

          <!-- Text for IE9 -->
          <h3 class="text-primary visible-lt-ie10">
            <strong>Loading..</strong>
          </h3>
        </div>
      </div>

      <div id="page-container" class="header-fixed-top sidebar-visible-lg-full">


        <!-- Main Sidebar -->
        <div id="sidebar">
          <!-- Sidebar Brand -->
          <div id="sidebar-brand" class="themed-background">
            <a href="index.jsp" class="sidebar-title">
              <i class="fa fa-cube"></i>
              <span class="sidebar-nav-mini-hide">
                <strong>悦批</strong>
              </span>
            </a>
          </div>
          <!-- END Sidebar Brand -->

          <!-- Wrapper for scrolling functionality -->
          <div id="sidebar-scroll">
            <!-- Sidebar Content -->
            <div class="sidebar-content">
              <!-- Sidebar Navigation -->
              <ul class="sidebar-nav">
                <li>
                  <a href="#" class="sidebar-nav-menu">
                    <i class="fa fa-chevron-left sidebar-nav-indicator sidebar-nav-mini-hide"></i>
                    <i class="fa fa-file-word-o sidebar-nav-icon"></i>
                    <span class="sidebar-nav-mini-hide">文章管理</span>
                  </a>
                  <ul>
                    <li>
                      <a href="addgoods.jsp">发布文章</a>
                    </li>
                    <li>
                      <a href="goodslist.jsp">我的文章</a>
                    </li>
                  </ul>
                </li>
                <li>
                  <a href="#" class="sidebar-nav-menu">
                    <i class="fa fa-chevron-left sidebar-nav-indicator sidebar-nav-mini-hide"></i>
                    <i class="fa fa-users sidebar-nav-icon"></i>
                    <span class="sidebar-nav-mini-hide">群组管理</span>
                  </a>
                  <ul>
                    <li>
                      <a href="grouparticle.jsp">发布文章</a>
                    </li>
                    <li>
                      <a href="addgroup.jsp">群组列表</a>
                    </li>
                  </ul>
                </li>
                <li class="active" id="teacher">
                  <a href="#" class="sidebar-nav-menu">
                    <i class="fa fa-chevron-left sidebar-nav-indicator sidebar-nav-mini-hide"></i>
                    <i class="hi hi-th sidebar-nav-icon"></i>
                    <span class="sidebar-nav-mini-hide">班级管理</span>
                  </a>
                  <ul>
                    <li>
                      <a href="addhomework.jsp" class="active">发布作业</a>
                    </li>
                    <li>
                      <a href="addhandout.jsp">发布讲义</a>
                    </li>
                    <li>
                      <a href="addclass.jsp">班级列表</a>
                    </li>
                  </ul>
                </li>
              </ul>
              <!-- END Sidebar Navigation -->

            </div>
            <!-- END Sidebar Content -->
          </div>
          <!-- END Wrapper for scrolling functionality -->

          <!-- Sidebar Extra Info -->
          <div id="sidebar-extra-info" class="sidebar-content sidebar-nav-mini-hide">
            <div class="text-center">
              <small>
                <span id="year-copy"></span> &copy;
                <a href="index.jsp" target="_blank">夜猫</a>
                <br>版权所有</small>
            </div>
          </div>
          <!-- END Sidebar Extra Info -->
        </div>
        <!-- END Main Sidebar -->

        <!-- Main Container -->
        <div id="main-container">

          <header class="navbar navbar-inverse navbar-fixed-top">
            <!-- Left Header Navigation -->
            <ul class="nav navbar-nav-custom">
              <!-- Main Sidebar Toggle Button -->
              <li>
                <a href="javascript:void(0)" onclick="App.sidebar('toggle-sidebar');this.blur();">
                  <i class="fa fa-ellipsis-v fa-fw animation-fadeInRight" id="sidebar-toggle-mini"></i>
                  <i class="fa fa-bars fa-fw animation-fadeInRight" id="sidebar-toggle-full"></i>
                </a>
              </li>
              <!-- END Main Sidebar Toggle Button -->


            </ul>
            <!-- END Left Header Navigation -->

            <!-- Right Header Navigation -->
            <ul class="nav navbar-nav-custom pull-right">
              <!-- User Dropdown -->
              <li class="dropdown">
                <a href="javascript:void(0)" class="dropdown-toggle" data-toggle="dropdown">
                                <img src="img/user.jpg" alt="avatar">
                            </a>
                <ul class="dropdown-menu dropdown-menu-right">
                  <li>
                    <li>
                      <a href="login.html">
                        <i class="gi gi-user fa-fw pull-right"></i>
                        切换用户
                      </a>
                    </li>
                    <li>
                      <a href="login.html">
                        <i class="fa fa-power-off fa-fw pull-right"></i>
                        注销登录
                      </a>
                    </li>
                </ul>
                </li>
                <!-- END User Dropdown -->
            </ul>
            <!-- END Right Header Navigation -->
          </header>
          <!-- END Header -->

          <!-- Page content -->
          <div id="page-content">
            <!-- Blank Header -->
            <div class="content-header">
              <div class="row">
                <div class="col-sm-6">
                  <div class="header-section">
                    <h1>班级管理</h1>
                  </div>
                </div>

              </div>
            </div>
            <!-- END Blank Header -->

            <!-- Get Started Block -->
            <div class="block full">
              <!-- Get Started Title -->
              <div class="block-title">
                <h2>作业发布</h2>
              </div>
              <!-- END Get Started Title -->

              <!-- Get Started Content -->
              <form id="homework" enctype="multipart/form-data" class="form-horizontal form-bordered">
                <div class="form-group">
                  <label class="col-md-3 control-label" for="example-text-input">标题</label>
                  <div class="col-md-6">
                    <input type="text" id="example-text-input" name="title" class="form-control" required="required" />
                    <input type="hidden" name="teacherId" id="teacherId" />
                    <input type="hidden" name="type" value="0" />
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-md-3 control-label" for="example-file-input">作业图片</label>
                  <div class="col-md-9">
                    <input type="file" id="example-file-input" name="image">
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-md-3 control-label" for="example-text-input">截止时间</label>
                  <div class="col-md-3">
                    <input type="date" id="example-text-input" name="endTime" class="form-control" required="required" />
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-md-3 control-label" for="example-textarea-input">主题</label>
                  <div class="col-md-7">
                    <label class="radio-inline" for="example-inline-radio1">
                      <input type="radio" id="example-inline-radio1" name="theme" value="古文"> 古文
                    </label>
                    <label class="radio-inline" for="example-inline-radio2">
                      <input type="radio" id="example-inline-radio2" name="theme" value="小说"> 小说
                    </label>
                    <label class="radio-inline" for="example-inline-radio3">
                      <input type="radio" id="example-inline-radio3" name="theme" value="摘录"> 摘录
                    </label>
                    <label class="radio-inline" for="example-inline-radio4">
                      <input type="radio" id="example-inline-radio4" name="theme" value="散文"> 散文
                    </label>
                    <br>
                    <label class="radio-inline" for="example-inline-radio5">
                      <input type="radio" id="example-inline-radio5" name="theme" value="励志"> 励志
                    </label>
                    <label class="radio-inline" for="example-inline-radio6">
                      <input type="radio" id="example-inline-radio6" name="theme" value="校园"> 校园
                    </label>
                    <label class="radio-inline" for="example-inline-radio7">
                      <input type="radio" id="example-inline-radio7" name="theme" value="心理"> 心理
                    </label>
                    <label class="radio-inline" for="example-inline-radio8">
                      <input type="radio" id="example-inline-radio8" name="theme" value="诗歌"> 诗歌
                    </label>
                    <br>
                    <label class="radio-inline" for="example-inline-radio9">
                      <input type="radio" id="example-inline-radio9" name="theme" value="传记"> 传记
                    </label>
                    <label class="radio-inline" for="example-inline-radio10">
                      <input type="radio" id="example-inline-radio10" name="theme" value="时事"> 时事
                    </label>
                    <label class="radio-inline" for="example-inline-radio11">
                      <input type="radio" id="example-inline-radio11" name="theme" value="教育"> 教育
                    </label>
                    <label class="radio-inline" for="example-inline-radio12">
                      <input type="radio" id="example-inline-radio12" name="theme" value="历史"> 历史
                    </label>
                    <br>
                    <label class="radio-inline" for="example-inline-radio13">
                      <input type="radio" id="example-inline-radio13" name="theme" value="哲学"> 哲学
                    </label>
                    <label class="radio-inline" for="example-inline-radio14">
                      <input type="radio" id="example-inline-radio14" name="theme" value="科技"> 科技
                    </label>
                    <label class="radio-inline" for="example-inline-radio15">
                      <input type="radio" id="example-inline-radio15" name="theme" value="演讲"> 演讲
                    </label>
                    <label class="radio-inline" for="example-inline-radio16">
                      <input type="radio" id="example-inline-radio16" name="theme" value="金融"> 金融
                    </label>
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-md-3 control-label" for="example-text-input">所属班级</label>
                  <div class="col-md-3">
                    <select name="classId" id="classId" class="form-control" required>
                     </select>
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-md-3 control-label" for="example-textarea-input">内容</label>
                  <div class="col-md-7">
                    <script id="editor" type="text/plain" style="height:300px;"></script>
                  </div>
                </div>

                <div class="form-group form-actions">
                  <div class="col-md-9 col-md-offset-3">
                    <button type="submit" id="submit" class="btn btn-effect-ripple btn-primary">
                      发布
                    </button>
                    <button type="reset" class="btn btn-effect-ripple btn-danger">
                      重置
                    </button>
                  </div>
                </div>
              </form>
              <!-- END Get Started Content -->
            </div>
            <!-- END Get Started Block -->
          </div>
          <!-- END Page Content -->
        </div>
        <!-- END Main Container -->
      </div>
      <!-- END Page Container -->
    </div>
    <!-- END Page Wrapper -->

    <!-- jQuery, Bootstrap, jQuery plugins and Custom JS code -->
    <script src="js/vendor/jquery-2.2.4.min.js"></script>
    <script src="js/vendor/bootstrap.min.js"></script>
    <script src="js/plugins.js"></script>
    <script src="js/app.js"></script>
    <!--富文本编辑器的脚本-->
    <script type="text/javascript">
      //实例化编辑器
      //建议使用工厂方法getEditor创建和引用编辑器实例，如果在某个闭包下引用该编辑器，直接调用UE.getEditor('editor')就能拿到相关的实例
      var ue = UE.getEditor('editor');


      function isFocus(e) {
        alert(UE.getEditor('editor').isFocus());
        UE.dom.domUtils.preventDefault(e)
      }

      function setblur(e) {
        UE.getEditor('editor').blur();
        UE.dom.domUtils.preventDefault(e)
      }

      function insertHtml() {
        var value = prompt('插入html代码', '');
        UE.getEditor('editor').execCommand('insertHtml', value)
      }

      function createEditor() {
        enableBtn();
        UE.getEditor('editor');
      }

      function getAllHtml() {
        alert(UE.getEditor('editor').getAllHtml())
      }

      function getContent() {
        var arr = [];
        arr.push("使用editor.getContent()方法可以获得编辑器的内容");
        arr.push("内容为：");
        arr.push(UE.getEditor('editor').getContent());
        alert(arr.join("\n"));
      }

      function getPlainTxt() {
        var arr = [];
        arr.push("使用editor.getPlainTxt()方法可以获得编辑器的带格式的纯文本内容");
        arr.push("内容为：");
        arr.push(UE.getEditor('editor').getPlainTxt());
        alert(arr.join('\n'))
      }

      function setContent(isAppendTo) {
        var arr = [];
        arr.push("使用editor.setContent('欢迎使用ueditor')方法可以设置编辑器的内容");
        UE.getEditor('editor').setContent('欢迎使用ueditor', isAppendTo);
        alert(arr.join("\n"));
      }

      function setDisabled() {
        UE.getEditor('editor').setDisabled('fullscreen');
        disableBtn("enable");
      }

      function setEnabled() {
        UE.getEditor('editor').setEnabled();
        enableBtn();
      }

      function getText() {
        //当你点击按钮时编辑区域已经失去了焦点，如果直接用getText将不会得到内容，所以要在选回来，然后取得内容
        var range = UE.getEditor('editor').selection.getRange();
        range.select();
        var txt = UE.getEditor('editor').selection.getText();
        alert(txt)
      }

      function getContentTxt() {
        var arr = [];
        arr.push("使用editor.getContentTxt()方法可以获得编辑器的纯文本内容");
        arr.push("编辑器的纯文本内容为：");
        arr.push(UE.getEditor('editor').getContentTxt());
        alert(arr.join("\n"));
      }

      function hasContent() {
        var arr = [];
        arr.push("使用editor.hasContents()方法判断编辑器里是否有内容");
        arr.push("判断结果为：");
        arr.push(UE.getEditor('editor').hasContents());
        alert(arr.join("\n"));
      }

      function setFocus() {
        UE.getEditor('editor').focus();
      }

      function deleteEditor() {
        disableBtn();
        UE.getEditor('editor').destroy();
      }

      function disableBtn(str) {
        var div = document.getElementById('btns');
        var btns = UE.dom.domUtils.getElementsByTagName(div, "button");
        for (var i = 0, btn; btn = btns[i++];) {
          if (btn.id == str) {
            UE.dom.domUtils.removeAttributes(btn, ["disabled"]);
          } else {
            btn.setAttribute("disabled", "true");
          }
        }
      }

      function enableBtn() {
        var div = document.getElementById('btns');
        var btns = UE.dom.domUtils.getElementsByTagName(div, "button");
        for (var i = 0, btn; btn = btns[i++];) {
          UE.dom.domUtils.removeAttributes(btn, ["disabled"]);
        }
      }

      function getLocalData() {
        alert(UE.getEditor('editor').execCommand("getlocaldata"));
      }

      function clearLocalData() {
        UE.getEditor('editor').execCommand("clearlocaldata");
        alert("已清空草稿箱")
      }

      UE.Editor.prototype._bkGetActionUrl = UE.Editor.prototype.getActionUrl;
      UE.Editor.prototype.getActionUrl = function (action) {
        if (action == 'uploadimage' || action == 'uploadscrawl' || action == 'uploadvideo') {
          return '/ueditorUpload';
        } else {
          return this._bkGetActionUrl.call(this, action);
        }
      }
    </script>
    <script>
      $("#teacherId").attr("value", window.localStorage.id);
      $.ajax({
        url: 'http://212.64.11.56:8080/EAnnotation/getAllClassByTech?teacherId=' + window.localStorage.id,
        type: 'POST',
        success: function (data) {
          $.each(data, function (i, item) {
            $("#classId").append(`<option value="` + item.classId + `">` + item.className + `</option>`);
          });
        },
        error: function (e) { }
      })

      $("#submit").on('click', function () {
        var form = new FormData($('#homework')[0]);
        $.ajax({
          url: 'http://212.64.11.56:8080/EAnnotation/addPassage',
          type: 'POST',
          cache: false,
          data: form,
          processData: false,
          contentType: false,
          success: function (data) {
            window.location.href = "addclass.html"
            console.log(form);
          },
          error: function (e) { }
        })
        return false;
      });

    </script>
  </body>

</html>