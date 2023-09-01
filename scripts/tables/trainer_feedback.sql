CREATE TABLE trainer_feedback (
	trnf_seq	NUMBER	DEFAULT trnf_seq.NEXTVAL	NOT NULL,
	trn_seq	NUMBER		NOT NULL,
	mbr_seq	NUMBER		NOT NULL,
	trnf_content	CLOB	NULL,
	trnf_written_date	TIMESTAMP	NULL,
	trnf_report_mod_date	TIMESTAMP		NULL,
	trnf_feedback_period	TIMESTAMP	DEFAULT CURRENT_TIMESTAMP	NOT NULL
);


COMMENT ON COLUMN trainer_feedback.trn_seq IS 'trn_seq.NEXTVAL';
COMMENT ON COLUMN trainer_feedback.trnf_content IS 'PT 진행 후 트레이너가 남기는 피드백 내용';
COMMENT ON COLUMN trainer_feedback.trnf_written_date IS '피드백 등록 날짜';
COMMENT ON COLUMN trainer_feedback.trnf_report_mod_date IS '마지막 피드백 수정 날짜';
COMMENT ON COLUMN trainer_feedback.trnf_feedback_period IS '트레이너가 피드백을 작성해야 하는 기간';
