
/* Drop Tables */

DROP TABLE ADDEDLIST CASCADE CONSTRAINTS;
DROP TABLE BENEFITS CASCADE CONSTRAINTS;
DROP TABLE EVENT CASCADE CONSTRAINTS;
DROP TABLE RAIDS CASCADE CONSTRAINTS;
DROP TABLE SEASONS CASCADE CONSTRAINTS;
DROP TABLE EVENTLIST CASCADE CONSTRAINTS;
DROP TABLE MONTH CASCADE CONSTRAINTS;




/* Create Tables */

CREATE TABLE ADDEDLIST
(
	N_NO number NOT NULL,
	-- 이벤트 고유번호 모음
	-- 무슨 이벤트때 추가되었는지
	-- 
	EVENTNO number NOT NULL,
	N_NAME nvarchar2(100) NOT NULL,
	N_ADDDATE date,
	N_SHINY date,
	PRIMARY KEY (N_NO)
);


CREATE TABLE BENEFITS
(
	-- 이벤트 고유번호 모음
	EVENTNO number NOT NULL,
	CONTENT nvarchar2(500) NOT NULL
);


CREATE TABLE EVENT
(
	-- 이벤트 고유번호 모음
	EVENTNO number NOT NULL,
	E_DATE date NOT NULL,
	E_NAME nvarchar2(100) NOT NULL,
	-- 전국도감 번호로 넣기
	E_BOSS char,
	-- 레이드데이 - R
	-- 스포트라이드아워 - S
	-- 복각 커뮤데이 - RC
	-- 커뮤데이 - C
	-- 리그 - L
	-- 
	-- 
	E_TYPE nvarchar2(5) NOT NULL,
	-- 하루면 1
	-- 그 외에는 지속기간 
	-- 
	E_DURATION number NOT NULL,
	PRIMARY KEY (EVENTNO)
);


CREATE TABLE EVENTLIST
(
	-- 이벤트 고유번호 모음
	EVENTNO number NOT NULL,
	-- 2301 ~ 2312 
	YEAR_MONTH char NOT NULL,
	E_START date NOT NULL,
	E_END date NOT NULL,
	PRIMARY KEY (EVENTNO)
);


CREATE TABLE MONTH
(
	-- 2301 ~ 2312 
	YEAR_MONTH char NOT NULL,
	PRIMARY KEY (YEAR_MONTH)
);


CREATE TABLE RAIDS
(
	RAID_NO number NOT NULL,
	-- 이벤트 고유번호 모음
	EVENTNO number NOT NULL,
	-- 1성/3성/5성/메가(9)
	RAID_TYPE number(1) NOT NULL,
	-- 전국도감 번호로 구분하기
	RAID_BOSS_NO char NOT NULL,
	-- 웹 크롤링용 컬럼
	RAID_BOSS_NAME nvarchar2(100) NOT NULL,
	PRIMARY KEY (RAID_NO)
);


CREATE TABLE SEASONS
(
	S_NO number NOT NULL,
	-- 이벤트 고유번호 모음
	EVENTNO number NOT NULL,
	S_NAME nvarchar2(200) NOT NULL,
	PRIMARY KEY (S_NO)
);



/* Create Foreign Keys */

ALTER TABLE ADDEDLIST
	ADD FOREIGN KEY (EVENTNO)
	REFERENCES EVENTLIST (EVENTNO)
;


ALTER TABLE BENEFITS
	ADD FOREIGN KEY (EVENTNO)
	REFERENCES EVENTLIST (EVENTNO)
;


ALTER TABLE EVENT
	ADD FOREIGN KEY (EVENTNO)
	REFERENCES EVENTLIST (EVENTNO)
;


ALTER TABLE RAIDS
	ADD FOREIGN KEY (EVENTNO)
	REFERENCES EVENTLIST (EVENTNO)
;


ALTER TABLE SEASONS
	ADD FOREIGN KEY (EVENTNO)
	REFERENCES EVENTLIST (EVENTNO)
;


ALTER TABLE EVENTLIST
	ADD FOREIGN KEY (YEAR_MONTH)
	REFERENCES MONTH (YEAR_MONTH)
;



