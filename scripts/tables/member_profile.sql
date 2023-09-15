CREATE TABLE member_profile (
	mbrp_seq	NUMBER	DEFAULT mbrp_seq_pk.NEXTVAL	NOT NULL,
    mbr_seq NUMBER NOT NULL,
	mbrp_birthdate	TIMESTAMP		NULL,
	mbrp_gender	NUMBER		NULL,
	mbrp_height	NUMBER		NULL,
	mbrp_weight	NUMBER		NULL,
	mbrp_exercise_goal	NUMBER		NULL,
	mbrp_exercise_experience_level	NUMBER		NULL,
	mbrp_exercise_target	NUMBER		NULL,
	mbrp_knee_health_considered	NUMBER		NULL,
	mbrp_noise_considered	NUMBER		NULL,
	mbrp_long_sitter	NUMBER		NULL,
	mbrp_neck_shoulder_focused	NUMBER		NULL,
	mbrp_back_disk_considered	NUMBER		NULL,
	mbrp_creation_date	TIMESTAMP	DEFAULT CURRENT_TIMESTAMP	NOT NULL
);

COMMENT ON COLUMN member_profile.mbrp_birthdate IS '멤버의 생년 월일 ex 19951125';
COMMENT ON COLUMN member_profile.mbrp_gender IS '멤버의 성별 1:남자 2:여자';
COMMENT ON COLUMN member_profile.mbrp_height IS '멤버의 키';
COMMENT ON COLUMN member_profile.mbrp_weight IS '멤버의 몸무게';
COMMENT ON COLUMN member_profile.mbrp_exercise_goal IS '운동 목표 설문 1: ,2: ';
COMMENT ON COLUMN member_profile.mbrp_exercise_target IS '1.상체, 2.하체, 3.유산소, 4.전신, 5.상관없음';
COMMENT ON COLUMN member_profile.mbrp_exercise_experience_level IS '운동 경력 1: 초보자 2: 초중급자 3: 중급자 4: 중고급자 5: 고급자';
COMMENT ON COLUMN member_profile.mbrp_knee_health_considered IS '무릎운동이 가능한가? 하체 운동 추천 덜 해줌';
COMMENT ON COLUMN member_profile.mbrp_noise_considered IS '층간소음이 걱정될 경우 점프스쿼트 같은 활동적 운동 추천 덜 해줌';
COMMENT ON COLUMN member_profile.mbrp_long_sitter IS '스트레칭 및 혈액순환 위주의 운동 추천?';
COMMENT ON COLUMN member_profile.mbrp_neck_shoulder_focused IS '스트레칭 추천?';
COMMENT ON COLUMN member_profile.mbrp_back_disk_considered IS '허리디스크 여부';
COMMENT ON COLUMN member_profile.mbrp_creation_date IS '입력한 날의 날짜 데이터';
