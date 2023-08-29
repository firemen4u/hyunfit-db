CREATE TABLE member (
	mbr_seq	NUMBER		NOT NULL,
	mbr_id	VARCHAR2(100)		NOT NULL,
	mbr_pw	VARCHAR2(1000)		NOT NULL,
	mbr_name	VARCHAR2(100)		NULL,
	mbr_total_point	NUMBER	DEFAULT 0	NULL,
	mbr_total_exp	NUMBER	DEFAULT 0	NULL,
	mbrp_birthdate	TIMESTAMP		NULL,
	mbrp_gender	NUMBER		NULL,
	mbrp_height	NUMBER		NULL,
	mbrp_weight	NUMBER		NULL,
	mbrp_training_goal	NUMBER		NULL,
	mbrp_training_experience_level	NUMBER		NULL,
	mbrp_training_preference	NUMBER		NULL,
	mbrp_knee_health	NUMBER		NULL,
	mbrp_noise_consideration	NUMBER		NULL,
	mbrp_sitting_duration	NUMBER		NULL,
	mbrp_neck_shoulder_focused	NUMBER		NULL
);

COMMENT ON COLUMN member.mbr_name IS '사원 이름';
COMMENT ON COLUMN member.mbr_total_point IS '획득한 총 포인트';
COMMENT ON COLUMN member.mbr_total_exp IS '획득한 총 경험치';
