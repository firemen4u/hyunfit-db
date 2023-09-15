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
	mbr_exercise_target	NUMBER		NULL,
	mbr_knee_health_considered	NUMBER		NULL,
	mbr_noise_considered	NUMBER		NULL,
	mbr_long_sitter	NUMBER		NULL,
	mbr_neck_shoulder_focused	NUMBER		NULL,
	mbr_back_disk_considered	NUMBER		NULL
);

COMMENT ON COLUMN member.mbr_name IS '사원 이름';
COMMENT ON COLUMN member.mbr_total_point IS '획득한 총 포인트';
COMMENT ON COLUMN member.mbr_total_exp IS '획득한 총 경험치';
COMMENT ON COLUMN member.mbr_exercise_goal IS '운동 목표 설문 1: ,2: ';
COMMENT ON COLUMN member.mbr_exercise_target IS '1.상체, 2.하체, 3.유산소, 4.전신, 5.상관없음';
COMMENT ON COLUMN member.mbr_exercise_experience_level IS '운동 경력 1: 초보자 2: 초중급자 3: 중급자 4: 중고급자 5: 고급자';
COMMENT ON COLUMN member.mbr_knee_health_considered IS '무릎운동이 가능한가? 하체 운동 추천 덜 해줌';
COMMENT ON COLUMN member.mbr_noise_considered IS '층간소음이 걱정될 경우 점프스쿼트 같은 활동적 운동 추천 덜 해줌';
COMMENT ON COLUMN member.mbr_long_sitter IS '스트레칭 및 혈액순환 위주의 운동 추천?';
COMMENT ON COLUMN member.mbr_neck_shoulder_focused IS '스트레칭 추천?';
COMMENT ON COLUMN member.mbr_back_disk_considered IS '허리디스크 여부';



