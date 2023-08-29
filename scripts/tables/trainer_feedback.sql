CREATE TABLE trainer_feedback (
	trnf_seq	NUMBER		NOT NULL,
	trn_seq	NUMBER		NOT NULL,
	mbr_seq	NUMBER		NOT NULL,
	trnf_content	CLOB		NOT NULL,
	trnf_creation_date	TIMESTAMP	DEFAULT CURRENT_TIMESTAMP	NOT NULL,
	trnf_report_mod_date	TIMESTAMP		NULL,
	trnf_period_start_date	TIMESTAMP		NOT NULL,
	trnf_period_end_date	TIMESTAMP		NOT NULL
);


COMMENT ON COLUMN trainer_feedback.trn_seq IS 'trn_seq.NEXTVAL';
COMMENT ON COLUMN trainer_feedback.trnf_content IS 'PT 진행 후 트레이너가 남기는 피드백 내용';
COMMENT ON COLUMN trainer_feedback.trnf_creation_date IS '피드백 등록 날짜';
COMMENT ON COLUMN trainer_feedback.trnf_report_mod_date IS '마지막 피드백 수정 날짜';
COMMENT ON COLUMN trainer_feedback.trnf_period_start_date IS 'PT 진행한 날짜 기준으로 앞선 한달';
COMMENT ON COLUMN trainer_feedback.trnf_period_end_date IS 'PT를 진행한 날짜';
