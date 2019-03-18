<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head><title>联系我们</title></head>
<body>
<script>
    $(document).ready(function() {
        $("#contactus-tab").addClass("king-navbar-active");
    });
</script>
<style type="text/css">
    #footer {
        position: relative;
        bottom: -40px;
    }
</style>
<div class="page-contactus">
    <!-- 内容 start-->
    <!--comtactus-detail -->
    <div class="container">
        <div class="tc" id="contactus">
            <div class="weixin-img-arrow">
                <div>
                    <img class="weixin-img " src="${sessionScope.STATIC_URL}img/weixin_icom.png">
                </div>
                <p>关注我们</p>
            </div>
            <div class="comtactus-way-arrow tc mt50">
                <div class="dbi border-right tc" style="width: 280px; padding-left: 60px">
                    <div class="img-arrow">
                        <img class="" src="${sessionScope.STATIC_URL}img/icom_01.png">
                    </div>
                    <p class="mt20">深圳市南山区科兴学园C2</p>
                </div>
                <div class="dbi border-right tc" style="width: 180px">
                    <div class="img-arrow">
                        <img src="${sessionScope.STATIC_URL}img/icom_02.png">
                    </div>
                    <p class="mt20">企业QQ：800802001</p>
                </div>
                <div class="dbi tc" style="width: 280px">
                    <div class="img-arrow">
                        <img src="${sessionScope.STATIC_URL}img/icom_03.png">
                    </div>
                    <p class="mt20">邮箱：contactus_bk@tencent.com</p>
                </div>
            </div>
        </div>

    </div>
    <!-- 内容 start-->
</div>
<!-- 固定宽度表单居中 end -->

</body>
</html>