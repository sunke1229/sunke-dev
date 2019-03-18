<%@ page contentType="text/html;charset=UTF-8" %>

<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title></title>
    <!-- 若您需要使用Kendo UI Professional，请联系版权人获得合法的授权或许可。 -->
    <!-- Bootstrap css -->
    <link href="https://magicbox.bk.tencent.com/static_api/v3/assets/bootstrap-3.3.4/css/bootstrap.min.css" rel="stylesheet">
    <!-- kendo ui css -->
    <link href="https://magicbox.bk.tencent.com/static_api/v3/assets/kendoui-2015.2.624/styles/kendo.common.min.css" rel="stylesheet">
    <link href="https://magicbox.bk.tencent.com/static_api/v3/assets/kendoui-2015.2.624/styles/kendo.default.min.css" rel="stylesheet">
    <!-- font-awesome -->
    <link href="https://magicbox.bk.tencent.com/static_api/v3/assets/fontawesome/css/font-awesome.css" rel="stylesheet">
    <!--蓝鲸提供的公用样式库 -->
    <link href="https://magicbox.bk.tencent.com/static_api/v3/bk/css/bk.css" rel="stylesheet">
    <link href="https://magicbox.bk.tencent.com/static_api/v3/bk/css/bk_pack.css" rel="stylesheet">
    <!-- 如果要使用Bootstrap的js插件，必须先调入jQuery -->
    <script src="https://magicbox.bk.tencent.com/static_api/v3/assets/js/jquery-1.10.2.min.js"></script>
    <!-- 包括所有bootstrap的js插件或者可以根据需要使用的js插件调用　-->
    <script src="https://magicbox.bk.tencent.com/static_api/v3/assets/echarts-2.0/echarts-all.js"></script>
    <script src="https://magicbox.bk.tencent.com/static_api/v3/assets/bootstrap-3.3.4/js/bootstrap.min.js"></script>
    <!-- 包括所有kendoui的js插件或者可以根据需要使用的js插件调用　-->
    <script src="https://magicbox.bk.tencent.com/static_api/v3/assets/kendoui-2015.2.624/js/kendo.all.min.js"></script>
    <script src="https://magicbox.bk.tencent.com/static_api/v3/assets/echarts-2.0/echarts-all.js"></script>
    <script src="https://magicbox.bk.tencent.com/static_api/v3/bk/js/bk.js"></script>
    <!-- 数据埋点统计 -->
    <script src="http://magicbox.bk.tencent.com/static_api/analysis.js"></script>
    <!-- 以下两个插件用于在IE8以及以下版本浏览器支持HTML5元素和媒体查询，如果不需要用可以移除 -->
    <!--[if lt IE 9]><script src="https://magicbox.bk.tencent.com/static_api/v3/assets/js/html5shiv.min.js"></script><script src="https://magicbox.bk.tencent.com/static_api/v3/assets/js/respond.min.js"></script><![endif]-->
</head>

<body class="bg-white" data-bg-color="bg-white">
<div class="king-page-box">
    <div class="king-layout1-header">
        <nav role="navigation" class="navbar navbar-default king-horizontal-nav2    f14 ">
            <div class="container " style="width:100%;overflow:hidden;">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed navbar-toggle-sm" data-toggle="collapse" data-target="#king-horizontal-nav2-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="javascript:;">
                        <img src="https://magicbox.bk.tencent.com/static_api/v3/bk/images/logo3.png" alt="" class="logo"> </a>
                </div>
                <div class="collapse navbar-collapse navbar-responsive-collapse" id="king-horizontal-nav2-collapse">
                    <ul class="nav navbar-nav">
                        <li class="king-navbar-active"><a href="javascript:void(0);">首页</a></li>
                        <li><a href="javascript:void(0);">执行记录</a></li>
                    </ul>
                    <ul class="nav navbar-nav navbar-right">
                        <li>
                            <a href="javascript:;">
                                <span>管理者</span>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
    </div>
    <div class="king-layout2-main mt15" style="width:960px;">
        <form class="form-horizontal">
            <div class="form-group clearfix ">
                <label class="col-sm-3 control-label bk-lh30 pt0">脚本列表：</label>
                <div class="col-sm-9">
                    <select name="" id="" class="form-control bk-valign-top">
                        <option value="选择项1">选择项1</option>
                    </select>
                </div>
            </div>
            <div class="form-group clearfix ">
                <label class="col-sm-3 control-label bk-lh30 pt0">执行账号：</label>
                <div class="col-sm-9">
                    <select name="" id="account" class="form-control bk-valign-top">
                        <option value="root">root</option>
                        <option value="system">system</option>
                    </select>
                </div>
            </div>
            <div class="form-group clearfix ">
                <label class="col-sm-3 control-label bk-lh30 pt0">脚本类型：</label>
                <div class="col-sm-9">
                    <select name="" id="scriptType" class="form-control bk-valign-top">
                        <option value="1">shell脚本</option>
                        <option value="2">bat脚本</option>
                        <option value="3">perl脚本</option>
                        <option value="4">python脚本</option>
                        <option value="5">Powershell脚本</option>
                    </select>
                </div>
            </div>
            <div class="form-group clearfix ">
                <label class="col-sm-3 control-label bk-lh30 pt0">超时时间：</label>
                <div class="col-sm-9">
                    <input type="text" class="form-control bk-valign-top" id="timeout" placeholder="请输入超时时间"> </div>
            </div>
            <div class="form-group clearfix">
                <div class="col-sm-9 col-sm-offset-3">
                    <button type="button" class="king-btn mr10  king-success">执行</button>
                    <button type="button" class="king-btn king-default ">取消</button>
                </div>
            </div>
        </form>
    </div>
</div>
</body>
<script type="text/javascript">
    function loadBusiness() {
        $.ajax({
            method: 'GET',
            url: "${sessionScope.SITE_URL}rest/my/script/list",
            success: function(result){
                console.log(result);
                if(result.result==true){
                    $("#business").empty();
                    var businessList = result.data.info;
                    businessList.forEach(function (item) {
                        var businessOption = "<option value='"+item.bk_biz_id+"'>"+item.bk_biz_name+"</option> ";
                        $("#business").append(businessOption);
                    });
                }
            },
            dataType: "json",
            headers: {'Content-Type': 'application/json'}
        });
    }
</script>
</html>