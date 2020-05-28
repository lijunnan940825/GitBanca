--索引
drop index idx_acccfm;
drop index idx_acccfm2;
drop index idx_acccfmtmp;
drop index idx_accexp;
drop index idx_accreqbak;
drop index idx_assetacc;
drop index idx_assetacc2;
drop index idx_assetacc3;
drop index idx_assetacc4;
drop index idx_assetacc5;
drop index idx_assetacctmp;
drop index idx_bankkacc;
drop index idx_batcherr;
drop index idx_branch;
drop index idx_changecard;
drop index idx_client;
drop index idx_clientnochg;
drop index idx_clientnochg2;
drop index idx_clientyzzz1;
drop index idx_clientyzzz2;
drop index idx_clientyzzz3;
drop index idx_clientyzzz4;
drop index idx_divdetial;
drop index idx_exchrate;
drop index idx_exchrate2;
drop index idx_feerate;
drop index idx_frozen;
drop index idx_frozenbak;
drop index idx_h_divdetail;
drop index idx_h_logs;
drop index idx_h_sharechg;
drop index idx_h_shareerr;
drop index idx_hissquare1;
drop index idx_hissquare2;
drop index idx_hissquare3;
drop index idx_hissquare4;
drop index idx_hisshdetail;
drop index idx_histransreq_1;
drop index idx_histransreq_2;
drop index idx_histransreq_3;
drop index idx_issamt;
drop index idx_logs;
drop index idx_monitor;
drop index idx_monitor2;
drop index idx_monitor3;
drop index idx_prdsell;
drop index idx_share_1;
drop index idx_share_2;
drop index idx_share_3;
drop index idx_share_4;
drop index idx_share_5;
drop index idx_share_6;
drop index idx_sharechg;
drop index idx_sharedetail;
drop index idx_sharedetailbak;
drop index idx_sharedetailbak_2;
drop index idx_sharecompare;
drop index idx_square1;
drop index idx_square2;
drop index idx_square3;
drop index idx_square4;
drop index idx_square5;
drop index idx_squarebak_1;
drop index idx_squarebak_2;
drop index idx_squarebak_3;
drop index idx_squarebak_4;
drop index idx_sumdetail;
drop index idx_transcfm;
drop index idx_transcfm2;
drop index idx_transcfmtmp;
drop index idx_transcfmtmp2;
drop index idx_transexp;
drop index idx_transreq_1;
drop index idx_transreq_2;
drop index idx_transreq_3;
drop index idx_transreqbak_1;
drop index idx_transreqbak_2;
drop index idx_transreqbak_3;
drop index idx_transreqbak_4;
drop index idx_transstatus;
drop index idx_user;
drop index idx_datatocsrc_1;


--当前库表
drop table tbuser_role        cascade constraints;
drop table tbrole             cascade constraints;
drop table tbuser             cascade constraints;
drop table tbrole_trans       cascade constraints;
drop table tbtransaction      cascade constraints;
drop table tbuser_trans       cascade constraints;
drop table tbuser_branch      cascade constraints;
drop table tbbranch           cascade constraints;
drop table tbtrans_branch     cascade constraints;
drop table tbsubtrans         cascade constraints;
drop table tbuser_prdtype     cascade constraints;
   
drop table tbacccfm           cascade constraints;  
drop table tbacccfmtmp        cascade constraints; 
drop table tbaccrange         cascade constraints; 
drop table tbaccreq           cascade constraints;
drop table tbaccreqbak        cascade constraints;
drop table tbaccreqexp        cascade constraints;
drop table tbagio             cascade constraints; 
drop table tbassetacc         cascade constraints;
drop table tbassetacctmp      cascade constraints;
drop table tbautoinvest       cascade constraints;
drop table tbbackupinfo       cascade constraints;
drop table tbbankacc          cascade constraints;
drop table tbbankbatch        cascade constraints;
drop table tbbankinfo         cascade constraints;
drop table tbbanklimit        cascade constraints;
drop table tbbatch            cascade constraints;
drop table tbbatcherr         cascade constraints;
drop table tbbkcomp           cascade constraints;
drop table tbbkcompdetail     cascade constraints;
drop table tbriskscore        cascade constraints;
drop table tbbulletin         cascade constraints;
drop table tbchangecard       cascade constraints;
drop table tbclient           cascade constraints;
drop table tbclientagio       cascade constraints;
drop table tbclientmanager    cascade constraints;
drop table tbclientnochg      cascade constraints;
drop table tbclienttrade      cascade constraints;
drop table tbcombreq          cascade constraints;
drop table tbcombshare        cascade constraints;
drop table tbdict             cascade constraints;   
drop table tbdictmap          cascade constraints;
drop table tbdivdetail        cascade constraints;
drop table tbdivdetailtmp     cascade constraints;
drop table tberrormsg         cascade constraints; 
drop table tbexchangerate     cascade constraints;
drop table tbfeerate          cascade constraints;
drop table tbfieldmap         cascade constraints;
drop table tbfileinfo         cascade constraints;
drop table tbfiletype         cascade constraints;
drop table tbfrozen           cascade constraints; 
drop table tbfrozenbak        cascade constraints;
drop table tbfundfiles        cascade constraints;
drop table tbgroupagio        cascade constraints;
drop table tbgroupcode        cascade constraints;
drop table tbhostrisk         cascade constraints;                 
drop table tbinstinfo         cascade constraints;
drop table tbissamt           cascade constraints;
drop table tblogs             cascade constraints;
drop table tbparam            cascade constraints;
drop table tbprdbranchallow   cascade constraints;
drop table tbprdchandisc      cascade constraints;
drop table tbprddaily         cascade constraints;
drop table tbprddailytmp      cascade constraints;
drop table tbprdfare          cascade constraints;
drop table tbprdfaredisc      cascade constraints;
drop table tbprdfaredistrib   cascade constraints;
drop table tbprdsell          cascade constraints;
drop table tbproduct          cascade constraints;
drop table tbpubexchrate      cascade constraints;
drop table tbsequence         cascade constraints;
drop table tbsellerinfo       cascade constraints;
drop table tbshare            cascade constraints;
drop table tbsharebak         cascade constraints;
drop table tbsharechg         cascade constraints;
drop table tbsharecompare     cascade constraints;
drop table tbshareerr         cascade constraints;
drop table tbsharedetail      cascade constraints;
drop table tbsharedetailbak   cascade constraints;
drop table tbsharedetailtmp   cascade constraints;
drop table tbsharetmp         cascade constraints;
drop table tbsquare           cascade constraints;
drop table tbsquarebak        cascade constraints;
drop table tbsumdetail        cascade constraints;
drop table tbswitchrate       cascade constraints;
drop table tbsysarg           cascade constraints;
drop table tbtaacc            cascade constraints;
drop table tbtadict           cascade constraints;
drop table tbtaerrmsg         cascade constraints; 
drop table tbtainfo           cascade constraints;                        
drop table tbtrans            cascade constraints;
drop table tbtranscfm         cascade constraints;
drop table tbtranscfmtmp      cascade constraints;
drop table tbtransday         cascade constraints;
drop table tbtransreq         cascade constraints;
drop table tbtransreqbak      cascade constraints;
drop table tbtransreqexp      cascade constraints;
drop table tbtransstatus      cascade constraints;
drop table tbmonitor          cascade constraints;
drop table tbuserlimit        cascade constraints;
drop table tbuserreq          cascade constraints;
drop table tbprdmanager       cascade constraints;
drop table tbprdextend        cascade constraints;
drop table tbprdbankacc       cascade constraints;

--历史库表
drop table his_tbaccreq       cascade constraints;
drop table his_tbbanklimit    cascade constraints;
drop table his_tbbkcomp       cascade constraints;
drop table his_tbbkcompdetail cascade constraints;
drop table his_tbcashhz       cascade constraints;
drop table his_tbcjhz         cascade constraints;
drop table his_tbclientpro    cascade constraints;
drop table his_tbdivdetail    cascade constraints;
drop table his_tbfeyehz       cascade constraints;
drop table his_tbfrozen       cascade constraints;
drop table his_tbfundfiles    cascade constraints;
drop table his_tbglfhz        cascade constraints; 
drop table his_tbhzshz        cascade constraints;
drop table his_tbkhgxd        cascade constraints;
drop table his_tbkhjljyhz     cascade constraints;
drop table his_tbkhjlzhhz     cascade constraints;
drop table his_tbkxhhz        cascade constraints;
drop table his_tblogs         cascade constraints;
drop table his_tbmonitor      cascade constraints;
drop table his_tbprddaily     cascade constraints;
drop table his_tbprdlimit     cascade constraints;
drop table his_tbqqhz         cascade constraints;
drop table his_tbqrhz         cascade constraints;
drop table his_tbqshz         cascade constraints;
drop table his_tbqyfphz       cascade constraints;
drop table his_tbqyhshz       cascade constraints;
drop table his_tbqyjyhz       cascade constraints;
drop table his_tbsharechg     cascade constraints;
drop table his_tbsharedetail  cascade constraints;
drop table his_tbshareerr     cascade constraints;
drop table his_tbsquare       cascade constraints;
drop table his_tbsxfhz        cascade constraints;
drop table his_tbtahshz       cascade constraints;
drop table his_tbtransreq     cascade constraints;
drop table his_tbdatatocsrc   cascade constraints;


/*==============================================================*/
/* Table: tbuser_role                                           */
/*==============================================================*/
create table tbuser_role  (
   role_id            CHAR(8)                         not null,
   user_id            CHAR(16)                        not null
);
alter table tbuser_role
   add constraint PK_TBUSER_ROLE primary key (role_id, user_id);

/*==============================================================*/
/* Table: tbrole                                                */
/*==============================================================*/
create table tbrole  (
   role_id            CHAR(8)                        not null,
   role_name          VARCHAR2(60)                   default ' ' not null,
   remark             VARCHAR2(100)                  default ' ' not null,
   role_user          CHAR(16)                       not null
);
alter table tbrole
   add constraint PK_TBROLE primary key (role_id);

/*==============================================================*/
/* Table: tbuser                                                */
/*==============================================================*/
create table tbuser  (
   user_id            CHAR(16)                       not null,
   user_name          VARCHAR2(60)                   default ' ' not null,
   status             CHAR(1)                        default ' ' not null,
   password           CHAR(16)                       default '888888' not null,
   branch_no          CHAR(16)                       default ' ' not null,
   open_date          INTEGER                        default 0 not null,
   cancel_date        INTEGER                        default 0 not null,
   passwd_date        INTEGER                        not null,
   op_group           CHAR(1)                        default ' ' not null,
   op_rights          VARCHAR2(50)                   default ' ' not null,
   reserve1           VARCHAR2(100)                  default ' ' not null,
   user_prdattrs      CHAR(30)                       default ' ' not null,
   staff_no           CHAR(16)                       default ' ' not null
);
alter table tbuser
   add constraint PK_TBUSER primary key (user_id);

/*==============================================================*/
/* Index: idx_user                                              */
/*==============================================================*/
create index idx_user on tbuser (
   branch_no ASC
);

/*==============================================================*/
/* Table: tbrole_trans                                          */
/*==============================================================*/
create table tbrole_trans  (
   role_id            CHAR(8)                         not null,
   trans_code         CHAR(30)                        not null
);
alter table tbrole_trans
   add constraint PK_TBROLE_TRANS primary key (role_id, trans_code);

/*==============================================================*/
/* Table: tbtransaction                                         */
/*==============================================================*/
create table tbtransaction  (
   trans_code         CHAR(30)                       not null,
   trans_name         VARCHAR2(60)                   default ' ' not null,
   trans_kind         CHAR(1)                        default ' ' not null,
   remark             VARCHAR2(100)                  default ' ' not null
);
alter table tbtransaction
   add constraint PK_TBTRANSACTION primary key (trans_code);

/*==============================================================*/
/* Table: tbuser_trans                                          */
/*==============================================================*/
create table tbuser_trans  (
   user_id            CHAR(16)                        not null,
   trans_code         CHAR(30)                        not null
);
alter table tbuser_trans
   add constraint PK_TBUSER_TRANS primary key (user_id, trans_code);

/*==============================================================*/
/* Table: tbuser_branch                                         */
/*==============================================================*/
create table tbuser_branch  (
   user_id            CHAR(16)                        not null,
   branch_no          CHAR(16)                        not null
);
alter table tbuser_branch
   add constraint PK_TBUSER_BRANCH primary key (user_id, branch_no);

/*==============================================================*/
/* Table: tbbranch                                              */
/*==============================================================*/
create table tbbranch  (
   internal_branch    CHAR(12)                       default ' ' not null,
   branch_no          CHAR(16)                       not null,
   branch_name        VARCHAR2(60)                   default ' ' not null,
   short_name         CHAR(20)                       default ' ' not null,
   up_branch          CHAR(16)                       default ' ' not null,
   branch_level       CHAR(2)                        default ' ' not null,
   branch_kind        CHAR(1)                        default ' ' not null,
   branch_trans       VARCHAR2(100)                  default ' ' not null,
   reserve1           VARCHAR2(100)                  default ' ' not null
);
alter table tbbranch
   add constraint PK_TBBRANCH primary key (branch_no);

/*==============================================================*/
/* Index: idx_branch                                            */
/*==============================================================*/
create index idx_branch on tbbranch (
   internal_branch ASC
);

/*==============================================================*/
/* Table: tbtrans_branch                                        */
/*==============================================================*/
create table tbtrans_branch  (
   user_id            CHAR(16)                        not null,
   trans_code         CHAR(30)                        not null,
   branch_no          CHAR(16)                        not null
);
alter table tbtrans_branch
   add constraint PK_TBTRANS_BRANCH primary key (user_id, trans_code, branch_no);

/*==============================================================*/
/* Table: tbsubtrans                                            */
/*==============================================================*/
create table tbsubtrans  (
   trans_code         CHAR(30)                        not null,
   sub_trans_code     CHAR(3)                         not null,
   auth_id            CHAR(1)                         default ' ' not null,
   logon_id           CHAR(1)                         default ' ' not null,
   action_class       VARCHAR2(60)                    default ' ' not null,
   return_page        VARCHAR2(60)                    default ' ' not null
);
alter table tbsubtrans
   add constraint PK_TBSUBTRANS primary key (trans_code, sub_trans_code);

/*==============================================================*/
/* Table: tbuser_prdtype                                        */
/*==============================================================*/
create table tbuser_prdtype  (
   user_id            CHAR(16)                        not null,
   prd_type           CHAR(1)                         not null
);
alter table tbuser_prdtype
   add constraint PK_TBUSER_PRDTYPE primary key (user_id, prd_type);

/*==============================================================*/
/* Table: tbinstinfo                                            */
/*==============================================================*/
create table tbinstinfo  (
   client_no          CHAR(20)                        not null,
   inst_type          CHAR(1)                         not null,
   repr_name          CHAR(20)                        not null,
   repr_id_type       CHAR(1)                         not null,
   repr_id_code       CHAR(20)                        not null,
   actor_name         CHAR(20)                        not null,
   actor_id_type      CHAR(1)                         not null,
   actor_id_code      CHAR(18)                        not null,
   link_name          CHAR(20)                        not null,
   link_id_type       CHAR(1)                         not null,
   link_id_code       CHAR(18)                        not null,
   reserve1           VARCHAR2(100)                   not null
);
alter table tbinstinfo
   add constraint PK_TBINSTINFO primary key (client_no);

/*==============================================================*/
/* Table: tbclient                                              */
/*==============================================================*/
create table tbclient  (
   client_no          CHAR(20)                        not null,
   bank_no            CHAR(2)                         not null,
   b_client_no        CHAR(20)                        not null,
   client_type        CHAR(1)                         not null,
   client_group       CHAR(1)                         not null,
   id_type            CHAR(1)                         not null,
   id_code            CHAR(30)                        not null,
   short_name         CHAR(40)                        not null,
   client_name        VARCHAR2(100)                    not null,
   address            VARCHAR2(60)                    not null,
   post_code          CHAR(6)                         not null,
   tel                CHAR(15)                        not null,
   fax                CHAR(15)                        not null,
   mobile             CHAR(15)                        not null,
   email              CHAR(40)                        not null,
   sex                CHAR(1)                         not null,
   send_freq          CHAR(1)                         not null,
   send_mode          CHAR(8)                         not null,
   modi_date          INTEGER                         not null,
   modi_time          INTEGER                         not null,
   status             CHAR(1)                         not null,
   reserve1           VARCHAR2(100)                   not null,
   risk_level         INTEGER                         not null,
   branch_no          CHAR(16)                        not null,
   client_manager     CHAR(16)                        not null,
   open_date          INTEGER                         not null,
   prd_types          CHAR(16)                        not null,
   area               CHAR(3)                         not null,
   client_attr        CHAR(1)                         not null  
);
alter table tbclient
   add constraint PK_TBCLIENT primary key (client_no);

/*==============================================================*/
/* Index: idx_client                                            */
/*==============================================================*/
create index idx_client on tbclient (
   id_code ASC,
   id_type ASC
);

/*==============================================================*/
/* Table: tbbankacc                                             */
/*==============================================================*/
create table tbbankacc  (
   bank_acc           CHAR(32)                        not null,
   client_no          CHAR(20)                        not null,
   branch_no          CHAR(16)                        not null,
   acc_type           CHAR(3),
   acc_limit          NUMERIC(16, 2),
   reserve1           VARCHAR(100)
);
alter table tbbankacc
   add constraint PK_TBBANKACC primary key (bank_acc);

/*==============================================================*/
/* Index: idx_bankkacc                                          */
/*==============================================================*/
create index idx_bankkacc on tbbankacc (
   client_no ASC
);

/*==============================================================*/
/* Table: tbassetacc                                            */
/*==============================================================*/
create table tbassetacc  (
   client_no          CHAR(20)                        not null,
   ta_code            CHAR(12)                        not null,
   asset_acc          CHAR(20)                        not null,
   client_manager     CHAR(16)                        not null,
   bank_acc           CHAR(32)                        not null,
   branch_no          CHAR(16)                        not null,
   open_date          INTEGER                         not null,
   send_freq          CHAR(1)                         not null,
   send_mode          CHAR(8)                         not null,
   status             CHAR(1)                         not null,
   open_flag          CHAR(1)                         not null,
   reserve1           VARCHAR2(100)                   not null,
   ta_client          CHAR(20)                        not null,
   open_branch        CHAR(16)                        not null,
   signoff_date       INTEGER                         not null,
   prd_type           CHAR(1)                         not null
);
alter table tbassetacc
   add constraint PK_TBASSETACC primary key (client_no, ta_code);

/*==============================================================*/
/* Index: idx_assetacc                                          */
/*==============================================================*/
create index idx_assetacc on tbassetacc (
   ta_code ASC,
   asset_acc ASC
);

/*==============================================================*/
/* Index: idx_assetacc2                                         */
/*==============================================================*/
create index idx_assetacc2 on tbassetacc (
   branch_no ASC
);

/*==============================================================*/
/* Index: idx_assetacc3                                         */
/*==============================================================*/
create index idx_assetacc3 on tbassetacc (
   bank_acc ASC
);

/*==============================================================*/
/* Index: idx_assetacc4                                         */
/*==============================================================*/
create index idx_assetacc4 on tbassetacc (
   ta_client ASC
);

/*==============================================================*/
/* Index: idx_assetacc5                                         */
/*==============================================================*/
create index idx_assetacc5 on tbassetacc (
   asset_acc ASC
);

/*==============================================================*/
/* Table: tbsysarg                                              */
/*==============================================================*/
create table tbsysarg  (
   seller_code        CHAR(3)                        not null,
   bank_name          VARCHAR2(60)                   not null,
   system_name        VARCHAR2(60)                   default ' ' not null,
   bank_short_name    CHAR(20)                       default ' ' not null,
   prev_date          INTEGER                        default 0   not null,
   init_date          INTEGER                        default 0   not null,
   back_date          INTEGER                        default 0   not null,
   rights             VARCHAR2(50)                   default ' ' not null,
   unfrozen_flag      CHAR(1)                        not null,
   holddays           INTEGER                        not null,
   status             CHAR(1)                        default ' ' not null,
   befbkup_date       INTEGER                        default 0   not null,
   aftbkup_date       INTEGER                        default 0   not null,
   hisbkup_date       INTEGER                        default 0   not null,
   fstunloadbeg_date  INTEGER                        not null,
   sharechg_days      INTEGER                        not null,
   reserve1           VARCHAR2(100)                  default ' ' not null
);

/*==============================================================*/
/* Table: tbparam                                               */
/*==============================================================*/
create table tbparam  (
   busin_kind         CHAR(1)                         not null,
   ta_code            CHAR(12)                        not null,
   param_id           CHAR(20)                        not null,
   param_value        VARCHAR2(100)                   default ' ' not null,
   param_field        VARCHAR2(100)                   default ' ' not null,
   param_name         VARCHAR2(250)                   default ' ' not null
);
alter table tbparam
   add constraint PK_TBPARAM primary key (busin_kind, ta_code, param_id);

/*==============================================================*/
/* Table: tbaccrange                                            */
/*==============================================================*/
create table tbaccrange  (
   ta_code            CHAR(12)                         not null,
   start_no           DECIMAL(12,0)                    not null,
   end_code           DECIMAL(12,0)                    not null,
   curr_no            DECIMAL(12,0)                    not null,
   gen_func           CHAR(20)                         not null
);
alter table tbaccrange
   add constraint PK_TBACCRANGE primary key (ta_code);

/*==============================================================*/
/* Table: tbtransday                                            */
/*==============================================================*/
create table tbtransday  (
   date_type          CHAR(1)                         not null,
   asso_code          CHAR(12)                        not null,
   trans_date         INTEGER                         not null
);
alter table tbtransday
   add constraint PK_TBTRANSDAY primary key (trans_date, asso_code, date_type);

/*==============================================================*/
/* Table: tbprdfare                                             */
/*==============================================================*/
create table tbprdfare  (
   ta_code            CHAR(12)                        not null,
   fare_type          CHAR(1)                         not null,
   client_group       CHAR(1)                         not null,
   calc_type          CHAR(1)                         default ' ' not null,
   curr_type          CHAR(3)                         default ' ' not null,
   mini_fare          DECIMAL(13,3)                   default 0 not null,
   maxi_fare          DECIMAL(13,3)                   default 0 not null,
   balance_ratio      DECIMAL(9,8)                    default 0 not null,
   face_value_ratio   DECIMAL(9,8)                    default 0 not null,
   reserve1           VARCHAR2(100)                   default ' ' not null
);
alter table tbprdfare
   add constraint PK_TBPRDFARE primary key (ta_code, fare_type, client_group);

/*==============================================================*/
/* Table: tbdict                                                */
/*==============================================================*/
create table tbdict  (
   hs_key             CHAR(10)                        not null,
   val                CHAR(8)                         not null,
   prompt             VARCHAR2(60)                    default ' ' not null
);
alter table tbdict
   add constraint PK_TBDICT primary key (hs_key, val);

/*==============================================================*/
/* Table: tberrormsg                                            */
/*==============================================================*/
create table tberrormsg  (
   err_code           CHAR(7)                         not null,
   err_msg            VARCHAR2(100)                   default ' ' not null
);
alter table tberrormsg
   add constraint PK_TBERRORMSG primary key (err_code);

/*==============================================================*/
/* Table: tbsequence                                            */
/*==============================================================*/
create table tbsequence  (
   hs_key             CHAR(20)                        not null,
   curr_value         INTEGER                         default 0 not null,
   inc                INTEGER                         default 1 not null,
   auto_zero          INTEGER                         not null,
   max_value          INTEGER                         not null,
   min_value          INTEGER                         not null
);
alter table tbsequence
   add constraint PK_TBSEQUENCE primary key (hs_key);

/*==============================================================*/
/* Table: tbprdbranchallow                                      */
/*==============================================================*/
create table tbprdbranchallow  (
   prd_code           CHAR(12)                        not null,
   branch_no          CHAR(16)                        not null
);
alter table tbprdbranchallow
   add constraint PK_TBPRDBRANCHALLOW primary key (prd_code, branch_no);

/*==============================================================*/
/* Table: tbagio                                                */
/*==============================================================*/
create table tbagio  (
   prd_code           CHAR(12)                        not null,
   trans_code         CHAR(6)                         not null,
   channel            CHAR(1)                         not null,
   min_amt            DECIMAL(16,2)                   not null,
   max_amt            DECIMAL(16,2)                   not null,
   agio               DECIMAL(5,4)                    not null,
   start_date         INTEGER                         default 0 not null,
   end_date           INTEGER                         default 0 not null
);
alter table tbagio
   add constraint PK_TBAGIO primary key (prd_code, trans_code, channel, min_amt, start_date, end_date);

/*==============================================================*/
/* Table: tbprdfaredistrib                                      */
/*==============================================================*/
create table tbprdfaredistrib  (
   prd_code           CHAR(12)                         not null,
   trans_code         CHAR(6)                          not null,
   saler_rate         DECIMAL(5,4)                     not null,
   open_rate          DECIMAL(5,4)                     not null,
   trans_rate         DECIMAL(5,4)                     not null,
   head_rate          DECIMAL(5,4)                     not null
);
alter table tbprdfaredistrib
   add constraint PK_TBPRDFAREDISTRIB primary key (prd_code, trans_code);

/*==============================================================*/
/* Table: tbsharechg                                            */
/*==============================================================*/
create table tbsharechg  (
   cfm_date           INTEGER                         not null,
   ta_code            CHAR(12)                        not null,
   cfm_no             CHAR(24)                        not null,
   prd_code           CHAR(12)                        not null,
   client_no          CHAR(20)                        not null,
   vol                DECIMAL(16,3)                   not null,
   frozen_vol         DECIMAL(16,3)                   not null,
   source_flag        CHAR(1)                         not null,
   trans_date         INTEGER                         not null,
   serial_no          CHAR(24)                        not null,
   internal_code      CHAR(24)                        not null,
   seller_code        CHAR(3)                         not null,
   asset_acc          CHAR(20)                        not null,
   bank_acc           CHAR(32)                        not null,
   prd_amt            DECIMAL(16,2)                   not null,
   bank_amt           DECIMAL(16,2)                   not null,
   open_branch        CHAR(16)                        default ' ' not null,
   trans_branch       CHAR(16)                        not null,
   client_type        CHAR(1)                         not null,
   sub_nav            DECIMAL(12,8)                   not null,
   red_detail_type    CHAR(1)                         not null,
   div_mode           CHAR(2)                         not null,
   prd_type           CHAR(1)                         not null,
   long_frozen_vol    DECIMAL(16,3)                   not null,
   face_value         DECIMAL(9,4)                    not null,
   trans_amt          DECIMAL(16,2)                   null,
   cash_flag          CHAR(1)                         not null,
   reserve1           VARCHAR2(100)                   not null,
   reserve2           VARCHAR2(100)                   not null,
   reserve3           VARCHAR2(100)                   not null
);

/*==============================================================*/
/* Index: idx_sharechg                                          */
/*==============================================================*/
create index idx_sharechg on tbsharechg (
   cfm_date ASC,
   ta_code ASC,
   prd_code ASC,
   client_no ASC
);

/*==============================================================*/
/* Table: tbdivdetail                                           */
/*==============================================================*/
create table tbdivdetail  (
   cfm_date           INTEGER    ,
   cfm_no             CHAR(24)                        not null,
   ta_code            CHAR(12),
   client_no          CHAR(20),
   asset_acc          CHAR(20)                        not null,
   prd_code           CHAR(12)                        not null,
   tot_vol            DECIMAL(19,3),
   div_per_unit       DECIMAL(24,6),
   div_mode           CHAR(1),
   curr_type          CHAR(3),
   tot_div_amt        DECIMAL(18,2),
   cfm_amt            DECIMAL(18,2),
   nav                DECIMAL(20,8),
   div_vol            DECIMAL(19,3),
   frozen_amt         DECIMAL(18,2),
   frozen_vol         DECIMAL(19,3),
   charge             DECIMAL(16,2),
   agency_fee         DECIMAL(16,2),
   stamp_tax          DECIMAL(16,2),
   other_fee1         DECIMAL(18,2),
   other_fee2         DECIMAL(18,2),
   reg_date           INTEGER    ,
   div_date           INTEGER    ,
   xr_date            INTEGER    ,
   bank_acc           CHAR(32),
   open_branch        CHAR(16),
   branch_no          CHAR(16),
   client_type        CHAR(1)
);

/*==============================================================*/
/* Index: idx_divdetial                                       */
/*==============================================================*/
create index idx_divdetial on tbdivdetail (
   ta_code ASC,
   asset_acc ASC,
   prd_code ASC
);

/*==============================================================*/
/* Table: tbdivdetailtmp                                        */
/*==============================================================*/
create table tbdivdetailtmp  (
   cfm_date           INTEGER    ,
   cfm_no             CHAR(24)                        not null,
   ta_code            CHAR(12),
   client_no          CHAR(20),
   asset_acc          CHAR(20)                        not null,
   prd_code           CHAR(12)                        not null,
   tot_vol            DECIMAL(19,3),
   div_per_unit       DECIMAL(24,6),
   div_mode           CHAR(1),
   curr_type          CHAR(3),
   tot_div_amt        DECIMAL(18,2),
   cfm_amt            DECIMAL(18,2),
   nav                DECIMAL(20,8),
   div_vol            DECIMAL(19,3),
   frozen_amt         DECIMAL(18,2),
   frozen_vol         DECIMAL(19,3),
   charge             DECIMAL(16,2),
   agency_fee         DECIMAL(16,2),
   stamp_tax          DECIMAL(16,2),
   other_fee1         DECIMAL(18,2),
   other_fee2         DECIMAL(18,2),
   reg_date           INTEGER    ,
   div_date           INTEGER    ,
   xr_date            INTEGER    ,
   bank_acc           CHAR(32),
   open_branch        CHAR(16),
   branch_no          CHAR(16),
   client_type        CHAR(1),
   asso_serial        CHAR(24)                         not null,
   cash_flag          CHAR(1)                    
);

/*==============================================================*/
/* Table: tbshareerr                                            */
/*==============================================================*/
create table tbshareerr  (
   comp_date          INTEGER                         not null,
   client_no          CHAR(20)                        not null,
   ta_code            CHAR(12)                        not null,
   prd_code           CHAR(12)                        not null,
   asset_acc          CHAR(20)                        not null,
   ta_vol             DECIMAL(16,3)                   not null,
   ta_frozen_vol      DECIMAL(16,3)                   not null,
   vol                DECIMAL(16,3)                   not null,
   frozen_vol         DECIMAL(16,3)                   not null,
   unequa_flag        CHAR(1)                         not null,
   cfm_no             CHAR(24)                        not null
);
alter table tbshareerr
   add constraint PK_TBSHAREERR primary key (comp_date, client_no, ta_code, prd_code);

/*==============================================================*/
/* Table: tbfrozen                                              */
/*==============================================================*/
create table tbfrozen  (
   frozen_date        INTEGER                         not null,
   frozen_serial      CHAR(24)                        not null,
   frozen_cfm_no      CHAR(24)                        not null,
   ta_code            CHAR(12)                        not null,
   client_no          CHAR(20)                        not null,
   bank_acc           CHAR(32)                        not null,
   asset_acc          CHAR(20)                        not null,
   trans_code         CHAR(6)                         not null,
   prd_code           CHAR(12)                        not null,
   frozen_vol         DECIMAL(16,3)                   not null,
   frozen_cause       CHAR(1)                         not null,
   end_date           INTEGER                         not null,
   frozen_branch      CHAR(16)                        not null,
   org_name           VARCHAR2(60)                    not null,
   frozen_law_no      CHAR(24)                        not null,
   unfrzn_law_no      CHAR(24)                        not null,
   unfrozen_date      INTEGER                         not null,
   unfrozen_serial    CHAR(24)                        not null,
   unfrozen_cfm_no    CHAR(24)                        not null,
   cfm_date           INTEGER                         not null,
   status             CHAR(1)                         not null
);
alter table tbfrozen
   add constraint PK_TBFROZEN primary key (frozen_date, frozen_serial);

/*==============================================================*/
/* Index: idx_frozen                                            */
/*==============================================================*/
create index idx_frozen on tbfrozen (
   ta_code ASC,
   status ASC
);

/*==============================================================*/
/* Table: tbcombshare                                           */
/*==============================================================*/
create table tbcombshare  (
   cfm_date           INTEGER                         not null,
   cfm_serial         CHAR(24)                        not null,
   req_serial         CHAR(24)                        not null,
   group_serial       CHAR(24)                        not null,
   trans_code         CHAR(6),
   prd_code           CHAR(12)                        not null,
   client_no          CHAR(20)                        not null,
   bank_acc           CHAR(32)                        not null,
   vol                DECIMAL(16,3)                   not null,
   amt                DECIMAL(16,2)                   not null,
   status             CHAR(1)                         not null
);
alter table tbcombshare
   add constraint PK_TBCOMBSHARE primary key (req_serial);

/*==============================================================*/
/* Table: tbacccfm                                              */
/*==============================================================*/
create table tbacccfm  (
   ta_code            CHAR(12)                        not null,
   cfm_date           INTEGER                         not null,
   cfm_no             CHAR(24)                        not null,
   from_flag          CHAR(1)                         not null,
   trans_date         INTEGER                         not null,
   trans_time         INTEGER                         not null,
   serial_no          CHAR(24)                        not null,
   trans_code         CHAR(6)                         not null,
   busin_code         CHAR(6)                         not null,
   branch_no          CHAR(16)                        not null,
   open_branch        CHAR(16)                        not null,
   channel            CHAR(1)                         not null,
   term_no            CHAR(16)                        not null,
   oper_no            CHAR(16)                        not null,
   client_no          CHAR(20)                        not null,
   asset_acc          CHAR(20)                        not null,
   bank_acc           CHAR(32)                        not null,
   client_type        CHAR(1)                         not null,
   sex                CHAR(1)                         not null,
   id_type            CHAR(1)                         not null,
   id_code            CHAR(30)                        not null,
   client_name        VARCHAR2(100)                    not null,
   short_name         CHAR(40)                        not null,
   birthday           INTEGER                         not null,
   address            VARCHAR2(60)                    not null,
   post_code          CHAR(6)                         not null,
   mobile             CHAR(15)                        not null,
   tel                CHAR(15)                        not null,
   fax                CHAR(15)                        not null,
   email              CHAR(40)                        not null,
   send_freq          CHAR(1)                         not null,
   send_mode          CHAR(8)                         not null,
   div_mode           CHAR(1)                         not null,
   asso_date          INTEGER                         not null,
   frozen_cause       CHAR(1)                         not null,
   acc_card_no        CHAR(8)                         not null,
   summary            CHAR(30)                        not null,
   asso_serial        CHAR(24)                        not null,
   err_code           CHAR(7)                         not null,
   status             CHAR(1)                         not null,
   prd_type           CHAR(1)                         not null
);

/*==============================================================*/
/* Index: idx_acccfm                                            */
/*==============================================================*/
create index idx_acccfm on tbacccfm (
   cfm_date ASC
);

/*==============================================================*/
/* Index: idx_acccfm2                                           */
/*==============================================================*/
create index idx_acccfm2 on tbacccfm (
   client_no ASC
);

/*==============================================================*/
/* Table: tbcombreq                                             */
/*==============================================================*/
create table tbcombreq  (
   trans_date         INTEGER                         not null,
   group_serial       CHAR(24)                        not null,
   trans_time         INTEGER                         not null,
   client_no          CHAR(20)                        not null,
   bank_acc           CHAR(32)                        not null,
   group_code         CHAR(6)                         not null,
   group_red_serial   CHAR(24)                        not null,
   amt                DECIMAL(16,2)                   not null,
   status             CHAR(1)                         not null
);
alter table tbcombreq
   add constraint PK_TBCOMBREQ primary key (trans_date, group_serial);

/*==============================================================*/
/* Table: tbdictmap                                             */
/*==============================================================*/
create table tbdictmap  (
   templet            CHAR(6)                         not null,
   key_no             CHAR(10)                        not null,
   direction          CHAR(1)                         not null,
   source             CHAR(8)                         not null,
   val                CHAR(8)                         not null,
   prompt             VARCHAR2(60)                    not null
);
alter table tbdictmap
   add constraint PK_TBDICTMAP primary key (templet, key_no, direction, source);

/*==============================================================*/
/* Table: tbmonitor                                             */
/*==============================================================*/
create table tbmonitor  (
   log_serial         INTEGER                         not null,
   client_no          CHAR(20)                        not null,
   trans_code         CHAR(6)                         not null,
   trans_name         VARCHAR2(60)                    not null,
   account            CHAR(32)                        not null,
   ta_code            CHAR(12)                        not null,
   prd_code           CHAR(12)                        not null,
   amt                DECIMAL(16,2)                   not null,
   vol                DECIMAL(16,3)                   not null,
   err_code           CHAR(7)                         not null,
   err_msg            VARCHAR2(100)                   not null,
   branch_no          CHAR(16)                        not null,
   oper_no            CHAR(16)                        not null,
   channel            CHAR(1)                         not null,
   trans_date         INTEGER                         not null,
   serial_no          CHAR(24)                        not null,
   trans_type         CHAR(1)                         not null,
   begin_time         INTEGER                         not null,
   end_time           INTEGER                         not null,
   oltp_time          INTEGER                         not null,
   bank_time          INTEGER                         not null,
   secu_time          INTEGER                         not null
);

/*==============================================================*/
/* Index: idx_monitor                                           */
/*==============================================================*/
create index idx_monitor on tbmonitor (
   account ASC
);

/*==============================================================*/
/* Index: idx_monitor2                                          */
/*==============================================================*/
create index idx_monitor2 on tbmonitor (
   trans_type ASC
);

/*==============================================================*/
/* Index: idx_monitor3                                          */
/*==============================================================*/
create index idx_monitor3 on tbmonitor (
   client_no ASC
);

/*==============================================================*/
/* Table: tbsharecompare                                        */
/*==============================================================*/
create table tbsharecompare  (
   comp_date          INTEGER    ,
   serial_no          CHAR(24), 
   client_no          CHAR(20),
   ta_code            CHAR(12),
   asset_acc          CHAR(20),
   prd_code           CHAR(12),
   ta_vol             DECIMAL(16,3),
   ta_available_vol   DECIMAL(16,3),
   ta_frozen_vol      DECIMAL(16,3),
   detail_flag        CHAR(1),
   vol                DECIMAL(16,3),
   frozen_vol         DECIMAL(16,3),
   cfm_no             CHAR(24)
);

/*==============================================================*/
/* Index: idx_sharecompare                                      */
/*==============================================================*/
create index idx_sharecompare on tbsharecompare (
   ta_code ASC,
   asset_acc ASC,
   prd_code ASC
);

/*==============================================================*/
/* Table: tbprddaily                                            */
/*==============================================================*/
create table tbprddaily  (
   iss_date           INTEGER                         not null,
   prd_code           CHAR(12)                        not null,
   ta_code            CHAR(12)                        not null,
   prd_scale          DECIMAL(18,2)                   not null,
   tot_vol            DECIMAL(18,3)                   not null,
   nav                DECIMAL(12,8)                   not null,
   face_value         DECIMAL(9,4)                    not null,
   larg_red_flag      CHAR(1)                         not null,
   income_rate        DECIMAL(16,4)                   not null,
   income             DECIMAL(16,4)                   not null,
   income_unit        DECIMAL(16,4)                   not null,
   conv_flag          CHAR(1)                         not null,
   status             CHAR(1)                         not null,
   tot_nav            DECIMAL(12,8)
);
alter table tbprddaily
   add constraint PK_TBPRDDAILY primary key (iss_date, prd_code);

/*==============================================================*/
/* Table: tbfieldmap                                            */
/*==============================================================*/
create table tbfieldmap  (
   templet            CHAR(6)                         not null,
   file_type          CHAR(2)                         not null,
   idno               INTEGER                         not null,
   field_no           INTEGER                         not null,
   sys_field          CHAR(20)                        not null,
   key_no             CHAR(10)                        not null
);
alter table tbfieldmap
   add constraint PK_TBFIELDMAP primary key (templet, file_type, idno);

/*==============================================================*/
/* Table: tbtadict                                              */
/*==============================================================*/
create table tbtadict  (
   templet            CHAR(6)                         not null,
   idno               INTEGER                         not null,
   field_name         VARCHAR2(60)                    not null,
   data_type          CHAR(1)                         not null,
   field_len          INTEGER                         not null,
   scale              INTEGER                         not null,
   field_desc         CHAR(50)                        not null
);
alter table tbtadict
   add constraint PK_TBTADICT primary key (templet, idno);

/*==============================================================*/
/* Table: tbfiletype                                            */
/*==============================================================*/
create table tbfiletype  (
   ta_code            CHAR(12)                        not null,
   file_type          CHAR(2)                         not null,
   file_name          CHAR(50)                        not null,
   file_dir           CHAR(1)                         not null,
   table_name         CHAR(20)                        not null,
   describe           CHAR(20)                        not null
);
alter table tbfiletype
   add constraint PK_TBFILETYPE primary key (ta_code, file_type);

/*==============================================================*/
/* Table: tbautoinvest                                          */
/*==============================================================*/
create table tbautoinvest  (
   client_no          CHAR(20)                        not null,
   prd_code           CHAR(12)                        not null,
   trans_date         INTEGER                         not null,
   ta_code            CHAR(12)                        not null,
   amt                DECIMAL(16,2)                   not null,
   client_manager     CHAR(16)                        not null,
   invest_day         INTEGER                         not null,
   invest_times       INTEGER                         not null,
   remain_times       INTEGER                         not null,
   tot_times          INTEGER                         not null,
   fail_times         INTEGER                         not null,
   last_invest_date   INTEGER                         not null,
   last_msg           VARCHAR2(100)                   not null,
   agio               DECIMAL(5,4)                    not null
);
alter table tbautoinvest
   add constraint PK_TAUTOALLOT primary key (client_no, prd_code);

/*==============================================================*/
/* Table: tbacccfmtmp                                           */
/*==============================================================*/
create table tbacccfmtmp  (
   ta_code            CHAR(12),
   cfm_date           INTEGER    ,
   cfm_no             CHAR(24),
   from_flag          CHAR(1),
   trans_date         INTEGER    ,
   trans_time         INTEGER    ,
   serial_no          CHAR(24),
   trans_code         CHAR(6),
   busin_code         CHAR(6),
   branch_no          CHAR(16),
   open_branch        CHAR(16),
   channel            CHAR(1),
   term_no            CHAR(16),
   oper_no            CHAR(16),
   client_no          CHAR(20),
   asset_acc          CHAR(20),
   bank_acc           CHAR(32),
   client_type        CHAR(1),
   sex                CHAR(1),
   id_type            CHAR(1),
   id_code            CHAR(30),
   client_name        VARCHAR2(100),
   short_name         CHAR(40),
   birthday           INTEGER    ,
   address            VARCHAR2(60),
   post_code          CHAR(6),
   mobile             CHAR(15),
   tel                CHAR(15),
   fax                CHAR(15),
   email              CHAR(40),
   send_freq          CHAR(1),
   send_mode          CHAR(8),
   div_mode           CHAR(1),
   asso_date          INTEGER    ,
   frozen_cause       CHAR(1),
   acc_card_no        CHAR(8),
   summary            VARCHAR2(250),
   asso_serial        CHAR(24),
   err_code           CHAR(7),
   status             CHAR(1),
   prd_type           CHAR(1)
);

/*==============================================================*/
/* Index: idx_acccfmtmp                                         */
/*==============================================================*/
create index idx_acccfmtmp on tbacccfmtmp (
   ta_code ASC,
   cfm_no ASC
);

/*==============================================================*/
/* Table: tbchangecard                                          */
/*==============================================================*/
create table tbchangecard  (
   trans_date         INTEGER                         not null,
   client_no          CHAR(20)                        not null,
   bank_acc           CHAR(32)                        not null,
   newbank_acc        CHAR(32)                        not null,
   change_mode        CHAR(1)                         not null
);

/*==============================================================*/
/* Index: idx_changecard                                        */
/*==============================================================*/
create index idx_changecard on tbchangecard (
   trans_date ASC,
   client_no ASC
);

/*==============================================================*/
/* Table: tbgroupcode                                           */
/*==============================================================*/
create table tbgroupcode  (
   group_code         CHAR(6)                         not null,
   prd_code           CHAR(12)                        not null,
   rate               DECIMAL(5,4)                    not null
);
alter table tbgroupcode
   add constraint PK_TBGROUPCODE primary key (group_code,prd_code);

/*==============================================================*/
/* Table: tbbackupinfo                                          */
/*==============================================================*/
create table tbbackupinfo  (
   file_name          CHAR(50)                        not null,
   beg_date           INTEGER                         not null,
   end_date           INTEGER                         not null,
   load_flag          CHAR(1)                         not null
);
alter table tbbackupinfo
   add constraint PK_TBBACKUPINFO primary key (beg_date, end_date);

/*==============================================================*/
/* Table: tbtrans                                               */
/*==============================================================*/
create table tbtrans  (
   trans_code         CHAR(6)                        not null,
   trans_name         VARCHAR2(60)                   default ' ' not null,
   enable_flag        CHAR(1)                        default ' ' not null,
   channels           CHAR(10)                       not null,
   host_online        CHAR(1)                        default ' ' not null,
   prep_dll           VARCHAR2(100)                  default ' ' not null,
   main_dll           VARCHAR2(100)                  default ' ' not null,
   back_dll           VARCHAR2(100)                  default ' ' not null,
   trans_type         CHAR(1)                        not null,
   monitor_status     CHAR(1)                        not null,
   log_level          CHAR(1)                        not null,
   reserve1           VARCHAR2(100)                  default ' ' not null
);
alter table tbtrans
   add constraint PK_TBTRANS primary key (trans_code);

/*==============================================================*/
/* Table: tbtransstatus                                       */
/*==============================================================*/
create table tbtransstatus  (
   prd_code           CHAR(12)                        not null,
   trans_code         CHAR(6)                         not null,
   ta_code            CHAR(12)                        not null,
   prepro_flag        CHAR(1)                         not null,
   enable_flag        CHAR(1)                         default ' ' not null,
   ta_online          CHAR(1)                         default ' ' not null,
   exp_flag           CHAR(1)                         not null,
   status             CHAR(1)
);
alter table tbtransstatus
   add constraint PK_TBTRANSSTATUS primary key (prd_code, trans_code, ta_code);

/*==============================================================*/
/* Index: idx_transstatus                                       */
/*==============================================================*/
create index idx_transstatus on tbtransstatus (
   ta_code ASC
);

/*==============================================================*/
/* Table: tbtaerrmsg                                            */
/*==============================================================*/
create table tbtaerrmsg  (
   templet            CHAR(6)                         not null,
   ta_err_code        CHAR(4)                         not null,
   err_msg            VARCHAR2(100)                   not null,
   err_code           CHAR(7)                         not null
);
alter table tbtaerrmsg
   add constraint PK_TBTAERRMSG primary key (templet, ta_err_code);

/*==============================================================*/
/* Table: tbfileinfo                                            */
/*==============================================================*/
create table tbfileinfo  (
   trans_date         INTEGER                         not null,
   ta_code            CHAR(12)                        not null,
   file_type          CHAR(2)                         not null,
   file_dir           CHAR(1)                         not null,
   file_name          CHAR(80)                        not null,
   file_size          INTEGER                         not null,
   rec_num            INTEGER                         default 0,
   file_time          CHAR(8)                         not null,
   get_flag           CHAR(1)                         not null
);
alter table tbfileinfo
   add constraint PK_TBFILEINFO primary key (trans_date, ta_code, file_type);

/*==============================================================*/
/* Table: tbassetacctmp                                         */
/*==============================================================*/
create table tbassetacctmp  (
   ta_code            CHAR(12)                        not null,
   cfm_no             CHAR(24)                        not null,
   client_no          CHAR(20)                        not null,
   asset_acc          CHAR(20)                        not null,
   send_freq          CHAR(1)                         not null,
   send_mode          CHAR(8)                         not null,
   status             CHAR(1)                         not null
);
alter table tbassetacctmp
   add constraint PK_TBASSETACCTMP primary key (ta_code, cfm_no);

/*==============================================================*/
/* Index: idx_assetacctmp                                       */
/*==============================================================*/
create index idx_assetacctmp on tbassetacctmp (
   ta_code ASC,
   client_no ASC
);

/*==============================================================*/
/* Table: tbfrozenbak                                           */
/*==============================================================*/
create table tbfrozenbak  (
   frozen_date        INTEGER                         not null,
   frozen_serial      CHAR(24)                        not null,
   frozen_cfm_no      CHAR(24)                        not null,
   ta_code            CHAR(12)                        not null,
   client_no          CHAR(20)                        not null,
   bank_acc           CHAR(32)                        not null,
   asset_acc          CHAR(20)                        not null,
   trans_code         CHAR(6)                         not null,
   prd_code           CHAR(12)                        not null,
   frozen_vol         DECIMAL(16,3)                   not null,
   frozen_cause       CHAR(1)                         not null,
   end_date           INTEGER                         not null,
   frozen_branch      CHAR(16)                        not null,
   org_name           VARCHAR2(60)                    not null,
   frozen_law_no      CHAR(24)                        not null,
   unfrzn_law_no      CHAR(24)                        not null,
   unfrozen_date      INTEGER                         not null,
   unfrozen_serial    CHAR(24)                        not null,
   unfrozen_cfm_no    CHAR(24)                        not null,
   cfm_date           INTEGER                         not null,
   status             CHAR(1)                         not null
);
alter table tbfrozenbak
   add constraint PK_TBFROZENBAK primary key (frozen_date, frozen_serial);

/*==============================================================*/
/* Index: idx_frozenbak                                         */
/*==============================================================*/
create index idx_frozenbak on tbfrozenbak (
   ta_code ASC
);

/*==============================================================*/
/* Table: tbtranscfm                                            */
/*==============================================================*/
create table tbtranscfm  (
   cfm_date           INTEGER                         not null,
   ta_code            CHAR(12)                        not null,
   cfm_no             CHAR(24)                        not null,
   trans_code         CHAR(6)                         not null,
   busin_code         CHAR(6)                         not null,
   client_no          CHAR(20)                        not null,
   client_type        CHAR(1)                         not null,
   serial_no          CHAR(24)                        not null,
   amt                DECIMAL(16,2)                   not null,
   vol                DECIMAL(16,3)                   not null,
   cfm_amt            DECIMAL(16,2)                   not null,
   cfm_vol            DECIMAL(16,3)                   not null,
   clear_date         INTEGER                         not null,
   trans_date         INTEGER                         not null,
   trans_time         INTEGER                         not null,
   branch_no          CHAR(16)                        not null,
   open_branch        CHAR(16)                        not null,
   channel            CHAR(1)                         not null,
   oper_no            CHAR(16)                        not null,
   bank_acc           CHAR(32)                        not null,
   asset_acc          CHAR(20)                        not null,
   prd_code           CHAR(12)                        not null,
   curr_type          CHAR(3)                         not null,
   nav                DECIMAL(12,8)                   not null,
   price              DECIMAL(12,8)                   not null,
   agio               DECIMAL(5,4)                    not null,
   tot_fee            DECIMAL(16,2)                   not null,
   charge             DECIMAL(16,2)                   not null,
   stamp_tax          DECIMAL(16,2)                   not null,
   interest_tax       DECIMAL(16,2)                   not null,
   transfer_fee       DECIMAL(16,2)                   not null,
   agency_fee         DECIMAL(16,2)                   not null,
   back_fee           DECIMAL(16,2)                   not null,
   other_fee1         DECIMAL(16,2)                   not null,
   other_fee2         DECIMAL(16,2)                   not null,
   from_flag          CHAR(1)                         not null,
   detail_flag        CHAR(1)                         not null,
   finish_flag        CHAR(1)                         not null,
   share_class        CHAR(1)                         not null,
   targ_seller_code   CHAR(3)                         not null,
   asso_serial        CHAR(24)                        not null,
   asso_date          INTEGER                         not null,
   larg_red_flag      CHAR(1)                         not null,
   red_cause          CHAR(1)                         not null,
   frozen_cause       CHAR(1)                         not null,
   conv_dir           CHAR(1)                         not null,
   targ_prd_code      CHAR(12)                        not null,
   targ_nav           DECIMAL(12,8)                   not null,
   targ_price         DECIMAL(12,8)                   not null,
   targ_cfm_vol       DECIMAL(16,3)                   not null,
   targ_branch        CHAR(16)                        not null,
   targ_asset_acc     CHAR(32)                        not null,
   interest           DECIMAL(16,2)                   not null,
   vol_of_int         DECIMAL(16,3)                   not null,
   div_mode           CHAR(1)                         not null,
   div_rate           DECIMAL(5,4)                    not null,
   client_manager     CHAR(16)                        not null,
   summary            CHAR(30)                        not null,
   err_code           CHAR(7)                         not null,
   status             CHAR(1)                         not null,
   post_vol           DECIMAL(16,3)                   not null,
   curr_product       CHAR(3)                         not null,
   prd_type           CHAR(1)                         not null
);

/*==============================================================*/
/* Index: idx_transcfm                                          */
/*==============================================================*/
create index idx_transcfm on tbtranscfm (
   cfm_date ASC
);

/*==============================================================*/
/* Index: idx_transcfm2                                         */
/*==============================================================*/
create index idx_transcfm2 on tbtranscfm (
   client_no ASC
);

/*==============================================================*/
/* Table: tbaccreqexp                                           */
/*==============================================================*/
create table tbaccreqexp  (
   trans_date         CHAR(8),
   serial_no          CHAR(24),
   trans_time         CHAR(6),
   trans_code         CHAR(6),
   branch_no          CHAR(16),
   ta_code            CHAR(12),
   client_type        CHAR(1),
   client_no          CHAR(20),
   id_type            CHAR(1),
   id_code            CHAR(30),
   client_name        VARCHAR2(100),
   short_name         CHAR(40),
   asset_acc          CHAR(20),
   base_acc           CHAR(10),
   bank_acc           CHAR(32),
   sex                CHAR(1),
   birthday           CHAR(8),
   address            VARCHAR2(60),
   post_code          CHAR(6),
   mobile             CHAR(15),
   tel                CHAR(15),
   fax                CHAR(15),
   email              CHAR(40),
   send_mode          CHAR(8),
   send_freq          CHAR(1),
   div_mode           CHAR(1),
   asso_date          CHAR(8),
   frozen_cause       CHAR(1),
   summary            CHAR(30),
   asso_serial        CHAR(24),
   inst_type          CHAR(1),
   repr_name          CHAR(20),
   repr_id_type       CHAR(1),
   repr_id_code       CHAR(20),
   actor_name         CHAR(20),
   actor_id_type      CHAR(1),
   actor_id_code      CHAR(18),
   client_manager     CHAR(16),
   channel            CHAR(1),
   deal_mode          CHAR(1)
);

/*==============================================================*/
/* Index: idx_accexp                                            */
/*==============================================================*/
create index idx_accexp on tbaccreqexp (
   ta_code ASC
);

/*==============================================================*/
/* Table: tbtranscfmtmp                                         */
/*==============================================================*/
create table tbtranscfmtmp  (
   cfm_date           INTEGER    ,
   ta_code            CHAR(12),
   cfm_no             CHAR(24),
   trans_code         CHAR(6),
   busin_code         CHAR(6),
   client_no          CHAR(20),
   client_type        CHAR(1),
   serial_no          CHAR(24),
   amt                DECIMAL(18,2),
   vol                DECIMAL(18,3),
   cfm_amt            DECIMAL(18,2),
   cfm_vol            DECIMAL(18,3),
   clear_date         INTEGER    ,
   trans_date         INTEGER    ,
   trans_time         INTEGER    ,
   branch_no          CHAR(16),
   open_branch        CHAR(16),
   channel            CHAR(1),
   oper_no            CHAR(16),
   bank_acc           CHAR(32),
   asset_acc          CHAR(20),
   prd_code           CHAR(12),
   curr_type          CHAR(3),
   nav                DECIMAL(20,8),
   price              DECIMAL(20,8),
   agio               DECIMAL(9,4),
   tot_fee            DECIMAL(18,2),
   charge             DECIMAL(18,2),
   stamp_tax          DECIMAL(18,2),
   interest_tax       DECIMAL(18,2),
   transfer_fee       DECIMAL(18,2),
   agency_fee         DECIMAL(18,2),
   back_fee           DECIMAL(18,2),
   other_fee1         DECIMAL(18,2),
   other_fee2         DECIMAL(18,2),
   from_flag          CHAR(1),
   detail_flag        CHAR(1),
   finish_flag        CHAR(1),
   share_class        CHAR(1),
   targ_seller_code   CHAR(3),
   asso_serial        CHAR(24),
   asso_date          INTEGER    ,
   larg_red_flag      CHAR(1),
   red_cause          CHAR(1),
   frozen_cause       CHAR(1),
   conv_dir           CHAR(1),
   targ_prd_code      CHAR(12),
   targ_nav           DECIMAL(20,8),
   targ_price         DECIMAL(20,8),
   targ_cfm_vol       DECIMAL(18,3),
   targ_branch        CHAR(16),
   targ_asset_acc     CHAR(32),
   interest           DECIMAL(18,2),
   vol_of_int         DECIMAL(18,3),
   div_mode           CHAR(1),
   div_rate           DECIMAL(9,4),
   client_manager     CHAR(16),
   summary            CHAR(30),
   err_code           CHAR(7),
   status             CHAR(1),
   post_vol           DECIMAL(16,3),
   curr_product       CHAR(3),
   prd_type           CHAR(1)
);

/*==============================================================*/
/* Index: idx_transcfmtmp                                       */
/*==============================================================*/
create index idx_transcfmtmp on tbtranscfmtmp (
   ta_code ASC,
   busin_code ASC,
   serial_no ASC
);

/*==============================================================*/
/* Index: idx_transcfmtmp2                                      */
/*==============================================================*/
create index idx_transcfmtmp2 on tbtranscfmtmp (
   cfm_date ASC,
   ta_code ASC,
   cfm_no ASC,
   detail_flag ASC
);

/*==============================================================*/
/* Table: tbtransreqexp                                         */
/*==============================================================*/
create table tbtransreqexp  (
   trans_date         CHAR(8),
   serial_no          CHAR(24),
   trans_code         CHAR(6)                         not null,
   trans_time         CHAR(6),
   branch_no          CHAR(16),
   client_no          CHAR(20),
   client_type        CHAR(1),
   bank_acc           CHAR(32),
   asset_acc          CHAR(20),
   ta_code            CHAR(12),
   prd_code           CHAR(12),
   curr_type          CHAR(3),
   amt                DECIMAL(16,2),
   vol                DECIMAL(16,3),
   agio               DECIMAL(5,4),
   share_class        CHAR(1),
   div_mode           CHAR(1),
   div_rate           DECIMAL(5,4),
   larg_red_flag      CHAR(1),
   frozen_cause       CHAR(1),
   transfer_cause     CHAR(1),
   asso_date          CHAR(8),
   asso_serial        CHAR(24),
   targ_prd_code      CHAR(12),
   conv_dir           CHAR(1),
   targ_seller_code   CHAR(3),
   targ_branch        CHAR(16),
   targ_asset_acc     CHAR(20),
   summary            CHAR(30),
   seller_code        CHAR(3),
   orig_serial_no     CHAR(24),
   orig_trans_date    CHAR(8),
   book_date          CHAR(8),
   orig_cfm_no        CHAR(24),
   auto_invest_date   CHAR(8),
   orig_cfm_date      CHAR(8),
   frozen_end_date    CHAR(8),
   client_manager     CHAR(16),
   channel            CHAR(1),
   deal_mode          CHAR(1),
   original_num       DECIMAL(16,3)
);

/*==============================================================*/
/* Index: idx_transexp                                          */
/*==============================================================*/
create index idx_transexp on tbtransreqexp (
   ta_code ASC,
   trans_code ASC
);

/*==============================================================*/
/* Table: tbprddailytmp                                         */
/*==============================================================*/
create table tbprddailytmp  (
   iss_date           INTEGER    ,
   prd_code           CHAR(12),
   ta_code            CHAR(12),
   prd_scale          DECIMAL(18,2),
   tot_vol            DECIMAL(18,3),
   nav                DECIMAL(20,8),
   face_value         DECIMAL(13,4),
   larg_red_flag      CHAR(1),
   income_rate        DECIMAL(16,4),
   income             DECIMAL(16,2),
   income_unit        DECIMAL(16,4),
   conv_flag          CHAR(1),
   status             CHAR(1),
   tot_nav            DECIMAL(20,8)
);

/*==============================================================*/
/* Table: his_tbdivdetail                                       */
/*==============================================================*/
create table his_tbdivdetail  (
   cfm_date           INTEGER                         not null,
   cfm_no             CHAR(24)                        not null,
   ta_code            CHAR(12)                        not null,
   client_no          CHAR(20),
   asset_acc          CHAR(20)                        not null,
   prd_code           CHAR(12)                        not null,
   tot_vol            DECIMAL(16,3),
   div_per_unit       DECIMAL(18,6),
   div_mode           CHAR(1),
   curr_type          CHAR(3),
   tot_div_amt        DECIMAL(16,2),
   cfm_amt            DECIMAL(16,2),
   nav                DECIMAL(12,8),
   div_vol            DECIMAL(16,3),
   frozen_amt         DECIMAL(16,2),
   frozen_vol         DECIMAL(16,3),
   charge             DECIMAL(16,2),
   agency_fee         DECIMAL(16,2),
   stamp_tax          DECIMAL(16,2),
   other_fee1         DECIMAL(18,2),
   other_fee2         DECIMAL(18,2),
   reg_date           INTEGER    ,
   div_date           INTEGER    ,
   xr_date            INTEGER    ,
   bank_acc           CHAR(32),
   open_branch        CHAR(16),
   branch_no          CHAR(16),
   client_type        CHAR(1)
);

/*==============================================================*/
/* Index: idx_h_divdetail                                     */
/*==============================================================*/
create index idx_h_divdetail on his_tbdivdetail (
   cfm_date ASC,
   client_no ASC,
   prd_code ASC
);

/*==============================================================*/
/* Table: his_tbfrozen                                          */
/*==============================================================*/
create table his_tbfrozen  (
   frozen_date        INTEGER                         not null,
   frozen_serial      CHAR(24)                        not null,
   frozen_cfm_no      CHAR(24)                        not null,
   ta_code            CHAR(12)                        not null,
   client_no          CHAR(20)                        not null,
   bank_acc           CHAR(32)                        not null,
   asset_acc          CHAR(20)                        not null,
   trans_code         CHAR(6)                         not null,
   prd_code           CHAR(12)                        not null,
   frozen_vol         DECIMAL(16,3)                    not null,
   frozen_cause       CHAR(1)                         not null,
   end_date           INTEGER                         not null,
   frozen_branch      CHAR(16)                        not null,
   org_name           VARCHAR2(60)                    not null,
   frozen_law_no      CHAR(24)                        not null,
   unfrzn_law_no      CHAR(24)                        not null,
   unfrozen_date      INTEGER                         not null,
   unfrozen_serial    CHAR(24)                        not null,
   unfrozen_cfm_no    CHAR(24)                        not null,
   cfm_date           INTEGER                         not null,
   status             CHAR(1)                         not null
);
alter table his_tbfrozen
   add constraint PK_HIS_TBFROZEN primary key (frozen_date, frozen_serial);

/*==============================================================*/
/* Table: his_tbmonitor                                         */
/*==============================================================*/
create table his_tbmonitor  (
   log_serial         INTEGER                         not null,
   client_no          CHAR(20)                        not null,
   trans_code         CHAR(6)                         not null,
   trans_name         VARCHAR2(60)                    not null,
   account            CHAR(32)                        not null,
   ta_code            CHAR(12)                        not null,
   prd_code           CHAR(12)                        not null,
   amt                DECIMAL(16,2)                    not null,
   vol                DECIMAL(16,3)                    not null,
   err_code           CHAR(7)                         not null,
   err_msg            VARCHAR2(100)                   not null,
   branch_no          CHAR(16)                        not null,
   oper_no            CHAR(16)                        not null,
   channel            CHAR(1)                         not null,
   trans_date         INTEGER                         not null,
   serial_no          CHAR(24)                        not null,
   trans_type         CHAR(1)                         not null,
   begin_time         INTEGER                         not null,
   end_time           INTEGER                         not null,
   oltp_time          INTEGER                         not null,
   bank_time          INTEGER                         not null,
   secu_time          INTEGER                         not null
);

/*==============================================================*/
/* Table: his_tbprddaily                                        */
/*==============================================================*/
create table his_tbprddaily  (
   iss_date           INTEGER                         not null,
   prd_code           CHAR(12)                        not null,
   ta_code            CHAR(12)                        not null,
   prd_scale          DECIMAL(18,2)                   not null,
   tot_vol            DECIMAL(18,3)                   not null,
   nav                DECIMAL(12,8)                   not null,
   face_value         DECIMAL(9,4)                    not null,
   larg_red_flag      CHAR(1)                         not null,
   income_rate        DECIMAL(16,4)                   not null,
   income             DECIMAL(16,4)                   not null,
   income_unit        DECIMAL(16,4)                   not null,
   conv_flag          CHAR(1)                         not null,
   status             CHAR(1)                         not null,
   tot_nav            DECIMAL(12,8)                   not null
);
alter table his_tbprddaily
   add constraint PK_HIS_TBPRDDAILY primary key (iss_date, prd_code);

/*==============================================================*/
/* Table: his_tbsharechg                                        */
/*==============================================================*/
create table his_tbsharechg  (
   cfm_date           INTEGER                         not null,
   ta_code            CHAR(12)                        not null,
   cfm_no             CHAR(24)                        not null,
   prd_code           CHAR(12)                        not null,
   client_no          CHAR(20)                        not null,
   vol                DECIMAL(16,3)                   not null,
   frozen_vol         DECIMAL(16,3)                   not null,
   source_flag        CHAR(1)                         not null,
   trans_date         INTEGER                         not null,
   serial_no          CHAR(24)                        not null,
   internal_code      CHAR(24)                        not null,
   seller_code        CHAR(3)                         not null,
   asset_acc          CHAR(20)                        not null,
   bank_acc           CHAR(32)                        not null,
   prd_amt            DECIMAL(16,2)                   not null,
   bank_amt           DECIMAL(16,2)                   not null,
   open_branch        CHAR(16)                        default ' ' not null,
   trans_branch       CHAR(16)                        not null,
   client_type        CHAR(1)                         not null,
   sub_nav            DECIMAL(12,8)                   not null,
   red_detail_type    CHAR(1)                         not null,
   div_mode           CHAR(2)                         not null,
   prd_type           CHAR(1)                         not null,
   long_frozen_vol    DECIMAL(16,3)                   not null,
   face_value         DECIMAL(9,4)                    not null,
   trans_amt          DECIMAL(16,2)                   null,
   cash_flag          CHAR(1)                         not null,
   reserve1           VARCHAR2(100)                   not null,
   reserve2           VARCHAR2(100)                   not null,
   reserve3           VARCHAR2(100)                   not null
);

/*==============================================================*/
/* Index: idx_h_sharechg                                         */
/*==============================================================*/
create index idx_h_sharechg on his_tbsharechg (
   cfm_date ASC,
   client_no ASC,
   prd_code ASC
);

/*==============================================================*/
/* Table: his_tbshareerr                                        */
/*==============================================================*/
create table his_tbshareerr  (
   comp_date          INTEGER                         not null,
   client_no          CHAR(20)                        not null,
   ta_code            CHAR(12)                        not null,
   prd_code           CHAR(12)                        not null,
   asset_acc          CHAR(20)                        not null,
   ta_vol             DECIMAL(16,3)                   not null,
   ta_frozen_vol      DECIMAL(16,3)                   not null,
   vol                DECIMAL(16,3)                   not null,
   frozen_vol         DECIMAL(16,3)                   not null,
   unequa_flag        CHAR(1)                         not null,
   cfm_no             CHAR(24)                        not null
);

/*==============================================================*/
/* Index: idx_h_shareerr                                        */
/*==============================================================*/
create index idx_h_shareerr on his_tbshareerr (
   comp_date ASC
);

/*==============================================================*/
/* Table: his_tbqrhz                                            */
/*==============================================================*/
create table his_tbqrhz  (
   sum_date           INTEGER                         not null,
   sum_flag           CHAR(1)                         not null,
   internal_branch    CHAR(12)                        not null,
   client_type        CHAR(1)                         not null,
   prd_code           CHAR(12)                        not null,
   branch_no          CHAR(16)                        not null,
   ta_code            CHAR(12)                        not null,
   allot_num          INTEGER                         not null,
   allot_amt          DECIMAL(16,2)                   not null,
   allot_vol          DECIMAL(16,3)                   not null,
   sub_num            INTEGER                         not null,
   sub_amt            DECIMAL(16,2)                   not null,
   sub_vol            DECIMAL(16,3)                   not null,
   auto_sub_num       INTEGER                         not null,
   auto_sub_amt       DECIMAL(16,2)                   not null,
   auto_sub_vol       DECIMAL(16,3)                   not null,
   red_num            INTEGER                         not null,
   red_amt            DECIMAL(16,2)                   not null,
   red_vol            DECIMAL(16,3)                   not null,
   force_red_num      INTEGER                         not null,
   force_red_amt      DECIMAL(16,2)                   not null,
   force_red_vol      DECIMAL(16,3)                   not null,
   pre_red_num        INTEGER                         not null,
   pre_red_amt        DECIMAL(16,2)                   not null,
   pre_red_vol        DECIMAL(16,3)                   not null,
   div_mode_num       INTEGER                         not null,
   conv_num           INTEGER                         not null,
   conv_vol           DECIMAL(16,3)                   not null,
   trust_in_num       INTEGER                         not null,
   trust_in_vol       DECIMAL(16,3)                   not null,
   trust_out_num      INTEGER                         not null,
   trust_out_vol      DECIMAL(16,3)                   not null,
   frozen_num         INTEGER                         not null,
   frozen_vol         DECIMAL(16,3)                   not null,
   unfrozen_num       INTEGER                         not null,
   unfrozen_vol       DECIMAL(16,3)                   not null,
   tran_num           INTEGER                         not null,
   tran_vol           DECIMAL(16,3)                   not null,
   div_num            INTEGER                         not null,
   div_amt            DECIMAL(16,2)                   not null,
   div_vol            DECIMAL(16,3)                   not null,
   curr_product       CHAR(3)                         not null,
   prd_type           CHAR(1)                         not null,
   curr_type          CHAR(3)                         not null
);
alter table his_tbqrhz
   add constraint PK_HIS_TBQRHZ primary key (sum_date, sum_flag, client_type, prd_code, internal_branch);

/*==============================================================*/
/* Table: tblogs                                                */
/*==============================================================*/
create table tblogs  (
   log_serial         INTEGER                        not null,
   op_code            CHAR(16)                       default ' ' not null,
   trans_code         CHAR(30)                       default ' ' not null,
   branch_no          CHAR(16)                       default ' ' not null,
   terminal_no        CHAR(16)                       default ' ' not null,
   hs_date            INTEGER                        default 0 not null,
   op_time            INTEGER                        default 0 not null,
   auth_user          CHAR(16)                       default ' ' not null,
   ip                 CHAR(15)                       default ' ' not null,
   summary            VARCHAR2(200)                  default ' ' not null,
   log_file           VARCHAR2(60)                   default ' ' not null
);

/*==============================================================*/
/* Index: idx_logs                                              */
/*==============================================================*/
create index idx_logs on tblogs (
   log_serial ASC
);

/*==============================================================*/
/* Table: tbsumdetail                                           */
/*==============================================================*/
create table tbsumdetail  (
   ta_code            CHAR(12)                        not null,
   serial_no          CHAR(24)                        not null,
   busin_code         CHAR(6)                         not null,
   detail_num         INTEGER
);
alter table tbsumdetail
   add constraint PK_TBSUMDETAIL primary key (ta_code, serial_no, busin_code);

/*==============================================================*/
/* Index: idx_sumdetail                                         */
/*==============================================================*/
create index idx_sumdetail on tbsumdetail (
   ta_code ASC,
   serial_no ASC
);

/*==============================================================*/
/* Table: his_tblogs                                            */
/*==============================================================*/
create table his_tblogs  (
   log_serial         INTEGER                        not null,
   op_code            CHAR(16)                       default ' ' not null,
   trans_code         CHAR(30)                       default ' ' not null,
   branch_no          CHAR(16)                       default ' ' not null,
   terminal_no        CHAR(16)                       default ' ' not null,
   hs_date            INTEGER                        default 0 not null,
   op_time            INTEGER                        default 0 not null,
   auth_user          CHAR(16)                       default ' ' not null,
   ip                 CHAR(15)                       default ' ' not null,
   summary            VARCHAR2(200)                  default ' ' not null,
   log_file           VARCHAR2(60)                   default ' ' not null
);

/*==============================================================*/
/* Index: idx_h_logs                                            */
/*==============================================================*/
create index idx_h_logs on his_tblogs (
   hs_date ASC
);

/*==============================================================*/
/* Table: tbbatcherr                                            */
/*==============================================================*/
create table tbbatcherr  (
   ta_code            CHAR(12),
   trans_name         VARCHAR2(60),
   serial_no          CHAR(24),
   account            CHAR(32),
   prd_code           CHAR(12),
   summary            CHAR(30),
   err_level          CHAR(1)
);

/*==============================================================*/
/* Index: idx_batcherr                                          */
/*==============================================================*/
create index idx_batcherr on tbbatcherr (
   ta_code ASC
);

/*==============================================================*/
/* Table: his_tbqyfphz                                          */
/*==============================================================*/
create table his_tbqyfphz  (
   sum_date           INTEGER                         not null,
   sum_flag           CHAR(1)                         not null,
   internal_branch    CHAR(12)                        not null,
   client_type        CHAR(1)                         not null,
   prd_code           CHAR(12)                        not null,
   branch_no          CHAR(16)                        not null,
   ta_code            CHAR(12)                        not null,
   reg_date           INTEGER    ,
   div_date           INTEGER    ,
   tot_vol            DECIMAL(16,3)                   not null,
   tot_div_amt        DECIMAL(16,2)                   not null,
   stamp_tax          DECIMAL(16,2)                   not null,
   cfm_amt            DECIMAL(16,2)                   not null,
   div_vol            DECIMAL(16,3)                   not null,
   prd_type           CHAR(1)                         not null,
   curr_type          CHAR(3)                         not null,
   curr_product       CHAR(3)                         not null
);
alter table his_tbqyfphz
   add constraint PK_HIS_TBQYFPHZ primary key (sum_date, sum_flag, internal_branch, client_type, prd_code);

/*==============================================================*/
/* Table: tbclientnochg                                         */
/*==============================================================*/
create table tbclientnochg  (
   trans_date         INTEGER                         not null,
   client_no          CHAR(20)                        not null,
   b_client_no        CHAR(20)                        not null,
   change_mode        CHAR(1)                         not null
);

/*==============================================================*/
/* Index: idx_clientnochg                                       */
/*==============================================================*/
create index idx_clientnochg on tbclientnochg (
   client_no ASC
);

/*==============================================================*/
/* Index: idx_clientnochg2                                      */
/*==============================================================*/
create index idx_clientnochg2 on tbclientnochg (
   b_client_no ASC
);

/*==============================================================*/
/* Table: tbbankbatch                                           */
/*==============================================================*/
create table tbbankbatch  (
   id_no              INTEGER                         not null,
   exec_mode          CHAR(1)                         not null,
   bat_cmd            CHAR(100)                       not null,
   describe           CHAR(60)                        not null
);
alter table tbbankbatch
   add constraint PK_TBBANKBATCH primary key (id_no);

/*==============================================================*/
/* Table: tbprdfaredisc                                         */
/*==============================================================*/
create table tbprdfaredisc  (
   prd_code           CHAR(12)                        not null,
   trans_code         CHAR(6)                         not null,
   min_amt            DECIMAL(16,2)                   not null,
   max_amt            DECIMAL(16,2)                   not null,
   agio               DECIMAL(5,4)                    not null
);

/*==============================================================*/
/* Table: his_tbqshz                                            */
/*==============================================================*/
create table his_tbqshz  (
   sum_date           INTEGER                         not null,
   sum_flag           CHAR(1)                         not null,
   internal_branch    CHAR(12)                        not null,
   client_type        CHAR(1)                         not null,
   prd_code           CHAR(12)                        not null,
   branch_no          CHAR(16)                        not null,
   ta_code            CHAR(12)                        not null,
   allot_num          INTEGER                         not null,
   allot_amt          DECIMAL(16,2)                   not null,
   sub_num            INTEGER                         not null,
   sub_amt            DECIMAL(16,2)                   not null,
   red_num            INTEGER                         not null,
   red_amt            DECIMAL(16,2)                   not null,
   div_num            INTEGER                         not null,
   div_amt            DECIMAL(16,2)                   not null,
   other_num          INTEGER                         not null,
   other_amt          DECIMAL(16,2)                   not null,
   prd_type           CHAR(1)                         not null,
   curr_type          CHAR(3)                         not null,
   curr_product       CHAR(3)                         not null
);
alter table his_tbqshz
   add constraint PK_HIS_TBQSHZ primary key (sum_date, sum_flag, internal_branch, client_type, prd_code);

/*==============================================================*/
/* Table: tbproduct                                             */
/*==============================================================*/
create table tbproduct  (
   prd_code           CHAR(12)                        not null,
   prd_type           CHAR(1)                         not null,
   short_name         CHAR(28)                        not null,
   prd_name           VARCHAR2(200)                   not null,
   foreign_name       VARCHAR2(200)                   not null,
   ta_code            CHAR(12)                        not null,
   prd_sponsor        CHAR(3)                         not null,
   prd_manager        CHAR(3)                         not null,
   prd_trustee        CHAR(3)                         not null,
   trustee_acc        CHAR(32)                        not null,
   trustee_rate       DECIMAL(11,6)                   not null,
   manager_rate       DECIMAL(11,6)                   not null,
   nav                DECIMAL(12,8)                   not null,
   face_value         DECIMAL(9,4)                    not null,
   iss_price          DECIMAL(12,8)                   not null,
   curr_type          CHAR(3)                         not null,
   curr_product       CHAR(3)                         not null,
   ipo_start_date     INTEGER                         not null,
   ipo_end_date       INTEGER                         not null,
   estab_date         INTEGER                         not null,
   close_date         INTEGER                         not null,
   prd_scale          DECIMAL(16,2)                   not null,
   sub_mode           CHAR(1)                         not null,
   sub_unit           INTEGER                         not null,
   red_days           INTEGER                         not null,
   div_days           INTEGER                         not null,
   refund_days        INTEGER                         not null,
   fail_days          INTEGER                         not null,
   pmin_red_amt       DECIMAL(16,2)                   not null,
   pmax_red_amt       DECIMAL(16,2)                   not null,
   pfirst_amt         DECIMAL(16,2)                   not null,
   papp_amt           DECIMAL(16,2)                   not null,
   min_conv_amt       DECIMAL(16,2)                   not null,
   cancel_flag        CHAR(1)                         not null,
   div_mode           CHAR(1)                         not null,
   open_time          INTEGER                         not null,
   close_time         INTEGER                         not null,
   limit_flag         CHAR(10)                        not null,
   conv_flag          CHAR(1)                         not null,
   channels           CHAR(10)                        not null,
   prd_attr           CHAR(30)                        not null,
   risk_level         INTEGER                         not null,
   prd_totvol         DECIMAL(16,3)                   not null,
   tot_nav            DECIMAL(12,8)                   not null,
   min_hold_amt       DECIMAL(16,2)                   not null,
   larg_red           CHAR(1)                         not null,
   status             CHAR(1)                         not null,
   prd_limit          DECIMAL(16,2)                   not null,
   current_limit      DECIMAL(16,2)                   not null,
   today_limit        DECIMAL(16,2)                   not null,
   dayend_limit       DECIMAL(16,2)                   not null,
   unwork_limit       DECIMAL(16,2)                   not null,
   qdii_type          CHAR(1)                         not null,
   asso_code          CHAR(12)                        not null,
   vol_digit          INTEGER                         not null,
   liqu_mode          CHAR(1)                         not null,
   cash_flag          CHAR(1)                         not null,
   pmin_red_vol       DECIMAL(16,3)                   not null,
   pmax_red_vol       DECIMAL(16,3)                   not null,
   inst_flag          CHAR(1)                         not null,
   min_hold_vol       DECIMAL(16,3)                   not null,
   omin_red_vol       DECIMAL(16,3)                   not null,
   omin_red_amt       DECIMAL(16,3)                   not null,
   omax_red_amt       DECIMAL(16,3)                   not null,
   omax_red_vol       DECIMAL(16,3)                   not null,
   ofirst_amt         DECIMAL(16,2)                   not null,
   oapp_amt           DECIMAL(16,2)                   not null,
   min_conv_vol       DECIMAL(16,3)                   not null,
   div_modes          CHAR(6)                         not null,
   min_invest_amt     DECIMAL(16,2)                   not null,
   red_detail_type    CHAR(1)                         not null,
   exchange_bank      CHAR(3)                         not null,
   fare_type          CHAR(1)                         not null,
   reserve1           VARCHAR2(100)                   not null,
   reserve2           VARCHAR2(100)                   not null,
   date_type          CHAR(1)                         not null,
   client_attrs       CHAR(30)                        not null,                                   
   user_prdattr       CHAR(1)                         not null,
   sub_red_unit       INTEGER                         not null,  
   reserve3           VARCHAR2(100)                   not null,  
   reserve4           VARCHAR2(100)                   not null,  
   reserve5           VARCHAR2(100)                   not null   
);
alter table tbproduct
   add constraint PK_TBPRODUCT primary key (prd_code);

/*==============================================================*/
/* Table: tbsharedetail                                         */
/*==============================================================*/
create table tbsharedetail  (
   client_no          CHAR(20)                        not null,
   ta_code            CHAR(12)                        not null,
   cfm_no             CHAR(24)                        not null,
   internal_code      CHAR(24)                        not null,
   seller_code        CHAR(3)                         not null,
   serial_no          CHAR(24)                        not null,
   trans_date         INTEGER                         not null,
   cfm_date           INTEGER                         not null,
   prd_code           CHAR(12)                        not null,
   asset_acc          CHAR(20)                        not null,
   bank_acc           CHAR(32)                        not null,
   tot_vol            DECIMAL(16,3)                   not null,
   frozen_vol         DECIMAL(16,3)                   not null,
   long_frozen_vol    DECIMAL(16,3)                   not null,
   ystdy_tot_vol      DECIMAL(16,3)                   not null,
   prd_amt            DECIMAL(16,2)                   not null,
   bank_amt           DECIMAL(16,2)                   not null,
   open_branch        CHAR(16)                        default ' ' not null,
   trans_branch       CHAR(16)                        not null,
   client_type        CHAR(1)                         not null,
   sub_nav            DECIMAL(12,8)                   not null,
   group_vol          DECIMAL(16,3)                   not null,
   div_mode           CHAR(2)                         not null,
   div_rate           DECIMAL(5,4)                    not null,
   append_flag        CHAR(1)                         not null,
   prd_type           CHAR(1)                         not null,
   face_value         DECIMAL(9,4)                    not null,
   trans_amt          DECIMAL(16,2)                   null,
   cash_flag          CHAR(1)                         not null,
   reserve1           VARCHAR2(100)                   ,
   reserve2           VARCHAR2(100)                   ,
   reserve3           VARCHAR2(100),
   income             DECIMAL(16,4)                    not null,
   dialy_income       DECIMAL(16,4)                    not null,
   auto_flag          CHAR(1)                          not null                   
);
alter table tbsharedetail
   add constraint PK_TBSHAREDETAIL primary key (client_no, cfm_no, ta_code, prd_code);

/*==============================================================*/
/* Index: idx_sharedetail                                       */
/*==============================================================*/
create index idx_sharedetail on tbsharedetail (
   client_no ASC,
   prd_code ASC
);

/*==============================================================*/
/* Table: tbexchangerate                                        */
/*==============================================================*/
create table tbexchangerate  (
   trans_date         INTEGER                         not null,
   curr_type          CHAR(3)                         not null,
   targ_curr_type     CHAR(3)                         not null,
   open_rate          DECIMAL(15,9),
   close_rate         DECIMAL(15,9)                   not null,
   exchange_bank      CHAR(3)                         not null,
   qdii_type          CHAR(1)                         not null,
   reserve            VARCHAR2(100)                   not null,
   reserve1           VARCHAR2(100)                   not null
);
alter table tbexchangerate
   add constraint PK_TBEXCHANGERATE primary key (trans_date, curr_type, targ_curr_type, exchange_bank, qdii_type);

/*==============================================================*/
/* Index: idx_exchrate                                          */
/*==============================================================*/
create index idx_exchrate on tbexchangerate (
   trans_date ASC,
   curr_type ASC,
   targ_curr_type ASC
);

/*==============================================================*/
/* Table: tbsharebak                                            */
/*==============================================================*/
create table tbsharebak  (
   client_no          CHAR(20)                        not null,
   internal_code      CHAR(24)                        not null,
   seller_code        CHAR(3)                         not null,
   ta_code            CHAR(12)                        not null,
   prd_code           CHAR(12)                        not null,
   asset_acc          CHAR(20)                        not null,
   tot_vol            DECIMAL(16,3)                   not null,
   frozen_vol         DECIMAL(16,3)                   not null,
   long_frozen_vol    DECIMAL(16,3)                   not null,
   group_vol          DECIMAL(16,3)                   not null,
   div_mode           CHAR(2)                         not null,
   div_rate           DECIMAL(5,4)                    not null,
   ystdy_tot_vol      DECIMAL(16,3)                   not null,
   open_branch        CHAR(16)                        default ' ' not null,
   client_type        CHAR(1)                         not null,
   append_flag        CHAR(1)                         not null,
   bank_acc           CHAR(32)                        not null,
   prd_type           CHAR(1)                         not null,
   face_value         DECIMAL(9,4)                    not null,
   trans_amt          DECIMAL(16,2)
);
alter table tbsharebak
   add constraint PK_TBSHAREBAK primary key (client_no, internal_code, seller_code);

/*==============================================================*/
/* Index: idx_share_3                                           */
/*==============================================================*/
create index idx_share_3 on tbsharebak (
   ta_code ASC
);

/*==============================================================*/
/* Index: idx_share_4                                           */
/*==============================================================*/
create index idx_share_4 on tbsharebak (
   client_no ASC
);

/*==============================================================*/
/* Table: tbshare                                               */
/*==============================================================*/
create table tbshare  (
   client_no          CHAR(20)                        not null,
   internal_code      CHAR(24)                        not null,
   seller_code        CHAR(3)                         not null,
   ta_code            CHAR(12)                        not null,
   prd_code           CHAR(12)                        not null,
   asset_acc          CHAR(20)                        not null,
   tot_vol            DECIMAL(16,3)                   not null,
   frozen_vol         DECIMAL(16,3)                   not null,
   long_frozen_vol    DECIMAL(16,3)                   not null,
   group_vol          DECIMAL(16,3)                   not null,
   div_mode           CHAR(2)                         not null,
   div_rate           DECIMAL(5,4)                    not null,
   ystdy_tot_vol      DECIMAL(16,3)                   not null,
   open_branch        CHAR(16)                        default ' ' not null,
   client_type        CHAR(1)                         not null,
   append_flag        CHAR(1)                         not null,
   bank_acc           CHAR(32)                        not null,
   prd_type           CHAR(1)                         not null,
   face_value         DECIMAL(9,4)                    not null,
   trans_amt          DECIMAL(16,2)
);
alter table tbshare
   add constraint PK_TBSHARE primary key (client_no, internal_code, seller_code);

/*==============================================================*/
/* Index: idx_share_1                                           */
/*==============================================================*/
create index idx_share_1 on tbshare (
   ta_code ASC
);

/*==============================================================*/
/* Index: idx_share_2                                           */
/*==============================================================*/
create index idx_share_2 on tbshare (
   client_no ASC,
   prd_code ASC
);

/*==============================================================*/
/* Table: tbfeerate                                             */
/*==============================================================*/
create table tbfeerate  (
   prd_code           CHAR(12)                        not null,
   trans_code         CHAR(6)                         not null,
   min_amt            DECIMAL(16,2)                   not null,
   max_amt            DECIMAL(16,2)                   not null,
   rate               DECIMAL(5,4)                    not null,
   min_fee            DECIMAL(16,2)                   not null,
   max_fee            DECIMAL(16,2)                   not null,
   fee_range          VARCHAR2(100)                   not null
);
alter table tbfeerate
   add constraint PK_TBFEERATE primary key (prd_code, trans_code, min_amt, max_amt);

/*==============================================================*/
/* Index: idx_feerate                                     */
/*==============================================================*/
create index idx_feerate on tbfeerate (
   prd_code ASC,
   trans_code ASC
);

/*==============================================================*/
/* Table: tbgroupagio                                           */
/*==============================================================*/
create table tbgroupagio  (
   prd_code           CHAR(12)                        not null,
   trans_code         CHAR(6)                         not null,
   client_group       CHAR(1)                         not null,
   agio               DECIMAL(5,4)                    not null
);
alter table tbgroupagio
   add constraint PK_TBGROUPAGIO primary key (prd_code, trans_code, client_group);

/*==============================================================*/
/* Table: tbbanklimit                                           */
/*==============================================================*/
create table tbbanklimit  (
   prd_type           CHAR(1)                         not null,
   curr_type          CHAR(3)                         not null,
   bank_limit         DECIMAL(16,2)                   not null,
   current_limit      DECIMAL(16,2)                   not null,
   today_limit        DECIMAL(16,2)                   not null,
   dayend_limit       DECIMAL(16,2)                   not null,
   unwork_limit       DECIMAL(16,2)                   not null
);
alter table tbbanklimit
   add constraint PK_TBBANKLIMIT primary key (prd_type, curr_type);

/*==============================================================*/
/* Table: tbuserlimit                                           */
/*==============================================================*/
create table tbuserlimit  (
   user_id            CHAR(16)                        not null,
   curr_type          CHAR(3)                         not null,
   total_limit        DECIMAL(16,4)                   not null
);
alter table tbuserlimit
   add constraint PK_TBUSERLIMIT primary key (user_id, curr_type, total_limit);

/*==============================================================*/
/* Table: tbswitchrate                                          */
/*==============================================================*/
create table tbswitchrate  (
   prd_code           CHAR(12)                        not null,
   targ_prd_code      CHAR(12)                        not null,
   switch_rate        DECIMAL(5,4)                    not null
);
alter table tbswitchrate
   add constraint PK_TBSWITCHRATE primary key (prd_code, targ_prd_code);

/*==============================================================*/
/* Table: tbtransreq                                            */
/*==============================================================*/
create table tbtransreq  (
   trans_date         INTEGER                         not null,
   serial_no          CHAR(24)                        not null,
   seller_code        CHAR(3)                         not null,
   prd_kind           CHAR(2)                         not null,
   seller_serial      CHAR(32)                        not null,
   trans_code         CHAR(6)                         not null,
   phi_date           INTEGER                         not null,
   trans_time         INTEGER                         not null,
   branch_no          CHAR(16)                        not null,
   open_branch        CHAR(16)                        not null,
   channel            CHAR(1)                         not null,
   term_no            CHAR(16)                        not null,
   oper_no            CHAR(16)                        not null,
   auth_oper          CHAR(16)                        not null,
   client_no          CHAR(20)                        not null,
   client_type        CHAR(1)                         not null,
   bank_acc           CHAR(32)                        not null,
   asset_acc          CHAR(20)                        not null,
   ta_code            CHAR(12)                        not null,
   internal_code      CHAR(24)                        not null,
   prd_code           CHAR(12)                        not null,
   curr_type          CHAR(3)                         not null,
   amt                DECIMAL(16,2)                   not null,
   vol                DECIMAL(16,3)                   not null,
   agio               DECIMAL(5,4)                    not null,
   share_class        CHAR(1)                         not null,
   div_mode           CHAR(1)                         not null,
   div_rate           DECIMAL(5,4)                    not null,
   larg_red_flag      CHAR(1)                         not null,
   frozen_cause       CHAR(1)                         not null,
   transfer_cause     CHAR(1)                         not null,
   asso_date          INTEGER                         not null,
   asso_serial        CHAR(24)                        not null,
   targ_prd_code      CHAR(12)                        not null,
   conv_dir           CHAR(1)                         not null,
   targ_seller_code   CHAR(3)                         not null,
   targ_branch        CHAR(16)                        not null,
   targ_asset_acc     CHAR(20)                        not null,
   client_manager     CHAR(16)                        not null,
   summary            CHAR(30)                        not null,
   err_code           CHAR(7)                         not null,
   err_msg            VARCHAR2(100)                   not null,
   status             CHAR(1)                         not null,
   cfm_date           INTEGER                         not null,
   cfm_no             CHAR(24)                        not null,
   cfm_vol            DECIMAL(16,3)                   not null,
   deal_mode          CHAR(1)                         not null,
   internal_branch    CHAR(12)                        not null,
   reserve1           VARCHAR2(100)                   not null,
   ex_serial          CHAR(32)                        not null,
   prd_amt            DECIMAL(16,2)                   not null,
   bank_amt           DECIMAL(16,2)                   not null,
   charge             DECIMAL(16,2)                   not null,
   auth_date          INTEGER                         not null,
   auth_serial_no     CHAR(24)                        not null,
   auth_count         INTEGER                         not null,
   curr_product       CHAR(3)                         not null,
   cfm_amt            DECIMAL(16,2)                   not null,
   red_type           CHAR(1)                         not null,
   control_flags      CHAR(10)                        not null,
   host_date          INTEGER                         not null,
   host_serial        CHAR(24)                        not null,
   repeal_status      CHAR(1)                         not null,
   repeal_num         INTEGER                         not null,
   turn_status        CHAR(1)                         not null,
   prd_type           CHAR(1)                         not null,
   host_trans_code    CHAR(6)                         not null,
   monitor_flag       CHAR(1)                         not null,
   face_value         DECIMAL(9,4)                    not null,
   qdii_type          CHAR(1)                         not null,
   cash_flag          CHAR(1)                         not null,
   spreader           CHAR(16)                        not null,
   portfolio_rate     DECIMAL(5,2)                    not null,
   reserve2           VARCHAR2(100)                   not null,
   reserve3           VARCHAR2(100)                   not null,
   sub_fee            DECIMAL(16,2)                   default 0,
   service_fee        DECIMAL(16,2)                   default 0,
   original_num       DECIMAL(16,3)                   default 0
);
alter table tbtransreq
   add constraint PK_TBTRANSREQ primary key (serial_no);

/*==============================================================*/
/* Index: idx_transreq_1                                        */
/*==============================================================*/
create index idx_transreq_1 on tbtransreq (
   trans_date ASC,
   ta_code ASC,
   status ASC,
   trans_code ASC,
   prd_code ASC
);

/*==============================================================*/
/* Index: idx_transreq_2                                        */
/*==============================================================*/
create index idx_transreq_2 on tbtransreq (
   trans_date ASC,
   client_no ASC
);

/*==============================================================*/
/* Index: idx_transreq_3                                        */
/*==============================================================*/
create index idx_transreq_3 on tbtransreq (
   client_no ASC
);

/*==============================================================*/
/* Table: his_tbtransreq                                        */
/*==============================================================*/
create table his_tbtransreq  (
   trans_date         INTEGER                         not null,
   serial_no          CHAR(24)                        not null,
   seller_code        CHAR(3)                         not null,
   prd_kind           CHAR(2)                         not null,
   seller_serial      CHAR(32)                        not null,
   trans_code         CHAR(6)                         not null,
   phi_date           INTEGER                         not null,
   trans_time         INTEGER                         not null,
   branch_no          CHAR(16)                        not null,
   open_branch        CHAR(16)                        not null,
   channel            CHAR(1)                         not null,
   term_no            CHAR(16)                        not null,
   oper_no            CHAR(16)                        not null,
   auth_oper          CHAR(16)                        not null,
   client_no          CHAR(20)                        not null,
   client_type        CHAR(1)                         not null,
   bank_acc           CHAR(32)                        not null,
   asset_acc          CHAR(20)                        not null,
   ta_code            CHAR(12)                        not null,
   internal_code      CHAR(24)                        not null,
   prd_code           CHAR(12)                        not null,
   curr_type          CHAR(3)                         not null,
   amt                DECIMAL(16,2)                   not null,
   vol                DECIMAL(16,3)                   not null,
   agio               DECIMAL(5,4)                    not null,
   share_class        CHAR(1)                         not null,
   div_mode           CHAR(1)                         not null,
   div_rate           DECIMAL(5,4)                    not null,
   larg_red_flag      CHAR(1)                         not null,
   frozen_cause       CHAR(1)                         not null,
   transfer_cause     CHAR(1)                         not null,
   asso_date          INTEGER                         not null,
   asso_serial        CHAR(24)                        not null,
   targ_prd_code      CHAR(12)                        not null,
   conv_dir           CHAR(1)                         not null,
   targ_seller_code   CHAR(3)                         not null,
   targ_branch        CHAR(16)                        not null,
   targ_asset_acc     CHAR(20)                        not null,
   client_manager     CHAR(16)                        not null,
   summary            CHAR(30)                        not null,
   err_code           CHAR(7)                         not null,
   err_msg            VARCHAR2(100)                   not null,
   status             CHAR(1)                         not null,
   cfm_date           INTEGER                         not null,
   cfm_no             CHAR(24)                        not null,
   cfm_vol            DECIMAL(16,3)                   not null,
   deal_mode          CHAR(1)                         not null,
   internal_branch    CHAR(12)                        not null,
   reserve1           VARCHAR2(100)                   not null,
   ex_serial          CHAR(32)                        not null,
   prd_amt            DECIMAL(16,2)                   not null,
   bank_amt           DECIMAL(16,2)                   not null,
   charge             DECIMAL(16,2)                   not null,
   auth_date          INTEGER                         not null,
   auth_serial_no     CHAR(24)                        not null,
   auth_count         INTEGER                         not null,
   curr_product       CHAR(3)                         not null,
   cfm_amt            DECIMAL(16,2)                   not null,
   red_type           CHAR(1)                         not null,
   control_flags      CHAR(10)                        not null,
   host_date          INTEGER                         not null,
   host_serial        CHAR(24)                        not null,
   repeal_status      CHAR(1)                         not null,
   repeal_num         INTEGER                         not null,
   turn_status        CHAR(1),
   prd_type           CHAR(1)                         not null,
   host_trans_code    CHAR(6)                         not null,
   monitor_flag       CHAR(1)                         not null,
   face_value         DECIMAL(9,4)                    not null,
   qdii_type          CHAR(1)                         not null,
   cash_flag          CHAR(1)                         not null,
   spreader           CHAR(16)                        not null,
   portfolio_rate     NUMERIC(5,2)                    not null,
   reserve2           VARCHAR2(100)                   not null,
   reserve3           VARCHAR2(100)                   not null,
   sub_fee            DECIMAL(16,2)                   default 0,
   service_fee        DECIMAL(16,2)                   default 0,
   original_num       DECIMAL(16,3)                   default 0
);
alter table his_tbtransreq
   add constraint PK_HIS_TBTRANSREQ primary key (trans_date, serial_no);

/*==============================================================*/
/* Index: idx_histransreq_1                                     */
/*==============================================================*/
create index idx_histransreq_1 on his_tbtransreq (
   trans_date ASC,
   client_no ASC
);

/*==============================================================*/
/* Index: idx_histransreq_2                                     */
/*==============================================================*/
create index idx_histransreq_2 on his_tbtransreq (
   trans_date ASC,
   ta_code ASC,
   status ASC,
   trans_code ASC,
   prd_code ASC
);

/*==============================================================*/
/* Index: idx_histransreq_3                                     */
/*==============================================================*/
create index idx_histransreq_3 on his_tbtransreq (
   client_no ASC
);

/*==============================================================*/
/* Table: his_tbsharedetail                                     */
/*==============================================================*/
create table his_tbsharedetail  (
   sum_date           INTEGER                         not null,
   client_no          CHAR(20)                        not null,
   ta_code            CHAR(12)                        not null,
   cfm_no             CHAR(24)                        not null,
   internal_code      CHAR(24)                        not null,
   seller_code        CHAR(3)                         not null,
   serial_no          CHAR(24)                        not null,
   trans_date         INTEGER                         not null,
   cfm_date           INTEGER                         not null,
   prd_code           CHAR(12)                        not null,
   asset_acc          CHAR(20)                        not null,
   bank_acc           CHAR(32)                        not null,
   tot_vol            DECIMAL(16,3)                   not null,
   frozen_vol         DECIMAL(16,3)                   not null,
   long_frozen_vol    DECIMAL(16,3)                   not null,
   ystdy_tot_vol      DECIMAL(16,3)                   not null,
   prd_amt            DECIMAL(16,2)                   not null,
   bank_amt           DECIMAL(16,2)                   not null,
   open_branch        CHAR(16)                        default ' ' not null,
   trans_branch       CHAR(16)                        not null,
   client_type        CHAR(1)                         not null,
   sub_nav            DECIMAL(12,8)                   not null,
   group_vol          DECIMAL(16,3)                   not null,
   div_mode           CHAR(2)                         not null,
   div_rate           DECIMAL(5,4)                    not null,
   append_flag        CHAR(1)                         not null,
   prd_type           CHAR(1)                         not null,
   face_value         DECIMAL(9,4)                    not null,
   trans_amt          DECIMAL(16,2)                   null,
   cash_flag          CHAR(1)                         not null,
   reserve1           VARCHAR2(100)                   ,
   reserve2           VARCHAR2(100)                   ,
   reserve3           VARCHAR2(100)                   ,
   income             DECIMAL(16,4)                    not null,
   dialy_income       DECIMAL(16,4)                    not null,
   auto_flag          CHAR(1)                          not null
);
alter table his_tbsharedetail
   add constraint PK_HIS_TBSHAREDETAIL primary key (sum_date, client_no, cfm_no, ta_code, prd_code);

/*==============================================================*/
/* Index: idx_hisshdetail                                       */
/*==============================================================*/
create index idx_hisshdetail on his_tbsharedetail (
   client_no ASC,
   prd_code ASC
);

/*==============================================================*/
/* Table: his_tbglfhz                                           */
/*==============================================================*/
create table his_tbglfhz  (
   sum_date           INTEGER                         not null,
   sum_flag           CHAR(1)                         not null,
   internal_branch    CHAR(12)                        not null,
   client_type        CHAR(1)                         not null,
   prd_code           CHAR(12)                        not null,
   branch_no          CHAR(16)                        not null,
   ta_code            CHAR(12)                        not null,
   trans_fee          DECIMAL(16,2)                   not null,
   open_fee           DECIMAL(16,2)                   not null,
   curr_product       CHAR(3)                         not null,
   prd_type           CHAR(1)                         not null
);
alter table his_tbglfhz
   add constraint PK_HIS_TBGLFHZ primary key (sum_date, sum_flag, internal_branch, client_type, prd_code);

/*==============================================================*/
/* Table: tbfundfiles                                           */
/*==============================================================*/
create table tbfundfiles  (
   trans_date         INTEGER                          not null,
   prd_code           CHAR(12)                         not null,
   targ_prd_code      CHAR(12)                         not null,
   trans_code         CHAR(6)                          not null,
   ta_code            CHAR(12)                         not null,
   amt                DECIMAL(16,2)                    not null,
   vol                DECIMAL(16,3)                    not null,
   cfm_amt            DECIMAL(16,2)                    not null,
   cfm_vol            DECIMAL(16,3)                    not null,
   agio               DECIMAL(14,6)                    not null,
   charge             DECIMAL(16,2)                    not null,
   NAV                DECIMAL(20,8)                    not null,
   exchange_rate      DECIMAL(16,4)                    not null,
   cfm_date           INTEGER                          not null,
   targ_cfm_vol       DECIMAL(16,3)                    not null,
   bank_amt           DECIMAL(16,2)                    not null,
   trans_amt          DECIMAL(16,2)                    not null,
   invest_date        INTEGER                          not null
);
alter table tbfundfiles
   add constraint PK_TBFUNDFILES primary key (trans_date, prd_code, targ_prd_code, trans_code);

/*==============================================================*/
/* Table: his_tbclientpro                                       */
/*==============================================================*/
create table his_tbclientpro  (
   sum_date           INTEGER                         not null,
   client_no          CHAR(20)                        not null,
   curr_type          CHAR(3)                         not null,
   day_value          DECIMAL(16,2)                   not null,
   avg_value          DECIMAL(16,2)                   not null
);
alter table his_tbclientpro
   add constraint PK_HIS_TBCLIENTPRO primary key (sum_date, client_no);

/*==============================================================*/
/* Table: tbsquare                                              */
/*==============================================================*/
create table tbsquare  (
   bank_no            CHAR(2)                         not null,
   trans_date         INTEGER                         not null,
   clear_date         INTEGER                         not null,
   serial_no          CHAR(24)                        not null,
   busin_code         CHAR(6)                         not null,
   client_type        CHAR(1)                         not null,
   client_no          CHAR(20)                        not null,
   bank_acc           CHAR(32)                        not null,
   ta_code            CHAR(12)                        not null,
   branch_no          CHAR(16)                        not null,
   oper_no            CHAR(16)                        not null,
   prd_code           CHAR(12)                        not null,
   curr_type          CHAR(3)                         not null,
   cash_flag          CHAR(1)                         not null,
   channel            CHAR(1)                         not null,
   liqu_dir           CHAR(1)                         not null,
   amt                DECIMAL(16,2)                   not null,
   unfrozen_amt       DECIMAL(16,2)                   not null,
   frozen_amt         DECIMAL(16,2)                   not null,
   prd_type           CHAR(1)                         not null,
   reserve1           VARCHAR2(100)                   not null,
   status             CHAR(1)                         not null,
   curr_product       CHAR(3)                         not null,
   prd_amt            DECIMAL(16,2)                   not null,
   asso_trans_amt     DECIMAL(16,2)                   not null,
   asso_prd_amt       DECIMAL(16,2)                   not null,
   asso_serial        CHAR(24)                        not null,
   vol                DECIMAL(16,3)                   not null,
   nav                DECIMAL(12,8)                   not null,
   fee                DECIMAL(16,2)                   not null,
   fee_product        DECIMAL(16,2)                   not null,
   targ_prd_code      CHAR(12)                        not null,
   targ_curr          CHAR(3)                         not null,
   targ_vol           DECIMAL(16,3)                   not null,
   targ_nav           DECIMAL(12,8)                   not null,
   div_mode           CHAR(1)                         not null,
   prd_kind           CHAR(2)                         not null,
   finish_date        INTEGER                         not null,
   red_type           CHAR(1)                         not null,
   host_serial        CHAR(24)                        not null,
   face_value         DECIMAL(9,4)                    not null,
   order_no           INTEGER                         not null,
   square_date        INTEGER                         not null,
   cfm_date           INTEGER                         not null
);

/*==============================================================*/
/* Index: idx_square1                                           */
/*==============================================================*/
create index idx_square1 on tbsquare (
   trans_date ASC,
   ta_code ASC
);

/*==============================================================*/
/* Index: idx_square2                                           */
/*==============================================================*/
create index idx_square2 on tbsquare (
   clear_date ASC
);

/*==============================================================*/
/* Index: idx_square3                                           */
/*==============================================================*/
create index idx_square3 on tbsquare (
   trans_date ASC,
   prd_code ASC,
   busin_code ASC
);

/*==============================================================*/
/* Index: idx_square4                                           */
/*==============================================================*/
create index idx_square4 on tbsquare (
   trans_date ASC,
   order_no ASC
);

/*==============================================================*/
/* Index: idx_square5                                           */
/*==============================================================*/
create index idx_square5 on tbsquare (
   square_date ASC
);

/*==============================================================*/
/* Table: tbbankinfo                                            */
/*==============================================================*/
create table tbbankinfo  (
   account_name       VARCHAR2(100)                   not null,
   account_no         VARCHAR2(100),
   fax_no             VARCHAR2(60),
   tel_no             VARCHAR2(60)                    not null,
   order_ref          CHAR(50)                        not null,
   reserve1           VARCHAR2(100)                   not null,
   reserve2           VARCHAR2(100)                   not null,
   reserve3           VARCHAR2(100)                   not null
);

/*==============================================================*/
/* Table: his_tbaccreq                                          */
/*==============================================================*/
create table his_tbaccreq  (
   trans_date         INTEGER                         not null,
   serial_no          CHAR(24)                        not null,
   seller_code        CHAR(3)                         not null,
   prd_type           CHAR(1)                         not null,
   seller_serial      CHAR(32)                        not null,
   trans_time         INTEGER                         not null,
   trans_code         CHAR(6)                         not null,
   branch_no          CHAR(16)                        not null,
   ta_code            CHAR(12)                        not null,
   client_type        CHAR(1)                         not null,
   client_no          CHAR(20)                        not null,
   id_type            CHAR(1)                         not null,
   id_code            CHAR(30)                        not null,
   client_name        VARCHAR2(100)                    not null,
   short_name         CHAR(40)                        not null,
   asset_acc          CHAR(20)                        not null,
   base_acc           CHAR(10)                        not null,
   bank_acc           CHAR(32)                        not null,
   sex                CHAR(1)                         not null,
   birthday           INTEGER                         not null,
   address            VARCHAR2(60)                    not null,
   post_code          CHAR(6)                         not null,
   mobile             CHAR(15)                        not null,
   tel                CHAR(15)                        not null,
   fax                CHAR(15)                        not null,
   email              CHAR(40)                        not null,
   send_mode          CHAR(8)                         not null,
   send_freq          CHAR(1)                         not null,
   div_mode           CHAR(1)                         not null,
   asso_date          INTEGER                         not null,
   frozen_cause       CHAR(1)                         not null,
   summary            CHAR(30)                        not null,
   asso_serial        CHAR(24)                        not null,
   phi_date           INTEGER                         not null,
   open_branch        CHAR(16)                        not null,
   channel            CHAR(1)                         not null,
   term_no            CHAR(16)                        not null,
   oper_no            CHAR(16)                        not null,
   auth_oper          CHAR(16)                        not null,
   client_manager     CHAR(16)                        not null,
   err_code           CHAR(7)                         not null,
   err_msg            VARCHAR2(100)                   not null,
   status             CHAR(1)                         not null,
   deal_mode          CHAR(1)                         not null,
   cfm_date           INTEGER                         not null,
   cfm_no             CHAR(24)                        not null,
   internal_branch    CHAR(12)                        not null,
   reserve1           VARCHAR2(100)                   not null,
   ex_serial          CHAR(32),
   turn_status        CHAR(1)
);
alter table his_tbaccreq
   add constraint PK_HIS_TBACCREQ primary key (cfm_date, serial_no);

/*==============================================================*/
/* Table: his_tbbkcomp                                          */
/*==============================================================*/
create table his_tbbkcomp  (
   trans_date         INTEGER                         not null,
   to_host_serial     CHAR(24)                        not null,
   host_serial        CHAR(24),
   host_trans_code    CHAR(6),
   amt                DECIMAL(16,2),
   curr_type          CHAR(3),
   bank_acc           CHAR(32),
   status             CHAR(1)
);

/*==============================================================*/
/* Table: his_tbbkcompdetail                                    */
/*==============================================================*/
create table his_tbbkcompdetail  (
   trans_date         INTEGER                         not null,
   to_host_serial     CHAR(24)                        not null,
   host_serial        CHAR(24)                        not null,
   status             CHAR(1),
   ta_code            CHAR(12),
   client_no          CHAR(20),
   client_type        CHAR(1),
   host_bk_acc        CHAR(32),
   sys_bk_acc         CHAR(32),
   branch_no          CHAR(16),
   host_amt           DECIMAL(16,2),
   sys_amt            DECIMAL(16,2),
   unequa_flag        CHAR(40)
);

/*==============================================================*/
/* Table: his_tbcjhz                                            */
/*==============================================================*/
create table his_tbcjhz  (
   sum_date           INTEGER                         not null,
   sum_flag           CHAR(1)                         not null,
   internal_branch    CHAR(12)                        not null,
   client_type        CHAR(1)                         not null,
   prd_code           CHAR(12)                        not null,
   branch_no          CHAR(16)                        not null,
   ta_code            CHAR(12)                        not null,
   num                INTEGER                         not null,
   amt                DECIMAL(16,3)                   not null,
   vol                DECIMAL(16,3)                   not null,
   charge             DECIMAL(16,2)                   not null,
   stamp_tax          DECIMAL(16,2)                   not null,
   int_tax            DECIMAL(16,2)                   not null,
   ta_fee             DECIMAL(16,2)                   not null,
   other_fee          DECIMAL(16,2)                   not null,
   prd_type           CHAR(1)                         not null,
   curr_type          CHAR(3)                         not null,
   curr_product       CHAR(3)                         not null
);
alter table his_tbcjhz
   add constraint PK_HIS_TBCJHZ primary key (sum_date, sum_flag, client_type, prd_code, internal_branch);

/*==============================================================*/
/* Table: his_tbfeyehz                                          */
/*==============================================================*/
create table his_tbfeyehz  (
   sum_date           INTEGER                         not null,
   sum_flag           CHAR(1)                         not null,
   internal_branch    CHAR(12)                        not null,
   client_type        CHAR(1)                         not null,
   prd_code           CHAR(12)                        not null,
   branch_no          CHAR(16)                        not null,
   ta_code            CHAR(12)                        not null,
   tot_vol            DECIMAL(16,3)                   not null,
   long_frozen_vol    DECIMAL(16,3)                   not null,
   nav                DECIMAL(12,8)                   not null,
   client_num         INTEGER                         not null,
   prd_type           CHAR(1)                         not null,
   curr_product       CHAR(3)                         not null,
   face_value         DECIMAL(9,4)                    not null
);
alter table his_tbfeyehz
   add constraint PK_HIS_TBFEYEHZ primary key (sum_date, sum_flag, client_type, prd_code, internal_branch);

/*==============================================================*/
/* Table: his_tbhzshz                                         */
/*==============================================================*/
create table his_tbhzshz  (
   sum_date           INTEGER                         not null,
   sum_flag           CHAR(1)                         not null,
   internal_branch    CHAR(12)                        not null,
   client_type        CHAR(1)                         not null,
   seller_code        CHAR(3)                         not null,
   ta_code            CHAR(12)                        not null,
   branch_no          CHAR(16)                        not null,
   sign_num           INTEGER                         not null,
   signoff_num        INTEGER                         not null,
   register_num       INTEGER                         not null,
   cancel_num         INTEGER                         not null,
   allot_num          INTEGER                         not null,
   allot_amt          DECIMAL(16,2)                   not null,
   allot_vol          DECIMAL(16,3)                   not null,
   sub_num            INTEGER                         not null,
   sub_amt            DECIMAL(16,2)                   not null,
   sub_vol            DECIMAL(16,3)                   not null,
   red_num            INTEGER                         not null,
   red_amt            DECIMAL(16,2)                   not null,
   red_vol            DECIMAL(16,3)                   not null,
   div_mode_num       INTEGER                         not null,
   frozen_num         INTEGER                         not null,
   frozen_vol         DECIMAL(16,3)                   not null,
   unfrozen_num       INTEGER                         not null,
   unfrozen_vol       DECIMAL(16,3)                   not null,
   forcered_num       INTEGER                         not null,
   forcered_vol       DECIMAL(16,3)                   not null,
   forcered_amt       DECIMAL(16,2)                   not null,
   tran_num           INTEGER                         not null,
   tran_vol           DECIMAL(16,3)                   not null,
   pre_red_num        INTEGER                         not null,
   pre_red_vol        DECIMAL(16,3)                   not null,
   pre_red_amt        DECIMAL(16,2)                   not null,
   conv_num           INTEGER                         not null,
   conv_vol           DECIMAL(16,3)                   not null,
   trust_in_num       INTEGER                         not null,
   trust_in_vol       DECIMAL(16,3)                   not null,
   trust_out_num      INTEGER                         not null,
   trust_out_vol      DECIMAL(16,3)                   not null,
   div_num            INTEGER                         not null,
   div_amt            DECIMAL(16,2)                   not null,
   div_vol            DECIMAL(16,3)                   not null,
   prd_type           CHAR(1)                         not null
);
alter table his_tbhzshz
   add constraint PK_HIS_TBHZSHZ primary key (sum_date, sum_flag, client_type, seller_code, ta_code, internal_branch);

/*==============================================================*/
/* Table: his_tbkxhhz                                           */
/*==============================================================*/
create table his_tbkxhhz  (
   sum_date           INTEGER                         not null,
   sum_flag           CHAR(1)                         not null,
   internal_branch    CHAR(12)                        not null,
   client_type        CHAR(1)                         not null,
   ta_code            CHAR(12)                        not null,
   branch_no          CHAR(16)                        not null,
   sign_num           INTEGER                         not null,
   signoff_num        INTEGER                         not null,
   register_num       INTEGER                         not null,
   cancel_num         INTEGER                         not null,
   prd_type           CHAR(1)                         not null
);
alter table his_tbkxhhz
   add constraint PK_HIS_TBKXHHZ primary key (sum_date, sum_flag, client_type, ta_code, internal_branch);

/*==============================================================*/
/* Table: his_tbqqhz                                            */
/*==============================================================*/
create table his_tbqqhz  (
   sum_date           INTEGER                         not null,
   sum_flag           CHAR(1)                         not null,
   internal_branch    CHAR(12)                        not null,
   client_type        CHAR(1)                         not null,
   prd_code           CHAR(12)                        not null,
   branch_no          CHAR(16)                        not null,
   ta_code            CHAR(12)                        not null,
   allot_num          INTEGER                         not null,
   allot_amt          DECIMAL(16,2)                   not null,
   sub_num            INTEGER                         not null,
   sub_amt            DECIMAL(16,2)                   not null,
   auto_sub_num       INTEGER                         not null,
   auto_sub_amt       DECIMAL(16,2)                   not null,
   red_num            INTEGER                         not null,
   red_vol            DECIMAL(16,3)                   not null,
   force_red_num      INTEGER                         not null,
   force_red_vol      DECIMAL(16,3)                   not null,
   pre_red_num        INTEGER                         not null,
   pre_red_vol        DECIMAL(16,3)                   not null,
   div_mode_num       INTEGER                         not null,
   conv_vol           DECIMAL(16,3)                   not null,
   conv_num           INTEGER                         not null,
   trust_in_num       INTEGER                         not null,
   trust_in_vol       DECIMAL(16,3)                   not null,
   trust_out_num      INTEGER                         not null,
   trust_out_vol      DECIMAL(16,3)                   not null,
   frozen_num         INTEGER                         not null,
   frozen_vol         DECIMAL(16,3)                   not null,
   unfrozen_num       INTEGER                         not null,
   unfrozen_vol       DECIMAL(16,3)                   not null,
   tran_num           INTEGER                         not null,
   tran_vol           DECIMAL(16,3)                   not null,
   prd_amt            DECIMAL(16,2)                   not null,
   prd_type           CHAR(1)                         not null,
   curr_type          CHAR(3)                         not null,
   curr_product       CHAR(3)                         not null
);
alter table his_tbqqhz
   add constraint PK_HIS_TBQQHZ primary key (sum_date, sum_flag, client_type, prd_code, internal_branch);

/*==============================================================*/
/* Table: his_tbqyhshz                                          */
/*==============================================================*/
create table his_tbqyhshz  (
   sum_date           INTEGER                         not null,
   sum_flag           CHAR(1)                         not null,
   internal_branch    CHAR(12)                        not null,
   client_type        CHAR(1)                         not null,
   branch_no          CHAR(16)                        not null,
   bankacc_num        INTEGER                         not null,
   prd_type           CHAR(1)                         not null
);
alter table his_tbqyhshz
   add constraint PK_HIS_TBQYHSHZ primary key (sum_date, sum_flag, internal_branch, client_type, prd_type);

/*==============================================================*/
/* Table: his_tbqyjyhz                                          */
/*==============================================================*/
create table his_tbqyjyhz  (
   sum_date           INTEGER                         not null,
   sum_flag           CHAR(1)                         not null,
   internal_branch    CHAR(12)                        not null,
   client_type        CHAR(1)                         not null,
   branch_no          CHAR(16)                        not null,
   sign_num           INTEGER                         not null,
   signoff_num        INTEGER                         not null,
   prd_type           CHAR(1)                         not null
);
alter table his_tbqyjyhz
   add constraint PK_HIS_TBQYJYHZ primary key (sum_date, sum_flag, internal_branch, client_type, prd_type);

/*==============================================================*/
/* Table: his_tbsquare                                          */
/*==============================================================*/
create table his_tbsquare  (
   bank_no            CHAR(2)                         not null,
   trans_date         INTEGER                         not null,
   clear_date         INTEGER                         not null,
   serial_no          CHAR(24)                        not null,
   busin_code         CHAR(6)                         not null,
   client_type        CHAR(1)                         not null,
   client_no          CHAR(20)                        not null,
   bank_acc           CHAR(32)                        not null,
   ta_code            CHAR(12)                        not null,
   branch_no          CHAR(16)                        not null,
   oper_no            CHAR(16)                        not null,
   prd_code           CHAR(12)                        not null,
   curr_type          CHAR(3)                         not null,
   cash_flag          CHAR(1)                         not null,
   channel            CHAR(1)                         not null,
   liqu_dir           CHAR(1)                         not null,
   amt                DECIMAL(16,2)                   not null,
   unfrozen_amt       DECIMAL(16,2)                   not null,
   frozen_amt         DECIMAL(16,2)                   not null,
   prd_type           CHAR(1)                         not null,
   reserve1           VARCHAR2(100)                   not null,
   status             CHAR(1)                         not null,
   curr_product       CHAR(3)                         not null,
   prd_amt            DECIMAL(16,2)                   not null,
   asso_trans_amt     DECIMAL(16,2)                   not null,
   asso_prd_amt       DECIMAL(16,2)                   not null,
   asso_serial        CHAR(24)                        not null,
   vol                DECIMAL(16,3)                   not null,
   nav                DECIMAL(12,8)                   not null,
   fee                DECIMAL(16,2)                   not null,
   fee_product        DECIMAL(16,2)                   not null,
   targ_prd_code      CHAR(12)                        not null,
   targ_curr          CHAR(3)                         not null,
   targ_vol           DECIMAL(16,3)                   not null,
   targ_nav           DECIMAL(12,8)                   not null,
   div_mode           CHAR(1)                         not null,
   prd_kind           CHAR(2)                         not null,
   finish_date        INTEGER                         not null,
   red_type           CHAR(1)                         not null,
   host_serial        CHAR(24)                        not null,
   face_value         DECIMAL(9,4)                    not null,
   order_no           INTEGER                         not null,
   square_date        INTEGER                         not null,
   cfm_date           INTEGER                         not null
);

/*==============================================================*/
/* Index: idx_hissquare1                                        */
/*==============================================================*/
create index idx_hissquare1 on his_tbsquare (
   trans_date ASC,
   ta_code ASC
);

/*==============================================================*/
/* Index: idx_hissquare2                                        */
/*==============================================================*/
create index idx_hissquare2 on his_tbsquare (
   clear_date ASC
);

/*==============================================================*/
/* Index: idx_hissquare3                                        */
/*==============================================================*/
create index idx_hissquare3 on his_tbsquare (
   trans_date ASC,
   prd_code ASC,
   busin_code ASC
);

/*==============================================================*/
/* Index: idx_hissquare4                                        */
/*==============================================================*/
create index idx_hissquare4 on his_tbsquare (
   trans_date ASC,
   order_no ASC
);

/*==============================================================*/
/* Table: his_tbsxfhz                                           */
/*==============================================================*/
create table his_tbsxfhz  (
   sum_date           INTEGER                         not null,
   sum_flag           CHAR(1)                         not null,
   internal_branch    CHAR(12)                        not null,
   client_type        CHAR(1)                         not null,
   prd_code           CHAR(12)                        not null,
   trans_code         CHAR(6)                         not null,
   branch_no          CHAR(16)                        not null,
   ta_code            CHAR(12)                        not null,
   trans_fee          DECIMAL(16,2),
   open_fee           DECIMAL(16,2),
   curr_type          CHAR(3)                         not null,
   prd_type           CHAR(1)                         not null,
   curr_product       CHAR(3)                         not null
);
alter table his_tbsxfhz
   add constraint PK_HIS_TBSXFHZ primary key (sum_date, sum_flag, client_type, trans_code, internal_branch, prd_code);

/*==============================================================*/
/* Table: his_tbtahshz                                          */
/*==============================================================*/
create table his_tbtahshz  (
   sum_date           INTEGER                         not null,
   sum_flag           CHAR(1)                         not null,
   internal_branch    CHAR(12)                        not null,
   client_type        CHAR(1)                         not null,
   ta_code            CHAR(12)                        not null,
   branch_no          CHAR(16)                        not null,
   taacc_num          INTEGER                         not null,
   prd_type           CHAR(1)                         not null
);
alter table his_tbtahshz
   add constraint PK_HIS_TBTAHSHZ primary key (sum_date, sum_flag, internal_branch, client_type, ta_code);

/*==============================================================*/
/* Table: tbaccreq                                              */
/*==============================================================*/
create table tbaccreq  (
   trans_date         INTEGER                         not null,
   serial_no          CHAR(24)                        not null,
   seller_code        CHAR(3)                         not null,
   prd_type           CHAR(1)                         not null,
   seller_serial      CHAR(32)                        not null,
   trans_time         INTEGER                         not null,
   trans_code         CHAR(6)                         not null,
   branch_no          CHAR(16)                        not null,
   ta_code            CHAR(12)                        not null,
   client_type        CHAR(1)                         not null,
   client_no          CHAR(20)                        not null,
   id_type            CHAR(1)                         not null,
   id_code            CHAR(30)                        not null,
   client_name        VARCHAR2(100)                    not null,
   short_name         CHAR(40)                        not null,
   asset_acc          CHAR(20)                        not null,
   base_acc           CHAR(10)                        not null,
   bank_acc           CHAR(32)                        not null,
   sex                CHAR(1)                         not null,
   birthday           INTEGER                         not null,
   address            VARCHAR2(60)                    not null,
   post_code          CHAR(6)                         not null,
   mobile             CHAR(15)                        not null,
   tel                CHAR(15)                        not null,
   fax                CHAR(15)                        not null,
   email              CHAR(40)                        not null,
   send_mode          CHAR(8)                         not null,
   send_freq          CHAR(1)                         not null,
   div_mode           CHAR(1)                         not null,
   asso_date          INTEGER                         not null,
   frozen_cause       CHAR(1)                         not null,
   summary            CHAR(30)                        not null,
   asso_serial        CHAR(24)                        not null,
   phi_date           INTEGER                         not null,
   open_branch        CHAR(16)                        not null,
   channel            CHAR(1)                         not null,
   term_no            CHAR(16)                        not null,
   oper_no            CHAR(16)                        not null,
   auth_oper          CHAR(16)                        not null,
   client_manager     CHAR(16)                        not null,
   err_code           CHAR(7)                         not null,
   err_msg            VARCHAR2(100)                   not null,
   status             CHAR(1)                         not null,
   deal_mode          CHAR(1)                         not null,
   cfm_date           INTEGER                         not null,
   cfm_no             CHAR(24)                        not null,
   internal_branch    CHAR(12)                        not null,
   reserve1           VARCHAR2(100)                   not null,
   ex_serial          CHAR(32),
   turn_status        CHAR(1)
);
alter table tbaccreq
   add constraint PK_TBACCREQ primary key (trans_date, serial_no);

/*==============================================================*/
/* Table: tbaccreqbak                                           */
/*==============================================================*/
create table tbaccreqbak  (
   trans_date         INTEGER                         not null,
   serial_no          CHAR(24)                        not null,
   seller_code        CHAR(3),
   prd_type           CHAR(1)                         not null,
   seller_serial      CHAR(32),
   trans_time         INTEGER                         not null,
   trans_code         CHAR(6)                         not null,
   branch_no          CHAR(16)                        not null,
   ta_code            CHAR(12)                        not null,
   client_type        CHAR(1)                         not null,
   client_no          CHAR(20)                        not null,
   id_type            CHAR(1)                         not null,
   id_code            CHAR(30)                        not null,
   client_name        VARCHAR2(100)                    not null,
   short_name         CHAR(40)                        not null,
   asset_acc          CHAR(20)                        not null,
   base_acc           CHAR(10)                        not null,
   bank_acc           CHAR(32)                        not null,
   sex                CHAR(1)                         not null,
   birthday           INTEGER                         not null,
   address            VARCHAR2(60)                    not null,
   post_code          CHAR(6)                         not null,
   mobile             CHAR(15)                        not null,
   tel                CHAR(15)                        not null,
   fax                CHAR(15)                        not null,
   email              CHAR(40)                        not null,
   send_mode          CHAR(8)                         not null,
   send_freq          CHAR(1)                         not null,
   div_mode           CHAR(1)                         not null,
   asso_date          INTEGER                         not null,
   frozen_cause       CHAR(1)                         not null,
   summary            CHAR(30)                        not null,
   asso_serial        CHAR(24)                        not null,
   phi_date           INTEGER                         not null,
   open_branch        CHAR(16)                        not null,
   channel            CHAR(1)                         not null,
   term_no            CHAR(16)                        not null,
   oper_no            CHAR(16)                        not null,
   auth_oper          CHAR(16)                        not null,
   client_manager     CHAR(16)                        not null,
   err_code           CHAR(7)                         not null,
   err_msg            VARCHAR2(100)                   not null,
   status             CHAR(1)                         not null,
   deal_mode          CHAR(1)                         not null,
   cfm_date           INTEGER                         not null,
   cfm_no             CHAR(24)                        not null,
   internal_branch    CHAR(12)                        not null,
   reserve1           VARCHAR2(100)                   not null,
   ex_serial          CHAR(32),
   turn_status        CHAR(1)
);
alter table tbaccreqbak
   add constraint PK_TBACCREQBAK primary key (trans_date, serial_no);

create index idx_accreqbak on tbaccreqbak (  
   serial_no  ASC 
);

/*==============================================================*/
/* Table: tbbatch                                               */
/*==============================================================*/
create table tbbatch  (
   trans_date         INTEGER                         not null,
   prd_type           CHAR(1)                         not null,
   prd_kind           CHAR(2)                         not null,
   ta_code            CHAR(12)                        not null,
   bat_type           CHAR(1)                         not null,
   order_no           INTEGER                         not null,
   trans_code         CHAR(6)                         not null,
   status             CHAR(1)                         not null,
   describe           CHAR(60)                        not null,
   clear_date         INTEGER                         not null,
   err_code           CHAR(7)                         not null,
   err_msg            CHAR(100)                       not null,
   forbid_redo        CHAR(1)                         not null
);
alter table tbbatch
   add constraint PK_TBBATCH primary key (ta_code, trans_code, prd_kind);

/*==============================================================*/
/* Table: tbbulletin                                            */
/*==============================================================*/
create table tbbulletin  (
   iss_date           INTEGER                         not null,
   ta_code            CHAR(6)                         not null,
   notify_type        CHAR(1)                         not null,
   bull_no            CHAR(20)                        not null,
   title              VARCHAR2(100)                   not null,
   summary            VARCHAR2(255)                   not null,
   bull_file          VARCHAR2(128)                   not null,
   reserve1           VARCHAR2(100)                   default ' ' not null
);

/*==============================================================*/
/* Table: tbclientmanager                                       */
/*==============================================================*/
create table tbclientmanager  (
   internal_manager   CHAR(12)                       default ' ' not null,
   client_manager     CHAR(16)                       not null,
   manager_name       VARCHAR2(60)                   default ' ' not null,
   branch_no          CHAR(16)                       default ' ' not null,
   up_manager         CHAR(16)                       default ' ' not null,
   manager_level      CHAR(2)                        default ' ' not null,
   prd_rights         CHAR(50)                       default ' ' not null,
   reserve1           VARCHAR2(100)                  default ' ' not null
);
alter table tbclientmanager
   add constraint PK_TBCLIENTMANAGER primary key (client_manager);


/*==============================================================*/
/* Table: tbclienttrade                                         */
/*==============================================================*/
create table tbclienttrade  (
   client_no          INTEGER                         not null,
   seller_code        CHAR(8)                         default ' ' not null,
   money_kind         CHAR(1)                         not null,
   secu_acc           CHAR(20)                        default ' ' not null,
   bank_acc           CHAR(32)                        default ' ' not null,
   secu_use_acc       CHAR(32)                        not null,
   password           CHAR(16)                        not null,
   open_branch        CHAR(16)                        not null,
   branch_no          CHAR(16)                        not null,
   open_date          INTEGER                         not null,
   send_freq          CHAR(1)                         not null,
   send_mode          CHAR(8)                         not null,
   status             CHAR(1)                         not null,
   reserve1           VARCHAR2(250)                   default ' ' not null
);
alter table tbclienttrade
   add constraint PK_TBCLIENTTRADE primary key (client_no, seller_code, money_kind, secu_acc, bank_acc);

/*==============================================================*/
/* Index: idx_clientyzzz1                                       */
/*==============================================================*/
create unique index idx_clientyzzz1 on tbclienttrade (
   seller_code ASC,
   secu_acc ASC
);

/*==============================================================*/
/* Index: idx_clientyzzz2                                       */
/*==============================================================*/
create index idx_clientyzzz2 on tbclienttrade (
   seller_code ASC,
   bank_acc ASC
);

/*==============================================================*/
/* Index: idx_clientyzzz3                                       */
/*==============================================================*/
create index idx_clientyzzz3 on tbclienttrade (
   seller_code ASC,
   client_no ASC
);

/*==============================================================*/
/* Index: idx_clientyzzz4                                       */
/*==============================================================*/
create index idx_clientyzzz4 on tbclienttrade (
   seller_code ASC
);

/*==============================================================*/
/* Table: tbissamt                                              */
/*==============================================================*/
create table tbissamt  (
   internal_code      CHAR(24)                        not null,
   internal_branch    CHAR(12)                        default ' ' not null,
   seller_code        CHAR(3)                         not null,
   prd_code           CHAR(12)                        not null,
   branch_no          CHAR(16)                        default ' ' not null,
   tot_amt            DECIMAL(16,2)                   not null,
   sale_amt           DECIMAL(16,2)                   not null,
   today_amt          DECIMAL(16,2)                   not null,
   nocfm_amt          DECIMAL(16,2)                   not null,
   org_amt            DECIMAL(16,2)                   not null,
   sale_oamt          DECIMAL(16,2)                   not null,
   today_oamt         DECIMAL(16,2)                   not null,
   nocfm_oamt         DECIMAL(16,2)                   not null,
   person_amt         DECIMAL(16,2)                   not null,
   sale_pamt          DECIMAL(16,2)                   not null,
   today_pamt         DECIMAL(16,2)                   not null,
   nocfm_pamt         DECIMAL(16,2)                   not null,
   adjust_amt         DECIMAL(16,2)                   not null,
   sadjust_amt        DECIMAL(16,2)                   not null,
   tadjust_amt        DECIMAL(16,2)                   not null,
   nadjust_amt        DECIMAL(16,2)                   not null,
   person_flag        CHAR(1)                         not null,
   person_min         DECIMAL(16,2)                   not null,
   person_max         DECIMAL(16,2)                   not null,
   org_flag           CHAR(1)                         not null,
   org_min            DECIMAL(16,2)                   not null,
   org_max            DECIMAL(16,2)                   not null
);
alter table tbissamt
   add constraint PK_TBISSAMT primary key (internal_code, internal_branch);

/*==============================================================*/
/* Index: idx_issamt                                            */
/*==============================================================*/
create index idx_issamt on tbissamt (
   seller_code ASC,
   prd_code ASC
);

/*==============================================================*/
/* Table: tbprdsell                                             */
/*==============================================================*/
create table tbprdsell  (
   internal_code      CHAR(24)                        not null,
   prd_type           CHAR(1)                         not null,
   prd_kind           CHAR(2)                         not null,
   prd_code           CHAR(12)                        not null,
   seller_code        CHAR(3)                         not null,
   ta_code            CHAR(12)                        not null,
   ta_name            VARCHAR2(200)                   not null,
   prd_name           VARCHAR2(200)                   not null,
   reserve1           VARCHAR2(100)                   not null
);
alter table tbprdsell
   add constraint PK_TBPRDSELL primary key (internal_code);

/*==============================================================*/
/* Index: idx_prdsell                                           */
/*==============================================================*/
create index idx_prdsell on tbprdsell (
   prd_type ASC,
   prd_code ASC,
   seller_code ASC
);

/*==============================================================*/
/* Table: tbsellerinfo                                        */
/*==============================================================*/
create table tbsellerinfo  (
   seller_code        CHAR(3)                         not null,
   seller_name        VARCHAR2(60)                    default ' ' not null,
   short_name         CHAR(20)                        default ' ' not null,
   branch_no          CHAR(16)                        default ' ' not null,
   secu_ip            CHAR(20)                        default ' ' not null,
   secu_port          INTEGER                         default 0 not null,
   clear_status       CHAR(1)                         not null,
   status             CHAR(1)                         not null,
   interface_type     CHAR(1)                         not null,
   key_flag           CHAR(3)                         default '000' not null,
   m_exch_key         CHAR(16)                        default ' ' not null,
   m_pkg_key          CHAR(16)                        default ' ' not null,
   m_pin_key          CHAR(16)                        default ' ' not null,
   m_mac_key          CHAR(16)                        default ' ' not null,
   n_exch_key         CHAR(16)                        default ' ' not null,
   n_pkg_key          CHAR(16)                        default ' ' not null,
   n_pin_key          CHAR(16)                        default ' ' not null,
   n_mac_key          CHAR(16)                        default ' ' not null,
   o_exch_key         CHAR(16)                        default ' ' not null,
   o_pkg_key          CHAR(16)                        default ' ' not null,
   o_pin_key          CHAR(16)                        default ' ' not null,
   o_mac_key          CHAR(16)                        default ' ' not null,
   reserve1           VARCHAR2(250)                   default ' ' not null
);
alter table tbsellerinfo
   add constraint PK_TBSELLERINFO primary key (seller_code);

/*==============================================================*/
/* Table: tbriskscore                                           */
/*==============================================================*/
create table tbriskscore  (
   question           CHAR(2)                         not null,
   risk_option        CHAR(1)                         not null,
   subject            VARCHAR2(255)                   not null,
   score              DECIMAL                         not null,
   reserve1           VARCHAR2(100)                   default ' ' not null
);
alter table tbriskscore
   add constraint PK_TBRISKSCORE primary key (question, risk_option);

/*==============================================================*/
/* Table: tbbkcomp                                              */
/*==============================================================*/
create table tbbkcomp  (
   trans_date         INTEGER                         not null,
   to_host_serial     CHAR(24)                        not null,
   host_serial        CHAR(24),
   host_trans_code    CHAR(6),
   amt                DECIMAL(16,2),
   curr_type          CHAR(3),
   bank_acc           CHAR(32),
   status             CHAR(1)
);

/*==============================================================*/
/* Table: tbbkcompdetail                                        */
/*==============================================================*/
create table tbbkcompdetail  (
   trans_date         INTEGER                         not null,
   to_host_serial     CHAR(24)                        not null,
   host_serial        CHAR(24)                        not null,
   status             CHAR(1),
   ta_code            CHAR(12),
   client_no          CHAR(20),
   client_type        CHAR(1),
   host_bk_acc        CHAR(32),
   sys_bk_acc         CHAR(32),
   branch_no          CHAR(16),
   host_amt           DECIMAL(16,2),
   sys_amt            DECIMAL(16,2),
   unequa_flag        CHAR(40)
);

/*==============================================================*/
/* Table: tbclientagio                                          */
/*==============================================================*/
create table tbclientagio  (
   prd_code           CHAR(12)                        not null,
   trans_code         CHAR(6)                         not null,
   client_group       CHAR(1)                         not null,
   agio               DECIMAL(5,4)                    not null
);
alter table tbclientagio
   add constraint PK_TBCLIENTAGIO primary key (prd_code, trans_code, client_group);

/*==============================================================*/
/* Table: his_tbfundfiles                                       */
/*==============================================================*/
create table his_tbfundfiles  (
   trans_date         INTEGER                          not null,
   prd_code           CHAR(12)                         not null,
   targ_prd_code      CHAR(12)                         not null,
   trans_code         CHAR(6)                          not null,
   ta_code            CHAR(12)                         not null,
   amt                DECIMAL(16,2)                    not null,
   vol                DECIMAL(16,3)                    not null,
   cfm_amt            DECIMAL(16,2)                    not null,
   cfm_vol            DECIMAL(16,3)                    not null,
   agio               DECIMAL(14,4)                    not null,
   charge             DECIMAL(16,2)                    not null,
   NAV                DECIMAL(20,8)                    not null,
   exchange_rate      DECIMAL(16,4)                    not null,
   cfm_date           INTEGER                          not null,
   targ_cfm_vol       DECIMAL(16,3)                    not null,
   bank_amt           DECIMAL(16,2)                    not null,
   trans_amt          DECIMAL(16,2)                    not null,
   invest_date        INTEGER                          not null
);
alter table his_tbfundfiles
   add constraint PK_HIS_TBFUNDFILES primary key (trans_date, prd_code, targ_prd_code, trans_code, cfm_date);

/*==============================================================*/
/* Table: tbprdchandisc                                         */
/*==============================================================*/
create table tbprdchandisc  (
   prd_code           CHAR(12)                        not null,
   trans_code         CHAR(6)                         not null,
   channel            CHAR(1)                         not null,
   agio               DECIMAL(5,4)                    not null
);
alter table tbprdchandisc
   add constraint PK_TBPRDCHANDISC primary key (prd_code, trans_code, channel);

/*==============================================================*/
/* Table: tbtainfo                                              */
/*==============================================================*/
create table tbtainfo  (
   ta_code            CHAR(12)                        not null,
   ta_shortname       CHAR(60)                        not null,
   ta_name            VARCHAR2(200)                   not null,
   acc_mode           CHAR(1)                         not null,
   sum_flag           CHAR(1)                         not null,
   change_trust_time  CHAR(1)                         not null,
   div_set_flag       CHAR(1)                         not null,
   div_modes          CHAR(8)                         not null,
   frozen_div_flag    CHAR(1)                         not null,
   sub_cfm_flag       CHAR(1)                         not null,
   comp_mode          CHAR(1)                         not null,
   templet            CHAR(6)                         not null,
   imp_date           INTEGER                         not null,
   comp_date          INTEGER                         not null,
   prered_flag        CHAR(1)                         not null,
   open_time          INTEGER                         not null,
   close_time         INTEGER                         not null,
   ta_path            CHAR(40)                        not null,
   append_flag        CHAR(1)                         not null,
   clear_status       CHAR(1)                         not null,
   status             CHAR(1)                         not null,
   prd_type           CHAR(1)                         not null,
   account_name       VARCHAR2(100)                   not null,
   account_no         VARCHAR2(100)                   not null,
   fax_no             VARCHAR2(60)                    not null,
   tel_no             VARCHAR2(60)                    not null,
   order_ref          CHAR(50)                        not null,
   reserve1           VARCHAR2(100)                   not null,
   reserve2           VARCHAR2(100)                   not null,
   reserve3           VARCHAR2(100)                   not null
);
alter table tbtainfo
   add constraint PK_TBTAINFO primary key (ta_code);

/*==============================================================*/
/* Table: tbsharedetailbak                                      */
/*==============================================================*/
create table tbsharedetailbak  (
   client_no          CHAR(20)                        not null,
   ta_code            CHAR(12)                        not null,
   cfm_no             CHAR(24)                        not null,
   internal_code      CHAR(24)                        not null,
   seller_code        CHAR(3)                         not null,
   serial_no          CHAR(24)                        not null,
   trans_date         INTEGER                         not null,
   cfm_date           INTEGER                         not null,
   prd_code           CHAR(12)                        not null,
   asset_acc          CHAR(20)                        not null,
   bank_acc           CHAR(32)                        not null,
   tot_vol            DECIMAL(16,3)                   not null,
   frozen_vol         DECIMAL(16,3)                   not null,
   long_frozen_vol    DECIMAL(16,3)                   not null,
   ystdy_tot_vol      DECIMAL(16,3)                   not null,
   prd_amt            DECIMAL(16,2)                   not null,
   bank_amt           DECIMAL(16,2)                   not null,
   open_branch        CHAR(16)                        default ' ' not null,
   trans_branch       CHAR(16)                        not null,
   client_type        CHAR(1)                         not null,
   sub_nav            DECIMAL(12,8)                   not null,
   group_vol          DECIMAL(16,3)                   not null,
   div_mode           CHAR(2)                         not null,
   div_rate           DECIMAL(5,4)                    not null,
   append_flag        CHAR(1)                         not null,
   prd_type           CHAR(1)                         not null,
   face_value         DECIMAL(9,4)                    not null,
   trans_amt          DECIMAL(16,2)                   null,
   cash_flag          CHAR(1)                         not null,
   reserve1           VARCHAR2(100)                   ,
   reserve2           VARCHAR2(100)                   ,
   reserve3           VARCHAR2(100)                   ,
   income             DECIMAL(16,4)                   not null,
   dialy_income       DECIMAL(16,4)                   not null,
   auto_flag          CHAR(1)                         not null               
);
alter table tbsharedetailbak
   add constraint PK_TBSHAREDETAILBAK primary key (client_no, cfm_no, ta_code, prd_code);

/*==============================================================*/
/* Index:: idx_sharedetailbak_2                                 */
/*==============================================================*/
create index idx_sharedetailbak_2 on tbsharedetailbak (  
   ta_code   ASC,
   client_no ASC
);

/*==============================================================*/
/* Table: tbsharedetailtmp                                      */
/*==============================================================*/
create table tbsharedetailtmp  (
   client_no          CHAR(20)                        not null,
   ta_code            CHAR(12)                        not null,
   cfm_no             CHAR(24)                        not null,
   internal_code      CHAR(24)                        not null,
   seller_code        CHAR(3)                         not null,
   serial_no          CHAR(24)                        not null,
   trans_date         INTEGER                         not null,
   cfm_date           INTEGER                         not null,
   prd_code           CHAR(12)                        not null,
   asset_acc          CHAR(20)                        not null,
   bank_acc           CHAR(32)                        not null,
   tot_vol            DECIMAL(16,3)                   not null,
   frozen_vol         DECIMAL(16,3)                   not null,
   long_frozen_vol    DECIMAL(16,3)                   not null,
   ystdy_tot_vol      DECIMAL(16,3)                   not null,
   prd_amt            DECIMAL(16,2)                   not null,
   bank_amt           DECIMAL(16,2)                   not null,
   open_branch        CHAR(16)                        default ' ' not null,
   trans_branch       CHAR(16)                        not null,
   client_type        CHAR(1)                         not null,
   sub_nav            DECIMAL(12,8)                   not null,
   group_vol          DECIMAL(16,3)                   not null,
   div_mode           CHAR(2)                         not null,
   div_rate           DECIMAL(5,4)                    not null,
   append_flag        CHAR(1)                         not null,
   prd_type           CHAR(1)                         not null,
   face_value         DECIMAL(9,4)                    not null,
   trans_amt          DECIMAL(16,2)                   null,
   cash_flag          CHAR(1)                         not null,
   reserve1           VARCHAR2(100)                   ,
   reserve2           VARCHAR2(100)                   ,
   reserve3           VARCHAR2(100)                   ,
   income             DECIMAL(16,4)                   not null,
   dialy_income       DECIMAL(16,4)                   not null,
   auto_flag          CHAR(1)                         not null                 
);
alter table tbsharedetailtmp
   add constraint PK_TBSHAREDETAILTMP primary key (client_no, cfm_no, ta_code, prd_code);
   
/*==============================================================*/
/* Index: idx_sharedetailbak                                    */
/*==============================================================*/
create index idx_sharedetailbak on tbsharedetailbak (
   client_no ASC,
   prd_code ASC
);

/*==============================================================*/
/* Table: tbtransreqbak                                         */
/*==============================================================*/
create table tbtransreqbak  (
   trans_date         INTEGER                         not null,
   serial_no          CHAR(24)                        not null,
   seller_code        CHAR(3)                         not null,
   prd_kind           CHAR(2)                         not null,
   seller_serial      CHAR(32)                        not null,
   trans_code         CHAR(6)                         not null,
   phi_date           INTEGER                         not null,
   trans_time         INTEGER                         not null,
   branch_no          CHAR(16)                        not null,
   open_branch        CHAR(16)                        not null,
   channel            CHAR(1)                         not null,
   term_no            CHAR(16)                        not null,
   oper_no            CHAR(16)                        not null,
   auth_oper          CHAR(16)                        not null,
   client_no          CHAR(20)                        not null,
   client_type        CHAR(1)                         not null,
   bank_acc           CHAR(32)                        not null,
   asset_acc          CHAR(20)                        not null,
   ta_code            CHAR(12)                        not null,
   internal_code      CHAR(24)                        not null,
   prd_code           CHAR(12)                        not null,
   curr_type          CHAR(3)                         not null,
   amt                DECIMAL(16,2)                   not null,
   vol                DECIMAL(16,3)                   not null,
   agio               DECIMAL(5,4)                    not null,
   share_class        CHAR(1)                         not null,
   div_mode           CHAR(1)                         not null,
   div_rate           DECIMAL(5,4)                    not null,
   larg_red_flag      CHAR(1)                         not null,
   frozen_cause       CHAR(1)                         not null,
   transfer_cause     CHAR(1)                         not null,
   asso_date          INTEGER                         not null,
   asso_serial        CHAR(24)                        not null,
   targ_prd_code      CHAR(12)                        not null,
   conv_dir           CHAR(1)                         not null,
   targ_seller_code   CHAR(3)                         not null,
   targ_branch        CHAR(16)                        not null,
   targ_asset_acc     CHAR(20)                        not null,
   client_manager     CHAR(16)                        not null,
   summary            CHAR(30)                        not null,
   err_code           CHAR(7)                         not null,
   err_msg            VARCHAR2(100)                   not null,
   status             CHAR(1)                         not null,
   cfm_date           INTEGER                         not null,
   cfm_no             CHAR(24)                        not null,
   cfm_vol            DECIMAL(16,3)                   not null,
   deal_mode          CHAR(1)                         not null,
   internal_branch    CHAR(12)                        not null,
   reserve1           VARCHAR2(100)                   not null,
   ex_serial          CHAR(32)                        not null,
   prd_amt            DECIMAL(16,2)                   not null,
   bank_amt           DECIMAL(16,2)                   not null,
   charge             DECIMAL(16,2)                   not null,
   auth_date          INTEGER                         not null,
   auth_serial_no     CHAR(24)                        not null,
   auth_count         INTEGER                         not null,
   curr_product       CHAR(3)                         not null,
   cfm_amt            DECIMAL(16,2)                   not null,
   red_type           CHAR(1)                         not null,
   control_flags      CHAR(10)                        not null,
   host_date          INTEGER                         not null,
   host_serial        CHAR(24)                        not null,
   repeal_status      CHAR(1)                         not null,
   repeal_num         INTEGER                         not null,
   turn_status        CHAR(1),
   prd_type           CHAR(1)                         not null,
   host_trans_code    CHAR(6)                         not null,
   monitor_flag       CHAR(1)                         not null,
   face_value         DECIMAL(9,4)                    not null,
   qdii_type          CHAR(1)                         not null,
   cash_flag          CHAR(1)                         not null,
   spreader           CHAR(16)                        not null,
   portfolio_rate     NUMERIC(5,2)                    not null,
   reserve2           VARCHAR2(100)                   not null,
   reserve3           VARCHAR2(100)                   not null,
   sub_fee            DECIMAL(16,2)                   default 0,
   service_fee        DECIMAL(16,2)                   default 0,
   original_num       DECIMAL(16,3)                   default 0
);
alter table tbtransreqbak
   add constraint PK_TBTRANSREQBAK primary key (serial_no);

/*==============================================================*/
/* Index: idx_transreqbak_1                                     */
/*==============================================================*/
create index idx_transreqbak_1 on tbtransreqbak (  
   ta_code   ASC,
   client_no ASC
);

/*==============================================================*/
/* Index: idx_transreqbak_2                                    */
/*==============================================================*/
create index idx_transreqbak_2 on tbtransreqbak (
   trans_date ASC,
   client_no ASC
);

/*==============================================================*/
/* Index: idx_transreqbak_3                                     */
/*==============================================================*/
create index idx_transreqbak_3 on tbtransreqbak (
   trans_date ASC,
   ta_code ASC,
   status ASC,
   trans_code ASC,
   prd_code ASC
);

/*==============================================================*/
/* Index: idx_transreqbak_4                                     */
/*==============================================================*/
create index idx_transreqbak_4 on tbtransreqbak (
   client_no ASC
);

/*==============================================================*/
/* Table: tbuserreq                                             */
/*==============================================================*/
create table tbuserreq  (
   trans_date         INTEGER                         not null,
   log_serial         CHAR(32)                        not null,
   user_id            CHAR(16)                        not null,
   curr_type          CHAR(3)                         not null,
   total_limit        DECIMAL(16,4)                   not null,
   auth_date          INTEGER                         not null,
   auth_user          CHAR(16)                        not null,
   oper_user          CHAR(16)                        not null,
   status             CHAR(1)                         not null
);
alter table tbuserreq
   add constraint PK_TBUSERREQ primary key (trans_date, log_serial);

/*==============================================================*/
/* Table: tbpubexchrate                                         */
/*==============================================================*/
create table tbpubexchrate  (
   curr_type          CHAR(3)                          not null,
   targ_curr_type     CHAR(3)                          not null,
   buy_rate           DECIMAL(15,9)                    not null,
   sell_rate          DECIMAL(15,9)                    not null
);

/*==============================================================*/
/* Index: idx_exchrate2                                         */
/*==============================================================*/
create index idx_exchrate2 on tbpubexchrate (
   curr_type ASC,
   targ_curr_type ASC
);

/*==============================================================*/
/* Table: tbsharetmp                                            */
/*==============================================================*/
create table tbsharetmp  (
   client_no          CHAR(20)                        not null,
   internal_code      CHAR(24)                        not null,
   seller_code        CHAR(3)                         not null,
   ta_code            CHAR(12)                        not null,
   prd_code           CHAR(12)                        not null,
   asset_acc          CHAR(20)                        not null,
   tot_vol            DECIMAL(16,3)                   not null,
   frozen_vol         DECIMAL(16,3)                   not null,
   long_frozen_vol    DECIMAL(16,3)                   not null,
   group_vol          DECIMAL(16,3)                   not null,
   div_mode           CHAR(2)                         not null,
   div_rate           DECIMAL(5,4)                    not null,
   ystdy_tot_vol      DECIMAL(16,3)                   not null,
   open_branch        CHAR(16)                        default ' ' not null,
   client_type        CHAR(1)                         not null,
   append_flag        CHAR(1)                         not null,
   bank_acc           CHAR(32)                        not null,
   prd_type           CHAR(1)                         not null,
   face_value         DECIMAL(9,4)                    not null,
   trans_amt          DECIMAL(16,2)
);
alter table tbsharetmp
   add constraint PK_TBSHARETMP primary key (client_no, internal_code, seller_code);

/*==============================================================*/
/* Index: idx_share_5                                           */
/*==============================================================*/
create index idx_share_5 on tbsharetmp (
   ta_code ASC
);

/*==============================================================*/
/* Index: idx_share_6                                           */
/*==============================================================*/
create index idx_share_6 on tbsharetmp (
   client_no ASC
);

/*==============================================================*/
/* Table: tbhostrisk                                            */
/*==============================================================*/
create table tbhostrisk  (
   client_no          CHAR(20)                        not null,
   risk_level         INTEGER                         not null,
   modi_date          INTEGER                         not null
);
alter table tbhostrisk
   add constraint PK_TBHOSTRISK primary key (client_no);

/*==============================================================*/
/* Table: his_tbkhgxd                                           */
/*==============================================================*/
create table his_tbkhgxd  (
   sum_date           INTEGER                         not null,
   sum_flag           CHAR(1)                         not null,
   client_no          CHAR(20)                        not null,
   client_type        CHAR(1)                         not null,
   prd_type           CHAR(1)                         not null,
   branch_no          CHAR(16)                        not null,
   internal_branch    CHAR(12)                        not null,
   trans_fee          DECIMAL(16,2)                   not null,
   manager_fee        DECIMAL(16,2)                   not null,
   change_fee         DECIMAL(16,2)                   not null
);
alter table his_tbkhgxd
   add constraint PK_HIS_TBKHGXD primary key (sum_date, sum_flag, client_no, client_type, prd_type);

/*==============================================================*/
/* Table: tbtaacc                                               */
/*==============================================================*/
create table tbtaacc  (
   ta_code            CHAR(12)                        not null,
   curr_type          CHAR(3)                         not null,
   account_no         VARCHAR2(100)                   not null,
   account_name       VARCHAR2(100)                   not null,
   reserve1           VARCHAR2(100)                   not null,
   reserve2           VARCHAR2(100)                   not null,
   reserve3           VARCHAR2(100)                   not null
);
alter table tbtaacc
   add constraint PK_TBTAACC primary key (ta_code, curr_type);

/*==============================================================*/
/* Table: his_tbcashhz                                          */
/*==============================================================*/
create table his_tbcashhz  (
   sum_date           INTEGER                         not null,
   sum_flag           CHAR(1)                         not null,
   internal_branch    CHAR(12)                        not null,
   client_type        CHAR(1)                         not null,
   prd_code           CHAR(12)                        not null,
   branch_no          CHAR(16)                        not null,
   ta_code            CHAR(12)                        not null,
   prd_type           CHAR(1)                         not null,
   prd_trustee        CHAR(3)                         not null,
   income_cash        DECIMAL(17,2)                   not null
);
alter table his_tbcashhz
   add constraint PK_HIS_TBCASHHZ primary key (sum_date, sum_flag, client_type, prd_code, internal_branch);

/*==============================================================*/
/* Table: tbsquarebak                                           */
/*==============================================================*/
create table tbsquarebak  (
   bank_no            CHAR(2)                          not null,
   trans_date         INTEGER                          not null,
   clear_date         INTEGER                          not null,
   serial_no          CHAR(24)                         not null,
   busin_code         CHAR(6)                          not null,
   client_type        CHAR(1)                          not null,
   client_no          CHAR(20)                         not null,
   bank_acc           CHAR(32)                         not null,
   ta_code            CHAR(12)                         not null,
   branch_no          CHAR(16)                         not null,
   oper_no            CHAR(16)                         not null,
   prd_code           CHAR(12)                         not null,
   curr_type          CHAR(3)                          not null,
   cash_flag          CHAR(1)                          not null,
   channel            CHAR(1)                          not null,
   liqu_dir           CHAR(1)                          not null,
   amt                DECIMAL(16,2)                    not null,
   unfrozen_amt       DECIMAL(16,2)                    not null,
   frozen_amt         DECIMAL(16,2)                    not null,
   prd_type           CHAR(1)                          not null,
   reserve1           VARCHAR2(100)                    not null,
   status             CHAR(1)                          not null,
   curr_product       CHAR(3)                          not null,
   prd_amt            DECIMAL(16,2)                    not null,
   asso_trans_amt     DECIMAL(16,2)                    not null,
   asso_prd_amt       DECIMAL(16,2)                    not null,
   asso_serial        CHAR(24)                         not null,
   vol                DECIMAL(16,3)                    not null,
   nav                DECIMAL(12,8)                    not null,
   fee                DECIMAL(16,2)                    not null,
   fee_product        DECIMAL(16,2)                    not null,
   targ_prd_code      CHAR(12)                         not null,
   targ_curr          CHAR(3)                          not null,
   targ_vol           DECIMAL(16,3)                    not null,
   targ_nav           DECIMAL(12,8)                    not null,
   div_mode           CHAR(1)                          not null,
   prd_kind           CHAR(2)                          not null,
   finish_date        INTEGER                          not null,
   red_type           CHAR(1)                          not null,
   host_serial        CHAR(24)                         not null,
   face_value         DECIMAL(9,4)                     not null,
   order_no           INTEGER                          not null,
   square_date        INTEGER                          not null,
   cfm_date           INTEGER                          not null
);

/*==============================================================*/
/* Index: idx_squarebak_1                                       */
/*==============================================================*/
create index idx_squarebak_1 on tbsquarebak (
   trans_date ASC,
   ta_code ASC
);

/*==============================================================*/
/* Index: idx_squarebak_2                                       */
/*==============================================================*/
create index idx_squarebak_2 on tbsquarebak (
   clear_date ASC
);

/*==============================================================*/
/* Index: idx_squarebak_3                                       */
/*==============================================================*/
create index idx_squarebak_3 on tbsquarebak (
   trans_date ASC,
   prd_code ASC,
   busin_code ASC
);

/*==============================================================*/
/* Index: idx_squarebak_4                                       */
/*==============================================================*/
create index idx_squarebak_4 on tbsquarebak (
   order_no ASC
);

/*==============================================================*/
/* Table: his_tbbanklimit                                       */
/*==============================================================*/
create table his_tbbanklimit  (
   sum_date           INTEGER                          not null,
   prd_type           CHAR(1)                          not null,
   curr_type          CHAR(3)                          not null,
   bank_limit         DECIMAL(16,2)                    not null,
   current_limit      DECIMAL(16,2)                    not null,
   today_limit        DECIMAL(16,2)                    not null,
   dayend_limit       DECIMAL(16,2)                    not null,
   unwork_limit       DECIMAL(16,2)                    not null
);
alter table his_tbbanklimit
   add constraint PK_HIS_TBBANKLIMIT primary key (sum_date, prd_type, curr_type);

/*==============================================================*/
/* Table: his_tbprdlimit                                        */
/*==============================================================*/
create table his_tbprdlimit  (
   sum_date           INTEGER                          not null,
   prd_code           CHAR(12)                         not null,
   prd_type           CHAR(1)                          not null,
   curr_product       CHAR(3)                          not null,
   prd_limit          DECIMAL(16,2)                    not null,
   current_limit      DECIMAL(16,2)                    not null,
   today_limit        DECIMAL(16,2)                    not null,
   dayend_limit       DECIMAL(16,2)                    not null,
   unwork_limit       DECIMAL(16,2)                    not null
);
alter table his_tbprdlimit
   add constraint PK_HIS_TBPRDLIMIT primary key (sum_date, prd_code);

/*==============================================================*/
/* Table: his_tbkhjljyhz                                        */
/*==============================================================*/
create table his_tbkhjljyhz  (
   sum_date           INTEGER                         not null,
   sum_flag           CHAR(1)                         not null,
   internal_branch    CHAR(12)                        not null,
   client_manager     CHAR(16)                        not null,
   client_type        CHAR(1)                         not null,
   prd_code           CHAR(12)                        not null,
   ta_code            CHAR(12)                        not null,
   branch_no          CHAR(16)                        not null,
   allot_num          INTEGER                         not null,
   allot_amt          DECIMAL(16,2)                   not null,
   allot_charge       DECIMAL(16,2)                   not null,
   sub_num            INTEGER                         not null,
   sub_amt            DECIMAL(16,2)                   not null,
   sub_charge         DECIMAL(16,2)                   not null,
   red_num            INTEGER                         not null,
   red_amt            DECIMAL(16,2)                   not null,
   red_charge         DECIMAL(16,2)                   not null,
   prd_type           CHAR(1)                         not null,
   curr_type          CHAR(3)                         not null
);
alter table his_tbkhjljyhz
   add constraint PK_HIS_TBKHJLJYHZ primary key (sum_date, sum_flag, client_type, client_manager, internal_branch, prd_code);

/*==============================================================*/
/* Table: his_tbkhjlzhhz                                        */
/*==============================================================*/
create table his_tbkhjlzhhz  (
   sum_date           INTEGER                         not null,
   sum_flag           CHAR(1)                         not null,
   internal_branch    CHAR(12)                        not null,
   client_manager     CHAR(16)                        not null,
   client_type        CHAR(1)                         not null,
   ta_code            CHAR(12)                        not null,
   branch_no          CHAR(16)                        not null,
   sign_num           INTEGER                         not null,
   signoff_num        INTEGER                         not null,
   prd_type           CHAR(1)                         not null
);
alter table his_tbkhjlzhhz
   add constraint PK_HIS_TBKHJLZHHZ primary key (sum_date, sum_flag, client_type, client_manager, ta_code,internal_branch,prd_type);


/*==============================================================*/
/* Table: his_tbdatatocsrc                                    */
/*==============================================================*/
create table his_tbdatatocsrc  (
   sum_date           INTEGER                         not null,
   trans_date         INTEGER                         not null,
   ta_prd_code        CHAR(6)                         not null,
   prd_name           CHAR(60)                        not null,
   company_code       CHAR(8)                         not null,
   manager_name       VARCHAR2(60)                    not null,
   busin_code         CHAR(6),
   trans_name         VARCHAR2(60),
   vol                DECIMAL(16,2)                   default 0.0,
   amt                DECIMAL(16,2)                   default 0.0,
   charge             DECIMAL(16,2)                   default 0.0,
   square_way         CHAR(1)                        default '0' not null,
   e_vol              DECIMAL(16,2)                   default 0.0,
   e_amt              DECIMAL(16,2)                   default 0.0,
   summary            VARCHAR2(250)
);

/*==============================================================*/
/* Index: idx_datatocsrc_1                                    */
/*==============================================================*/
create index idx_datatocsrc_1 on his_tbdatatocsrc (
   trans_date ASC,
   ta_prd_code ASC
);

/*==============================================================*/
/* Table: tbprdmanager                                        */
/*==============================================================*/
create table tbprdmanager  (
   prd_manager        CHAR(6)                         not null,
   manager_shortname  CHAR(20)                        not null,
   manager_name       VARCHAR2(60)                    not null,
   reg_address        VARCHAR2(60),
   off_address        VARCHAR2(60),
   manager            CHAR(20),
   link_name          CHAR(20),
   link_method        CHAR(60),
   hot_line           CHAR(30),
   web                VARCHAR2(60),
   risk_level         INTEGER    ,
   reserve1           VARCHAR2(100),
   reserve2           VARCHAR2(100),
   company_code       CHAR(8)
);
alter table tbprdmanager
   add constraint PK_TBPRDMANAGER primary key (prd_manager);


/*==============================================================*/
/* Table: tbprdextend                                        */
/*==============================================================*/
create table tbprdextend  (
   prd_code           CHAR(12)            not null,
   asso_code          CHAR(12),
   asso_name          CHAR(60),
   square_way         CHAR(1)            default '0',
   nav_days           INTEGER            default 1,
   nav_date           INTEGER    ,
   maintain_fee       DECIMAL(8,6),
   service_fee        DECIMAL(8,6),
   comn_min_amt       DECIMAL(16,2),
   como_min_amt       DECIMAL(16,2),
   pn_min_amt         DECIMAL(16,2),
   po_min_amt         DECIMAL(16,2),
   income_date        INTEGER    ,
   sub_fee            DECIMAL(8,6),
   assign_flag        CHAR(1),
   app_days           INTEGER    ,
   red_alarm          DECIMAL(16,3),
   reserve1           VARCHAR2(100),
   reserve2           VARCHAR2(100),
   reserve3           VARCHAR2(100),
   collect_acc        CHAR(32),
   max_yield          DECIMAL(8,6),
   min_yield          DECIMAL(8,6),
   prd_book_name      VARCHAR(254),
   prd_contract_name  VARCHAR(254)
);
alter table tbprdextend
   add constraint PK_TBPRDEXTEND primary key (prd_code);

/*==============================================================*/
/* Table:  tbprdbankacc                                         */
/*==============================================================*/
create table  tbprdbankacc   (
    ta_code             CHAR(6)                       not null,
    prd_code            CHAR(6)                       not null,
    bank_no             CHAR(2)                       default '00' not null,
    bank_acc_up         CHAR(32)                      not null,
    bank_acc_down       CHAR(32)                      not null,
    asso_code           CHAR(6)                       not null,
    squareway           CHAR(1)                       not null,
    bank_name           VARCHAR2(60),
    branch_name         VARCHAR2(100)                 not null,
    prd_name            CHAR(60),
    sub_bank_acc        CHAR(32)                      default ' ' not null,
    bank_sys_id         VARCHAR2(250)                 default ' ' not null,
    branch_name_sub     VARCHAR2(100)                 default ' ' not null,
    bank_name_sub       VARCHAR2(60)                  default ' ' not null,
    bank_sys_subid      VARCHAR2(250)                 default ' ' not null,
    acc_up_name         VARCHAR2(250)                 default ' ' not null,
    acc_down_name       VARCHAR2(250)                 default ' ' not null,
    sub_acc_name        VARCHAR2(250)                 default ' ' not null,
    reserve1            VARCHAR2(250)                 default ' ',
    reserve2            VARCHAR2(250)                 default ' ',
    reserve3            VARCHAR2(250)                 default ' '
);
alter table tbprdbankacc
   add constraint PK_TBPRDBANKACC primary key ( prd_code );