package com.tencent.examples.web.rest;

import com.tencent.bk.api.cc.CCApi;
import com.tencent.bk.api.cc.model.CommonSearchDataList;
import com.tencent.bk.api.cc.req.SearchBusinessReq;
import com.tencent.bk.api.cc.req.SearchHostReq;
import com.tencent.bk.api.job.JobApi;
import com.tencent.bk.api.job.model.JobInstanceResult;
import com.tencent.bk.api.job.model.Script;
import com.tencent.bk.api.job.model.ScriptList;
import com.tencent.bk.api.job.req.ExecuteJobReq;
import com.tencent.bk.api.job.req.FastExecuteScriptReq;
import com.tencent.bk.api.job.req.GetScriptDetailReq;
import com.tencent.bk.api.job.req.GetScriptListReq;
import com.tencent.bk.api.login.BKLoginApi;
import com.tencent.bk.api.protocol.ApiResp;
import com.tencent.bk.utils.json.JsonUtil;
import com.tencent.examples.bean.RunScriptBean;
import com.tencent.examples.helper.RespHelper;
import com.tencent.examples.web.BaseController;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;


@Controller
public class MyController extends BaseController {

    @Autowired
    CCApi ccApi;
    @Autowired
    BKLoginApi bkLoginApi;
    @Autowired
    JobApi jobApi;
    @RequestMapping("/my/business/list")
    @ResponseBody
    public String businessList() {
        SearchBusinessReq req = ccApi.makeBaseReqByWeb(SearchBusinessReq.class,request);
        ApiResp<CommonSearchDataList> resp =  ccApi.searchBusiness(req);
        return JsonUtil.toJson(resp);
    }

    @RequestMapping("/my/host/list")
    @ResponseBody
    public String hostList() {
        SearchHostReq req = ccApi.makeBaseReqByWeb(SearchHostReq.class,request);
        ApiResp<CommonSearchDataList> resp =  ccApi.searchHost(req);
        return JsonUtil.toJson(resp);
    }

    @RequestMapping("/my/user/info")
    @ResponseBody
    public String userInfo() {
        return   JsonUtil.toJson(RespHelper.ok(getUser()));
    }

    @RequestMapping("/my/script/list")
    @ResponseBody
    public String scriptList(Integer bizId) {
        GetScriptListReq req = jobApi.makeBaseReqByWeb(GetScriptListReq.class,request);
        req.setBkBizId(bizId);
        ApiResp<ScriptList>  resp =  jobApi.getScriptList(req);
        return JsonUtil.toJson(resp);
    }


    @RequestMapping("/my/script/detail/{id}")
    @ResponseBody
    public String scriptDetail(@PathVariable("id") Integer id) {
        GetScriptDetailReq req = jobApi.makeBaseReqByWeb(GetScriptDetailReq.class,request);
        req.setId(id);
        ApiResp<Script>  resp =  jobApi.getScriptDetail(req);
        return JsonUtil.toJson(resp);
    }

    @RequestMapping("/my/runScript")
    @ResponseBody
    public String scriptDetail(@RequestBody RunScriptBean scriptBean) {
        FastExecuteScriptReq req = jobApi.makeBaseReqByWeb(FastExecuteScriptReq.class,request);
        req.setBkBizId(scriptBean.getBizId());
        req.setIpDtoList(scriptBean.getIpList());
        req.setScriptTimeout(scriptBean.getTimeout());
        req.setScriptParam(scriptBean.getParams());
        req.setScriptId(scriptBean.getScriptId());
        ApiResp<JobInstanceResult> apiResp = jobApi.fastExecuteScript(req);
        return JsonUtil.toJson(apiResp);
    }
}
