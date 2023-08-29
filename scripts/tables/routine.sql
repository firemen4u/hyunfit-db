
CREATE TABLE routine (
	rtn_seq	NUMBER		NOT NULL,
	adm_seq	NUMBER		NOT NULL,
	rtn_name	VARCHAR2(100)		NOT NULL,
	rtn_content	VARCHAR2(2002)		NOT NULL,
	rtn_created_date	TIMESTAMP		NOT NULL,
	rtn_url	VARCHAR2(255)		NOT NULL,
	rtn_target	NUMBER		NOT NULL,
	rtn_duration	NUMBER		NOT NULL,
	rtn_difficulty	NUMBER		NOT NULL
);

COMMENT ON COLUMN routine.adm_seq IS '(등록자)';
COMMENT ON COLUMN routine.rtn_name IS '운동들을 모아서 만든 루틴 제목';
COMMENT ON COLUMN routine.rtn_content IS '생성한 루틴에 대한 설명';
COMMENT ON COLUMN routine.rtn_created_date IS '루틴 생성한 날짜';
COMMENT ON COLUMN routine.rtn_url IS '루틴 이미지 주소';
COMMENT ON COLUMN routine.rtn_target IS '상체, 하체, 전신, 유산소';
COMMENT ON COLUMN routine.rtn_duration IS '1: 10~15분, 2: 15~20분, 3:25~30분';
COMMENT ON COLUMN routine.rtn_difficulty IS '1-5. 5가 가장 높음';
