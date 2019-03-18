package com.tencent.examples.bean;


import com.tencent.bk.api.job.model.IP;
import lombok.Data;

import java.util.List;

@Data
public class RunScriptBean {
   Integer  bizId;
    Integer scriptId;
   String  params;
   Integer  timeout;
   String account;
   List<IP> ipList;
}
