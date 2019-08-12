[Ajax](https://www.runoob.com/jquery/ajax-ajax.html)
====
1、标准请求响应时浏览器的动作(同步操作)<br>
>1.1、浏览器请求什么资源，跟随显示什么资源<br>

2、ajax异步请求<br>
>2.1、局部刷新，通过异步请求，请求到服务器资源数据后，通过脚本修改页面中部分内容<br>

3、ajax由JavaScript推出的，由jQuery对js中ajax代码进行的封装，达到使用方便的效果<br>
4、jQuery中的ajax<br>
>4.1、$.ajax({属性名：值，属性名：值})<br>
```xml
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
            $.ajax({
                url:'demo',
                data:{'name':'张三'},
                dateType:'html',
                error:function () {
                    alert('出错了')
                },
                success:function (data) {
                    alert('请求成功'+data)
                },
                type:'POST'
            });
            return false;
        });
    })
</script>
```
>4.2、$.get(url,data,success,dataType)、$.post(url,data,success,dataType)简化ajax<br>
>4.3、$.getSON(url,data,success).相当于设置$.get中dataType='json',简化$.get()<br>
>4.4、$.getScript(url,data,sucess)相当于设置$.get中dataType='script'<br>
>4.5如果服务器返回数据是从表中取出，为了方便客户端操作返回数据，服务端返回的数据设置为json<br>
>>4.5.1、客户端把json当做对象或数组操作<br>

>4.6、json：数据格式<br>
>>4.6.1、JsonObject：json对象,理解成java对象{'key':value,'key':value}<br>
>>JsonArray:json数组,{'key':value,'key':value}<br>

