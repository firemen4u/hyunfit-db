

CREATE TABLE exercise_history (
	exch_seq	NUMBER	DEFAULT exch_seq_pk.NEXTVAL	NOT NULL,
	exc_seq	NUMBER		NOT NULL,
	mbr_seq	NUMBER		NOT NULL,
	exch_start_time	TIMESTAMP		NOT NULL,
	exch_end_time	TIMESTAMP		NOT NULL,
	exch_excelent_cnt	NUMBER	DEFAULT 0	NOT NULL,
	exch_good_cnt	NUMBER	DEFAULT 0	NOT NULL,
	exch_bad_cnt	NUMBER	DEFAULT 0	NOT NULL,
	exch_total_calories	NUMBER	DEFAULT 0	NOT NULL
);


COMMENT ON COLUMN exercise_history.exch_start_time IS '운동을 시작한 시간';
COMMENT ON COLUMN exercise_history.exch_end_time IS '운동을 종료한 시간';
COMMENT ON COLUMN exercise_history.exch_excelent_cnt IS '동작이 100%일치 했을 경우 카운트';
COMMENT ON COLUMN exercise_history.exch_good_cnt IS '동작이 80% 일치했을 경우 카운트';
COMMENT ON COLUMN exercise_history.exch_bad_cnt IS '동작이 60% 일치했을 경우 카운트';
COMMENT ON COLUMN exercise_history.exch_total_calories IS '현재 이 운동을 진행한 만큼의 칼로리';
