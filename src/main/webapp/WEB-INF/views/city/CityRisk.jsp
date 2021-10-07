<%--
  Created by IntelliJ IDEA.
  User: SureWang
  Date: 2021/9/26
  Time: 10:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
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
            <div class="modal-content">
                <div class="modal-header">
                    <%--                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>--%>
                    <h3 id="myModalLabel">城市风险信息</h3>
                </div>
                <div class="modal-body">

                    <table class="table table-bordered table-striped"  width="800px">
                        <tbody>
                        <tr>
                            <td>城市名称</td>
                            <td><input  class="form-control" placeholder="城市名称" value="${oneCityinfoById.name}" name="name" disabled>  </td>
                        </tr>
                        <tr>
                            <td>风险得分</td>
                            <td><input  class="form-control" placeholder="风险得分" value="${oneCityinfoById.riskscore}" name="riskscore" disabled>  </td>
                        </tr>
                        <div >
                            <c:if test="${oneCityinfoById.riskscore>=120}">
                                <p style="text-align: center">        <img src="/SocialRisk/img/red.jpg" height="150" width="150">       </p>
                                <p style="text-align: center"><span style="color:red">该城市风险指数较高,建议采取紧急措施</span> </p >
                            </c:if>
                            <c:if test="${oneCityinfoById.riskscore>=60&&oneCityinfoById.riskscore<120}">
                                <p style="text-align: center">        <img src="/SocialRisk/img/yellow.png" height="150" width="150">       </p>
                                <p style="text-align: center"><span style="color:yellowgreen">该城市风险指数异常,建议进入防护状态</span> </p >
                            </c:if>
                            <c:if test="${oneCityinfoById.riskscore<60}">
                                <p style="text-align: center">        <img src="/SocialRisk/img/green.jpg" height="150" width="150">       </p>
                                <p style="text-align: center"><span style="color: #00a65a">该城市风险指数较低,不影响正常生活</span> </p >
                            </c:if>
                        </div>
                        </tbody>
                    </table>

                </div>
                <div class="modal-footer">
                    <a class="btn btn-default" data-dismiss="modal" aria-hidden="true" href="javascript:history.go(-1);">确定</a>
                </div>
            </div>
    </div>
</div>

</body>
</html>
