
CREATE TABLE routine (
	rtn_seq	NUMBER	DEFAULT rtn_seq_pk.NEXTVAL	NOT NULL,
	adm_seq	NUMBER		NOT NULL,
	rtn_name	VARCHAR2(100)		NOT NULL,
	rtn_content	VARCHAR2(2002)		NOT NULL,
	rtn_created_date	TIMESTAMP	DEFAULT CURRENT_TIMESTAMP	NOT NULL,
	rtn_thumbnail_url	VARCHAR2(255)		NOT NULL,
	rtn_duration	NUMBER		NOT NULL,
	rtn_reward_point NUMBER NOT NULL,
	rtn_goal	NUMBER		NOT NULL,
	rtn_target	NUMBER		NOT NULL,
	rtn_experience_level	NUMBER		NOT NULL,
	rtn_knee_health_considered	NUMBER		NOT NULL,
	rtn_noise_considered	NUMBER		NOT NULL,
	rtn_long_sitter	NUMBER		NOT NULL,
	rtn_neck_shoulder_focused	NUMBER		NOT NULL,
	rtn_back_disk_considered	NUMBER		NOT NULL
);

COMMENT ON COLUMN routine.adm_seq IS '(등록자)';
COMMENT ON COLUMN routine.rtn_name IS '운동들을 모아서 만든 루틴 제목';
COMMENT ON COLUMN routine.rtn_content IS '생성한 루틴에 대한 설명';
COMMENT ON COLUMN routine.rtn_created_date IS '루틴 생성한 날짜';
COMMENT ON COLUMN routine.rtn_thumbnail_url IS '루틴 이미지 주소';
COMMENT ON COLUMN routine.rtn_target IS '상체, 하체, 전신, 유산소';
COMMENT ON COLUMN routine.rtn_duration IS '1: 10~15분, 2: 15~20분, 3:25~30분';


