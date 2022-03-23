select
        sys_guid() as ID           ,
        t.WF_ID        ,
        t.WF_NAME      ,
        t.CATEGORY_CODE,
        t.VER_CODE     ,
        t.IS_VER       ,
        t1.ORG_CODE as AGY_CODE     ,
        t1.ORG_name as AGY_NAME     ,
        t.FISCAL       ,
        t.ADM_CODE     ,
        t.VER          ,
        t.CREATOR      ,
        t.CREATOR_NAME ,
        t.CREATED_TIME ,
        t.MODIFIER     ,
        t.MODIFIER_NAME,
        t.MODIFIED_TIME,
        t.IS_SPARE     ,
        t.IS_BUDGET    ,
        t.IS_REPOSITORY,
        t.prj_wf_state ,
        t.mof_div_code
from
        prj_wf_setting t,
        DB_GSBIZ_GOVC_BOSS_ZX.AFA_ORG t1
where
        t.AGY_CODE='315001'
     and t.FISCAL='2022'
     and  t1.ORG_CODE like '315%' and t1.ORG_CODE not in('315001','315000','315','302001','999999','315013','315014') 
    and t1.ORG_CODE not like '325%' and t.WF_ID in('JXTB01','JXTB02') ;