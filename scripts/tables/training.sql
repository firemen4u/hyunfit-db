
CREATE TABLE training (
	tri_seq	NUMBER		NOT NULL,
	adm_seq	NUMBER		NOT NULL,
	tri_name	VARCHAR2(100)		NOT NULL,
	tri_type	NUMBER		NOT NULL,
	tri_content	VARCHAR2(2002)		NOT NULL,
	tri_difficulty	NUMBER		NOT NULL,
	tri_calories_per_rep	NUMBER		NOT NULL,
	tri_set_count	NUMBER	DEFAULT 1	NOT NULL,
	tri_time_per_set_in_sec	NUMBER		NOT NULL,
	tri_url	VARCHAR2(255)		NOT NULL,
	tri_created_date	TIMESTAMP	DEFAULT CURRENT_TIMESTAMP	NOT NULL
);


COMMENT ON COLUMN training.adm_seq IS '(등록자)';
COMMENT ON COLUMN training.tri_name IS '운동 동작에 대한 이름';
COMMENT ON COLUMN training.tri_type IS '대분류(요가,헬스 등)';
COMMENT ON COLUMN training.tri_content IS '운동에 대한 간단한 설명';
COMMENT ON COLUMN training.tri_difficulty IS '운동에 대한 난이도 1: 쉬움 2: 중간 3: 어려움';
COMMENT ON COLUMN training.tri_calories_per_rep IS '동작 1회당 소모되는 칼로리';
COMMENT ON COLUMN training.tri_set_count IS '운동에 대해 지정한 총 세트수';
COMMENT ON COLUMN training.tri_time_per_set_in_sec IS '운동에 대해 지정한 세트당 시간';
COMMENT ON COLUMN training.tri_url IS '운동 가이드 영상 url 주소';
COMMENT ON COLUMN training.tri_created_date IS '운동을 등록한 날짜';
