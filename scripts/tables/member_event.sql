CREATE TABLE member_event (
	mev_seq	NUMBER	DEFAULT mev_seq.NEXTVAL	NOT NULL,
	mbr_seq	NUMBER		NOT NULL,
	mev_type	NUMBER		NOT NULL,
	mev_amount	NUMBER		NOT NULL,
	mev_creation_date	TIMESTAMP		NOT NULL
);

COMMENT ON COLUMN member_event.mev_type IS '1: 경험치, 2: 포인트';
COMMENT ON COLUMN member_event.mev_amount IS '경험치 / 포인트 양';
COMMENT ON COLUMN member_event.mev_creation_date IS '경험치 / 포인트 획득 날짜';
