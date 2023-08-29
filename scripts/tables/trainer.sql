CREATE TABLE trainer (
	trn_seq	NUMBER		NOT NULL,
	trn_id	VARCHAR2(100)		NOT NULL,
	trn_pw	VARCHAR2(1000)		NOT NULL,
	trn_name	VARCHAR2(100)		NOT NULL,
	trn_type	NUMBER		NULL,
	trn_description	VARCHAR2(2002)		NULL
);

COMMENT ON COLUMN trainer.trn_seq IS 'trn_seq.NEXTVAL';
COMMENT ON COLUMN trainer.trn_name IS '트레이너 이름';
COMMENT ON COLUMN trainer.trn_type IS '1: 헬스, 2: 요가, 3: 골프 등';
COMMENT ON COLUMN trainer.trn_description IS '트레이너 개인 소개';
