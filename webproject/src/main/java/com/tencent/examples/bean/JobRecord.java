package com.tencent.examples.bean;


import lombok.Data;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Data
@Table(name = "t_job_record")
public class JobRecord {
    @Id
    @GeneratedValue
    Long id;
    Long name;
    Long instanceId;
    Long bizId;
}
