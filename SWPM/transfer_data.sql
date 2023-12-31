TBLLINE (
PLINE,YSJHL,GY,FYL,WORKERO,WORKERT,LDESC,TEFF,TSHOP,TPLANT,THEAD,TTYPE,LDATE,
WORKERI,TTYPE1,LDESC1,SECTO,SECTT,SECTOX,LXDATE,LACTIVE,LEARN1,LEARN2,LEARN3,
LEARN4,LEFF1,LEFF2,LEFF3,LEFF4,LEFFT,LAEFF,SBSJ,SJ1,SJ2,SJ3,SJ4,LEARN5,LEARN6,
LEFF5,LEFF6,SJ5,SJ6,SJ7,SJ8,SJ9,SJ10,SHF,SFTC,LTYPE,LBDT,SHPMGR,LBACT,WF1,WF2,
WF3,WF4,WF5,WF6,WF7,WF8,WF9,WF10,WF11,WF12,WF13,WF14,WF15,WF16,WF17,WF18,WF19,
WF20,WF21,WF22,WF23,WF24,WF25,WF26,WF27,WF28,WF29,SECTT1,WF41,WF42,WF43,WF44,
WF45,WF46,WF47,WF48,RFIDS,RFIDD,RFIDP,GRD,O1,B1,R1,WF_CODE,STB,ADPT,LEARN7,
LEARN8,LEFF7,LEFF8,LEARN9,LEARN10,LEFF9,LEFF10);

TBLSHEDULE (
PLINE,SEQ,CFKSRQ,CFKSJS,J_NO,J2_JOB,ARTNO,ACOL,WEEK,PLAN_DATE,KHZL,OKHRQ,SCQTY,TMU,TRS,FYL,
XJS,JXJS,ZJS,JHL,CFWCRQ,YQLCRQ,SCTD,PHISZJS,ZHJS,BCJS,PD4,SCLHJS,ZKTD,JHRS,YSJHL,DBXL,PD8,
BZJS,TZLCRQ,FLAG1,FLAG2,FLAG3,FLAG4,RQXC,QRLCRQ,KDJS,WEEK1,ORDLINE,FYFS,CFWCJS,SOPNO,FLAG5,
CKTS,QRXC,YZH,XS,TSHOP,PFLAG1,CSTYLE,DBZS,FLAG6,FCCS,LSTRS,TPLANT,SHJS,QYJS,PLAN_W,YQ_W,
TZ_W,RWO,RID,HC,LEARN,LFLAG,NSHJS,UNBAL,XC1,XC2,XC3,SJRS,SJYC,CKJS,GRP,RQXC1,QTY,TBU,CPLAN,
XC4,LTC_D,LTC_R,LTC_A,LTC_RM,LTC_KSRQ,LTC_KSJS,DSQN,FLAG7,DTA);

WEEK52 (
DATE1,WKNO,LINE,SECTO,SECTT,SECTC,WORKERT,WORKERC,WORKERO,WDAY,SECTT1,SHFT,TPLANT,TSHOP,
CSECT,ESECT,FLAG,LSECT,ASECT,RSECT,TSECT,OSECT,TTL,A2,B2,C2,D2,E2,F2,EMARKS,ZSECT,G2,H2,
LMEMO,OTTL,OCU,DCU,CWK,SWK,DIFF1,DIFF2,LACTIVE,PN1,PN2,PO1,PO2,PTTL,PCU);

LINE_SHJS (
PLINE,SEQ,DSEQ,DATE1,SHJS,ZKTD,SCLHJS,QYJS,FLAG,SJRS,SJYC,SJRS1,SJRS2,
PQTY,AQTY,DIFF,AQTY1,EOT,EFF1,EFF2,XJS,PSECT,CSTYLE,J2_JOB,RWO,LSTR,
KSJS,ZHJS,LFLAG,TPLANT,TSHOP,DT1,CSECT,DBXL,J_NO,FCCS,ACOL,SCQTY,FLAG3,
FLAG6,FLAGS,CFM,LST,DFLAG,MARKS,DSECT,LFLAG1,TRS,CEOT,PQTY1,MPSECT,PEFF,
LST1,KSJS1,MWFLB,MWFS,MWFA,MWFBN,GSDMBN,RFIDP,MWFSC,MWFLBC,MWFBNC,PRJ1,
PRJ2,PRJ3,PRJ4);

TBL_SCHSTATUS (
PLINE,SEQ,STA1,DT1,SECT1,STA2,DT2,SECT2,STA3,DT3,SECT3,STA4,DT4,SECT4);

--QN_CALENDAR (
PLINE,SEQ,DT1,A2,B2,C2,D2,E2,F2,G2,H2,FLAG,LSECT,ZSECT,ASECT,RSECT,
ESECT,EMARKS,FLAG1,CSECT,TTL);

TBL_LWO_DT (
PLINE,SEQ,TD1,TD2,TD3,TD4,TD5,TD6,TD7,TD8,TD9,TD10,TD11,TD12,TD13,TD14,
TD15,TD16,TD17,TD18,TD19,TD20,REMARKS,CFMD,PMEMO,T4MEMO,T2MEMO,SMEMO,AQLMEMO);

TBL_LWO (
PLINE,SEQ,J_NO,ORDLINE,J2_JOB,RWO,ACOL,DID,CUP,SIZ,PSIZ,QTY,AQTY,TQTY,CMP,
TQ1,TQ2,TQ3,TQ4,TQ5,TQ6,TQ7,TQ8,TQ9,TQ10,TDT1,TDT2,TDT3,TDT4,TDT5,TDT6,TDT7,TDT8,
TDT9,TDT10,PQTY,TTQ1,TTQ2,TTQ3,TTQ4,TTQ5,TTQ6,TTQ7,TTQ8,TTQ9,TTQ10,CMP1,TTQTY,DT,
TTD1,TTD2,TTD3,TTD4,TTD5,TTD6,TTD7,TTD8,TTD9,TTD10,PQ1,PQ2,PQ3,PQ4,PQ5,PQ6,
PDT1,PDT2,PDT3,PDT4,PDT5,PDT6,FQ1,FQ2,FQ3,FQ4,FQ5,FDT1,FDT2,FDT3,FDT4,FDT5,
TPQTY,TFQTY,CMP2,CMP3,EQ1,EQ2,EQ3,TED1,TED2,TED3,TEQTY,CMP4,TSQTY,PQ7,PQ8,
PQ9,PQ10,PDT7,PDT8,PDT9,PDT10,CMPS,CMPI,IQ1,IQ2,IQ3,TIQTY,IDT1,IDT2,IDT3,
T3DIFF,T2DIFF,T1DIFF,TSDIFF,PADIFF,PQ11,PQ12,PQ13,PQ14,PQ15,PQ16,PQ17,PQ18,
PQ19,PQ20,PDT11,PDT12,PDT13,PDT14,PDT15,PDT16,PDT17,PDT18,PDT19,PDT20,
EQ4,EQ5,TED4,TED5,TIP,TAQL,CMPIP,CMPAQL,TQN,IGA_P,EPDN1,EPDN2,EPDN3,EPDN4,EPDN5,
IP1,IP2,IP3,IP4,IP5,IPD1,IPD2,IPD3,IPD4,IPD5,IPDIFF,IDIFF,AQ1,AQ2,AQ3,
ADT1,ADT2,ADT3,AQ01,AQ001,AQ02,AQ002,AQ03,AQ003,IQ4,IQ5,IDT4,IDT5,
EQ6,EQ7,EQ8,EQ9,EQ10,IQ6,IQ7,IQ8,IQ9,IQ10,TED6,TED7,TED8,TED9,TED10,
IDT6,IDT7,IDT8,IDT9,IDT10,EPDN6,EPDN7,EPDN8,EPDN9,EPDN10,T1B,CMPT1B,
BCN1,BCN2,BCN3,BCN4,BCN5,BCN6,BCN7,BCN8,BCN9,BCN10,ADT4,ADT5,ADT6,ADT7,
ADT8,ADT9,ADT10,AQ10,ETM1,ETM2,ETM3,ETM4,ETM5,ETM6,ETM7,ETM8,ETM9,ETM10,
AQ11,AQ12,AQ13,AQ14,AQ15,AQ16,AQ17,AQ18,AQ19,AQ20,ADT11,ADT12,ADT13,
ADT14,ADT15,ADT16,ADT17,ADT18,ADT19,ADT20);

TBL_LWO_SEW (
PLINE,SEQ,J_NO,ORDLINE,J2_JOB,RWO,ACOL,DID,CUP,SIZ,PSIZ,QTY,PQTY,TQTY,TTQTY,CMP,CMP1,TAQTY,
AQ1,AQ2,AQ3,AQ4,AQ5,AQ6,AQ7,AQ8,AQ9,AQ10,AQ11,AQ12,AQ13,AQ14,AQ15,TCQTY,CQ1,CQ2,CQ3,CQ4,CQ5,
CQ6,CQ7,CQ8,CQ9,CQ10,CQ11,CQ12,CQ13,CQ14,CQ15,AQ16,AQ17,AQ18,AQ19,AQ20,CQ16,CQ17,CQ18,CQ19,
CQ20,TSQTY,CMPS,A101,A102,A103,A201,A202,A203,A301,A302,A303,A401,A402,A403,A501,A502,A503,
A601,A602,A603,A701,A702,A703,A801,A802,A803,A901,A902,A903,A1001,A1002,A1003,A1101,A1102,
A1103,A1201,A1202,A1203,A1301,A1302,A1303,A1401,A1402,A1403,A1501,A1502,A1503,A1601,A1602,
A1603,A1701,A1702,A1703,A1801,A1802,A1803,A1901,A1902,A1903,A2001,A2002,A2003);

--TBL_LWO_SEWDT (
PLINE,SEQ,DSEQ,DT,TM);

TBL_WKSREMARKS (
DT1,TPLANT,TSHOP,REMARKS);

TBL_PDN_D (
SEQ,J_NO,J2_JOB,ORDLINE,RWO,ACOL,DID,PSIZ,QTY,SQTY,Q1T1QTY,Q1T2QTY,Q1T3QTY,Q1T4QTY,
Q2T1QTY,Q2T2QTY,Q2T3QTY,Q2T4QTY,Q3T1QTY,Q3T2QTY,Q3T3QTY,Q3T4QTY,Q4T1QTY,Q4T2QTY,Q4T3QTY,Q4T4QTY,
Q5T1QTY,Q5T2QTY,Q5T3QTY,Q5T4QTY,Q6T1QTY,Q6T2QTY,Q6T3QTY,Q6T4QTY,Q7T1QTY,Q7T2QTY,Q7T3QTY,Q7T4QTY,
Q8T1QTY,Q8T2QTY,Q8T3QTY,Q8T4QTY,Q9T1QTY,Q9T2QTY,Q9T3QTY,Q9T4QTY,Q10T1QTY,Q10T2QTY,Q10T3QTY,Q10T4QTY,
Q11T1QTY,Q11T2QTY,Q11T3QTY,Q11T4QTY,Q12T1QTY,Q12T2QTY,Q12T3QTY,Q12T4QTY,
Q13T1QTY,Q13T2QTY,Q13T3QTY,Q13T4QTY,Q14T1QTY,Q14T2QTY,Q14T3QTY,Q14T4QTY,
Q15T1QTY,Q15T2QTY,Q15T3QTY,Q15T4QTY,Q16T1QTY,Q16T2QTY,Q16T3QTY,Q16T4QTY,
Q17T1QTY,Q17T2QTY,Q17T3QTY,Q17T4QTY,Q18T1QTY,Q18T2QTY,Q18T3QTY,Q18T4QTY,
Q19T1QTY,Q19T2QTY,Q19T3QTY,Q19T4QTY,Q20T1QTY,Q20T2QTY,Q20T3QTY,Q20T4QTY,
Q21T1QTY,Q21T2QTY,Q21T3QTY,Q21T4QTY,Q22T1QTY,Q22T2QTY,Q22T3QTY,Q22T4QTY,
Q23T1QTY,Q23T2QTY,Q23T3QTY,Q23T4QTY,Q24T1QTY,Q24T2QTY,Q24T3QTY,Q24T4QTY,
Q25T1QTY,Q25T2QTY,Q25T3QTY,Q25T4QTY,CFM,CFMTM,SHPD,DIFF,OSQTY,Q1QTY,Q1PQTY,
Q2QTY,Q2PQTY,Q3QTY,Q3PQTY,Q4QTY,Q4PQTY,Q5QTY,Q5PQTY,Q6QTY,Q6PQTY,Q7QTY,Q7PQTY,Q8QTY,Q8PQTY,
Q9QTY,Q9PQTY,Q10QTY,Q10PQTY,Q11QTY,Q11PQTY,Q12QTY,Q12PQTY,Q13QTY,Q13PQTY,Q14QTY,Q14PQTY,
Q15QTY,Q15PQTY,Q16QTY,Q16PQTY,Q17QTY,Q17PQTY,Q18QTY,Q18PQTY,Q19QTY,Q19PQTY,Q20QTY,Q20PQTY,
Q21QTY,Q21PQTY,Q22QTY,Q22PQTY,Q23QTY,Q23PQTY,Q24QTY,Q24PQTY,Q25QTY,Q25PQTY,Q1PKQTY,Q1AQQTY,
Q2PKQTY,Q2AQQTY,Q3PKQTY,Q3AQQTY,Q4PKQTY,Q4AQQTY,Q5PKQTY,Q5AQQTY,Q6PKQTY,Q6AQQTY,Q7PKQTY,Q7AQQTY,
Q8PKQTY,Q8AQQTY,Q9PKQTY,Q9AQQTY,Q10PKQTY,Q10AQQTY,Q11PKQTY,Q11AQQTY,Q12PKQTY,Q12AQQTY,
Q13PKQTY,Q13AQQTY,Q14PKQTY,Q14AQQTY,Q15PKQTY,Q15AQQTY,Q16PKQTY,Q16AQQTY,Q17PKQTY,Q17AQQTY,
Q18PKQTY,Q18AQQTY,Q19PKQTY,Q19AQQTY,Q20PKQTY,Q20AQQTY,Q21PKQTY,Q21AQQTY,Q22PKQTY,Q22AQQTY,
Q23PKQTY,Q23AQQTY,Q24PKQTY,Q24AQQTY,Q25PKQTY,Q25AQQTY,CSTYLE,PRIC);

TBL_PDN_H (
SEQ,J_NO,J2_JOB,RWO,ACOL,Q1LINE,Q1SEQ,QN1,Q2LINE,Q2SEQ,QN2,Q3LINE,Q3SEQ,QN3,
Q4LINE,Q4SEQ,QN4,Q5LINE,Q5SEQ,QN5,Q6LINE,Q6SEQ,QN6,Q7LINE,Q7SEQ,QN7,
Q8LINE,Q8SEQ,QN8,Q9LINE,Q9SEQ,QN9,Q10LINE,Q10SEQ,QN10,Q11LINE,Q11SEQ,QN11,
Q12LINE,Q12SEQ,QN12,Q13LINE,Q13SEQ,QN13,Q14LINE,Q14SEQ,QN14,Q15LINE,Q15SEQ,QN15,
Q16LINE,Q16SEQ,QN16,Q17LINE,Q17SEQ,QN17,Q18LINE,Q18SEQ,QN18,Q19LINE,Q19SEQ,QN19,
Q20LINE,Q20SEQ,QN20,Q21LINE,Q21SEQ,QN21,Q22LINE,Q22SEQ,QN22,Q23LINE,Q23SEQ,QN23,
Q24LINE,Q24SEQ,QN24,Q25LINE,Q25SEQ,QN25);

TBL_PDN_M (
SEQ,PDN,EXFTY,CUST,MARKS,CFM,WK,TPLANT,MARKS1,STATUS,ACTDT,ACTTM,STT);

TBL_PDN_PACK (
SEQ,SEQ1,DSEQ,CUSTPO,CSTYLE,CNAME,SQTY,BOX,WGHT,CBM,EXFTY,EXTM,TRUCK,INDT,INTM,ONDT,SHPM,VESS,
LPORT,DEST,VOYN,J_NO,J2_JOB,ACOL,POQTY,AQQTY,T4QTY,DIFF,DP,RWO,QTY,SHPQTY,SPQTY,WRITEOFF,
BAL,MEMO1,LQCDT,FQCDT,FQCDT1,QCRST,CNPH,RAIR,PKM,AIRRATE,OCHARGE,BCHARGE,RCHARGE,VWGHT,VWGHT1);

TBL_PDN_RWO (
SEQ,DSEQ,J_NO,J2_JOB,RWO,ACOL,QTY,SQTY,CSTYLE,BCN,CASTL,CUSTPO,CNAME,ORDLINE,CASTL1);

TBL_PDN_VOYAGE_D (
SEQ,J_NO,J2_JOB,ORDLINE,RWO,ACOL,DID,PSIZ,QTY,SQTY,Q1T1QTY,Q1T2QTY,Q1T3QTY,Q1T4QTY,
Q2T1QTY,Q2T2QTY,Q2T3QTY,Q2T4QTY,Q3T1QTY,Q3T2QTY,Q3T3QTY,Q3T4QTY,Q4T1QTY,Q4T2QTY,Q4T3QTY,Q4T4QTY,
Q5T1QTY,Q5T2QTY,Q5T3QTY,Q5T4QTY,Q6T1QTY,Q6T2QTY,Q6T3QTY,Q6T4QTY,Q7T1QTY,Q7T2QTY,Q7T3QTY,Q7T4QTY,
Q8T1QTY,Q8T2QTY,Q8T3QTY,Q8T4QTY,Q9T1QTY,Q9T2QTY,Q9T3QTY,Q9T4QTY,Q10T1QTY,Q10T2QTY,Q10T3QTY,Q10T4QTY,
Q11T1QTY,Q11T2QTY,Q11T3QTY,Q11T4QTY,Q12T1QTY,Q12T2QTY,Q12T3QTY,Q12T4QTY,
Q13T1QTY,Q13T2QTY,Q13T3QTY,Q13T4QTY,Q14T1QTY,Q14T2QTY,Q14T3QTY,Q14T4QTY,
Q15T1QTY,Q15T2QTY,Q15T3QTY,Q15T4QTY,Q16T1QTY,Q16T2QTY,Q16T3QTY,Q16T4QTY,
Q17T1QTY,Q17T2QTY,Q17T3QTY,Q17T4QTY,Q18T1QTY,Q18T2QTY,Q18T3QTY,Q18T4QTY,
Q19T1QTY,Q19T2QTY,Q19T3QTY,Q19T4QTY,Q20T1QTY,Q20T2QTY,Q20T3QTY,Q20T4QTY,
Q21T1QTY,Q21T2QTY,Q21T3QTY,Q21T4QTY,Q22T1QTY,Q22T2QTY,Q22T3QTY,Q22T4QTY,
Q23T1QTY,Q23T2QTY,Q23T3QTY,Q23T4QTY,Q24T1QTY,Q24T2QTY,Q24T3QTY,Q24T4QTY,
Q25T1QTY,Q25T2QTY,Q25T3QTY,Q25T4QTY,CFM,CFMTM,SHPD,DIFF,OSQTY,Q1QTY,Q1PQTY,
Q2QTY,Q2PQTY,Q3QTY,Q3PQTY,Q4QTY,Q4PQTY,Q5QTY,Q5PQTY,Q6QTY,Q6PQTY,Q7QTY,Q7PQTY,Q8QTY,Q8PQTY,
Q9QTY,Q9PQTY,Q10QTY,Q10PQTY,Q11QTY,Q11PQTY,Q12QTY,Q12PQTY,Q13QTY,Q13PQTY,Q14QTY,Q14PQTY,
Q15QTY,Q15PQTY,Q16QTY,Q16PQTY,Q17QTY,Q17PQTY,Q18QTY,Q18PQTY,Q19QTY,Q19PQTY,Q20QTY,Q20PQTY,
Q21QTY,Q21PQTY,Q22QTY,Q22PQTY,Q23QTY,Q23PQTY,Q24QTY,Q24PQTY,Q25QTY,Q25PQTY,Q1PKQTY,Q1AQQTY,
Q2PKQTY,Q2AQQTY,Q3PKQTY,Q3AQQTY,Q4PKQTY,Q4AQQTY,Q5PKQTY,Q5AQQTY,Q6PKQTY,Q6AQQTY,Q7PKQTY,Q7AQQTY,
Q8PKQTY,Q8AQQTY,Q9PKQTY,Q9AQQTY,Q10PKQTY,Q10AQQTY,Q11PKQTY,Q11AQQTY,Q12PKQTY,Q12AQQTY,
Q13PKQTY,Q13AQQTY,Q14PKQTY,Q14AQQTY,Q15PKQTY,Q15AQQTY,Q16PKQTY,Q16AQQTY,Q17PKQTY,Q17AQQTY,
Q18PKQTY,Q18AQQTY,Q19PKQTY,Q19AQQTY,Q20PKQTY,Q20AQQTY,Q21PKQTY,Q21AQQTY,Q22PKQTY,Q22AQQTY,
Q23PKQTY,Q23AQQTY,Q24PKQTY,Q24AQQTY,Q25PKQTY,Q25AQQTY,CSTYLE,PRIC,SEQ1);

TBL_PDN_VOYAGE_H (
SEQ,J_NO,J2_JOB,RWO,ACOL,Q1LINE,Q1SEQ,QN1,Q2LINE,Q2SEQ,QN2,Q3LINE,Q3SEQ,QN3,
Q4LINE,Q4SEQ,QN4,Q5LINE,Q5SEQ,QN5,Q6LINE,Q6SEQ,QN6,Q7LINE,Q7SEQ,QN7,
Q8LINE,Q8SEQ,QN8,Q9LINE,Q9SEQ,QN9,Q10LINE,Q10SEQ,QN10,Q11LINE,Q11SEQ,QN11,
Q12LINE,Q12SEQ,QN12,Q13LINE,Q13SEQ,QN13,Q14LINE,Q14SEQ,QN14,Q15LINE,Q15SEQ,QN15,
Q16LINE,Q16SEQ,QN16,Q17LINE,Q17SEQ,QN17,Q18LINE,Q18SEQ,QN18,Q19LINE,Q19SEQ,QN19,
Q20LINE,Q20SEQ,QN20,Q21LINE,Q21SEQ,QN21,Q22LINE,Q22SEQ,QN22,Q23LINE,Q23SEQ,QN23,
Q24LINE,Q24SEQ,QN24,Q25LINE,Q25SEQ,QN25,SEQ1);

TBL_PDN_VOYAGE_M (
SEQ,PDN,EXFTY,CUST,MARKS,CFM,WK,TPLANT,MARKS1,STATUS,ACTDT,ACTTM,STT,SEQ1,VOYN,SHPM,EXTM,VER,
TRUCK,INDT,INTM,ONDT,VESS,LPORT,DEST,BOX,WGHT,CBM,MEMO1,RAIR,PS_CHANGE);

TBL_PDN_VOYAGE_RWO (
SEQ,DSEQ,J_NO,J2_JOB,RWO,ACOL,QTY,SQTY,CSTYLE,BCN,CASTL,CUSTPO,CNAME,ORDLINE,CASTL1,SEQ1);

TBL_PDN_WRITEOFF (
SEQ,J_NO,J2_JOB,ORDLINE,RWO,ACOL,DID,PSIZ,DIFF,WRITEOFF,SWING,CFM,SWING_PDN,YSW,
TPLANT,SPQTY,LSTQTY,HQTY,H_PDN,H_YSW);


