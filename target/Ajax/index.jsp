<%--
  Created by IntelliJ IDEA.
  User: ly
  Date: 2019/8/9
  Time: 10:11
  To change this template use File | Settings | File Templates.
--%>
<html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<script type="text/javascript" src="js/jquery-3.4.1.min.js"></script>
<script type="text/javascript">
    $(function () {
        /*
        * url:请求服务器地址
        * data:请求参数
        * dateType:服务器返回数据类型
        * error:请求出错执行功能
        *success:请求成功执行功能，success:function (data)data服务器返回的数据
        * type: 请求方式*/
        $("a").click(function () {
            // $.ajax({
            //     url:'demo',
            //     data:{'name':'张三'},
            //     dateType:'html',
            //     error:function () {
            //         alert('出错了')
            //     },
            //     success:function (data) {
            //         alert('请求成功'+data)
            //     },
            //     type:'POST'
            // });
            $.post("demo",{"name":"张三"},function (data) {
                var result="";
                for (var i=0;i<data.length;i++){
                    result+="<tr>";
                    result+="<td>"+data[i].id+"</td>";
                    result+="<td>"+data[i].username+"</td>";
                    result+="<td>"+data[i].password+"</td>";
                    result+="</tr>";
                }
                $(".mytbody").html(result);
            })
            return false;
        });
    })
</script>
<body style="text-align: center;margin: 200px 0px">
<a href="demo">跳转</a>
<table border="1">
    <tr>
        <td>编号</td>
        <td>姓名</td>
        <td>密码</td>
    </tr>
    <tbody class="mytbody"></tbody>
</table>
</body>
</html>
