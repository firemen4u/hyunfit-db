CREATE TABLE member (
	mbr_seq	NUMBER	DEFAULT mbr_seq_pk.NEXTVAL	NOT NULL,
	mbr_id	VARCHAR2(100)		NOT NULL,
	mbr_pw	VARCHAR2(1000)		NOT NULL,
	mbr_name	VARCHAR2(100)		NULL,
	mbr_total_point	NUMBER	DEFAULT 0	NULL,
	mbr_total_exp	NUMBER	DEFAULT 0	NULL,
	mbr_birthdate	TIMESTAMP		NULL,
	mbr_gender	NUMBER		NULL,
	mbr_height	NUMBER		NULL,
	mbr_weight	NUMBER		NULL,
	mbr_exercise_goal	NUMBER		NULL,
	mbr_exercise_experience_level	NUMBER		NULL,
	mbr_exercise_preference	NUMBER		NULL,
	mbr_knee_health	NUMBER		NULL,
	mbr_noise_consideration	NUMBER		NULL,
	mbr_sitting_duration	NUMBER		NULL,
	mbr_neck_shoulder_focused	NUMBER		NULL
);

COMMENT ON COLUMN member.mbr_name IS '사원 이름';
COMMENT ON COLUMN member.mbr_total_point IS '획득한 총 포인트';
COMMENT ON COLUMN member.mbr_total_exp IS '획득한 총 경험치';
