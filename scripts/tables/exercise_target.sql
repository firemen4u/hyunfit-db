
CREATE TABLE exercise_target (
	exctg_seq	NUMBER	DEFAULT exctg_seq_pk.NEXTVAL	NOT NULL,
	exc_seq	NUMBER		NOT NULL,
	exctg_area	NUMBER		NOT NULL,
	exctg_weight	NUMBER	DEFAULT 1.0	NOT NULL
);

COMMENT ON COLUMN exercise_target.exctg_area IS '1: 가슴 2: 등 3: 팔 4: 복근 5: 하체 등';
COMMENT ON COLUMN exercise_target.exctg_weight IS '한 운동동작에 대해 복합적인 부위를 운동할 수 있음 ex: 팔굽혀펴기 = 가슴:0.7 삼두 0.3   /  기본값 1.0';
