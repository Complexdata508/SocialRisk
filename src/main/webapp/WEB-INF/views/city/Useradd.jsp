<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: SureWang
  Date: 2021/9/26
  Time: 10:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>城市信息</title>
  <link rel="stylesheet" href="/SocialRisk/plugins/bootstrap/css/bootstrap.min.css">
  <link rel="stylesheet" href="/SocialRisk/plugins/adminLTE/css/AdminLTE.css">
  <link rel="stylesheet" href="/SocialRisk/plugins/adminLTE/css/skins/_all-skins.min.css">
  <link rel="stylesheet" href="/SocialRisk/css/style.css">

  <link rel="stylesheet" href="/SocialRisk/plugins/angularjs/pagination.css">
  <script src="/SocialRisk/plugins/angularjs/pagination.js"></script>

  <script src="/SocialRisk/js/base_pagination.js"></script>
  <script src="/SocialRisk/js/controller/institutionInfoController.js"></script>


  <script src="/SocialRisk/plugins/jQuery/jquery-2.2.3.min.js"></script>
  <script src="/SocialRisk/plugins/bootstrap/js/bootstrap.min.js"></script>
</head>
<body>
<div class=" " id="editModal" tabindex="1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" >
    <form action="http://localhost:8080/SocialRisk/institutionInfo/addUser.shtml">
      <div class="modal-content">
        <div class="modal-header">
          <%--                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>--%>
          <h3 id="myModalLabel">新增用户</h3>
        </div>
        <div class="modal-body">

          <table class="table table-bordered table-striped"  width="800px">

            <tbody>
            <tr>
              <td>用户名</td>
              <td><input  class="form-control" placeholder="用户名" name="username">  </td>
            </tr>
            <tr>
              <td>密码</td>
              <td><input  class="form-control" placeholder="密码"  name="password">  </td>
            </tr>
            <tr>
              <div style="text-align: center">
                <p style="text-align: center">是否管理员:</p>
                是<input  type="radio" name="admin" value="1"/>
                否<input  type="radio" name="admin" value="0"/>
              </div>

            </tr>

            </tbody>
          </table>

        </div>
        <div class="modal-footer">
          <input type="submit" class="btn btn-success" data-dismiss="modal" aria-hidden="true"></input>
          <a class="btn btn-default" data-dismiss="modal" aria-hidden="true" href="javascript:history.go(-1);">返回</a>
        </div>
      </div>
    </form >
  </div>
</div>

</body>
</html>
