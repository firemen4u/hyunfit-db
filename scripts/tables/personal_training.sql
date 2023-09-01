
CREATE TABLE personal_training (
	pt_seq	NUMBER	DEFAULT pt_seq.NEXTVAL	NOT NULL,
	trn_seq	NUMBER		NOT NULL,
	mbr_seq	NUMBER		NOT NULL,
	pt_creation_date	TIMESTAMP	DEFAULT CURRENT_TIMESTAMP	NOT NULL,
	pt_reservation_date	TIMESTAMP		NOT NULL,
	pt_lesson_duration	NUMBER		NULL,
	pt_lesson_start_date	TIMESTAMP		NULL,
	pt_lesson_end_date	TIMESTAMP		NULL,
	pt_reservation_status	NUMBER		NOT NULL,
	pt_cancellation_reason	VARCHAR2(2002)		NULL,
	pt_notes	VARCHAR2(2002)		NULL
);

COMMENT ON COLUMN personal_training.pt_seq IS 'pt_seq.NEXTVAL';
COMMENT ON COLUMN personal_training.trn_seq IS 'trn_seq.NEXTVAL';
COMMENT ON COLUMN personal_training.pt_creation_date IS '데이터 생성시간';
COMMENT ON COLUMN personal_training.pt_reservation_date IS '실제 레슨 예정일';
COMMENT ON COLUMN personal_training.pt_lesson_duration IS '레슨 예약시 수업 시간(시, 분)';
COMMENT ON COLUMN personal_training.pt_lesson_start_date IS '레슨(화상)시작 시간';
COMMENT ON COLUMN personal_training.pt_lesson_end_date IS '레슨(화상) 종료 시간';
COMMENT ON COLUMN personal_training.pt_reservation_status IS '1: 예약중 2: 진행중 3: 진행완료 4: 취소 5: 노쇼';
COMMENT ON COLUMN personal_training.pt_cancellation_reason IS '상태가 4일 경우 예약 취소 이유';
COMMENT ON COLUMN personal_training.pt_notes IS '멤버가 트레이너에게 요청하는 사항';
