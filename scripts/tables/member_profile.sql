CREATE TABLE member_profile (
	mbrp_seq	NUMBER		NOT NULL,
    mbr_seq NUMBER NOT NULL,
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
	mbrp_neck_shoulder_focused	NUMBER		NULL,
	mbrp_creation_date	TIMESTAMP	DEFAULT CURRENT_TIMESTAMP	NOT NULL
);

COMMENT ON COLUMN member_profile.mbrp_birthdate IS '멤버의 생년 월일 ex 19951125';
COMMENT ON COLUMN member_profile.mbrp_gender IS '멤버의 성별 1:남자 2:여자';
COMMENT ON COLUMN member_profile.mbrp_height IS '멤버의 키';
COMMENT ON COLUMN member_profile.mbrp_weight IS '멤버의 몸무게';
COMMENT ON COLUMN member_profile.mbrp_training_goal IS '운동 목표 설문 1: ,2: ,3:';
COMMENT ON COLUMN member_profile.mbrp_training_experience_level IS '운동 경력 1: 초보자 2: 중급자 3: 고수';
COMMENT ON COLUMN member_profile.mbrp_training_preference IS '선호 운동 1: 헬스 2: 요가 3: 필라테스 등';
COMMENT ON COLUMN member_profile.mbrp_knee_health IS '무릎운동이 가능한가? 하체 운동 추천 덜 해줌';
COMMENT ON COLUMN member_profile.mbrp_noise_consideration IS '층간소음이 걱정될 경우 점프스쿼트 같은 활동적 운동 추천 덜 해줌';
COMMENT ON COLUMN member_profile.mbrp_sitting_duration IS '스트레칭 및 혈액순환 위주의 운동 추천?';
COMMENT ON COLUMN member_profile.mbrp_neck_shoulder_focused IS '스트레칭 추천?';
COMMENT ON COLUMN member_profile.mbrp_creation_date IS '입력한 날의 날짜 데이터';
