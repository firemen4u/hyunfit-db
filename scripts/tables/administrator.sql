CREATE TABLE administrator (
	adm_seq	NUMBER	DEFAULT adm_seq_pk.NEXTVAL	NOT NULL,
	adm_id	VARCHAR2(100)		NOT NULL,
	adm_pw	VARCHAR2(1000)		NOT NULL,
	adm_name	VARCHAR2(100)		NOT NULL
);

COMMENT ON COLUMN administrator.adm_name IS '관리자 이름';
