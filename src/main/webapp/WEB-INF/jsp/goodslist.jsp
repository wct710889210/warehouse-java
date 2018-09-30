<%@page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<!--[if IE 9]>         <html class="no-js lt-ie10" lang="en"> <![endif]-->
<!--[if gt IE 9]><!-->
<html class="no-js" lang="ch-cn">
  <!--<![endif]-->

  <head>
    <meta charset="utf-8">

    <title>悦批</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">

    <link rel="stylesheet" href="/static/css/bootstrap.min.css">
    <link rel="stylesheet" href="/static/css/plugins.css">
    <link rel="stylesheet" href="/static/css/main.css">
    <link rel="stylesheet" href="/static/css/themes.css">

    <script src="/static/js/vendor/modernizr-3.3.1.min.js"></script>
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
                <li class="active">
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
                      <a href="goodslist.jsp" class="active">我的文章</a>
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
                <li id="teacher">
                  <a href="#" class="sidebar-nav-menu">
                    <i class="fa fa-chevron-left sidebar-nav-indicator sidebar-nav-mini-hide"></i>
                    <i class="hi hi-th sidebar-nav-icon"></i>
                    <span class="sidebar-nav-mini-hide">班级管理</span>
                  </a>
                  <ul>
                    <li>
                      <a href="addhomework.jsp">发布作业</a>
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
                                <img src="/static/img/user.jpg" alt="avatar">
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
                    <h1>文章管理</h1>
                  </div>
                </div>

              </div>
            </div>
            <!-- END Blank Header -->

            <!-- Get Started Block -->
            <div class="block full">
              <div class="block-title">
                <h2>我的文章</h2>
              </div>
              <div class="table-responsive">
                <table id="example-datatable" class="table table-striped table-bordered table-vcenter">
                  <thead>
                    <tr>
                      <th class="text-center" style="width: 100px;">序号</th>
                      <th class="text-center">产品名</th>
                      <th class="text-center">类型</th>
                      <th class="text-center">图片</th>
                      <th class="text-center">描述·</th>
                      <th class="text-center" style="width: 75px;">操作</th>
                    </tr>
                  </thead>
                  <tbody id="article">
                    <tr>
                      <td class="text-center">1</td>
                      <td class="text-center">
                        <strong>new balance</strong>
                      </td>
                      <td class="text-center">
                        <strong>鞋子</strong>
                      </td>
                      <td class="text-center">
                        <img src="/static/img/new balance.jpg" width="400px" >
                      </td>
                      <td class="text-center">
                        描述。。。。。。。。。。。。。。。。。。。。
                      </td>
                      <td class="text-center">
                        <a href="javascript:void(0)" data-toggle="tooltip" title="删除" class="btn btn-effect-ripple btn-xs btn-danger">
                          <i class="fa fa-times"></i>
                        </a>
                      </td>
                    </tr>
                  </tbody>
                </table>
              </div>
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
    <script src="/static/js/vendor/jquery-2.2.4.min.js"></script>
    <script src="/static/js/vendor/bootstrap.min.js"></script>
    <script src="/static/js/plugins.js"></script>
    <script src="/static/js/app.js"></script>
    <script src="/static/js/pages/uiTables.js"></script>
    <script>
        var url = "/goods/listjson?pageNum=1";
        $.ajax({
            type: "post",
            url: url,
//      data: "para="+para,  此处data可以为 a=1&b=2类型的字符串 或 json数据。
//             data: {"para":1},
            cache: false,
            async : false,
            dataType: "json",
            success: function (data ,textStatus, jqXHR)
            {

            },
            error:function (XMLHttpRequest, textStatus, errorThrown) {
                alert("请求失败！");
            }
        });
    </script>
  </body>

</html>