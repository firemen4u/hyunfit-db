
CREATE TABLE personal_training_review (
	ptr_seq	NUMBER		NOT NULL,
	pt_seq	NUMBER		NOT NULL,
	ptr_creation_date	TIMESTAMP	DEFAULT CURRENT_TIMESTAMP	NOT NULL,
	ptr_content	VARCHAR2(2002)		NULL,
	ptr_rating	NUMBER		NULL
);

COMMENT ON COLUMN personal_training_review.ptr_seq IS 'ptr_seq.NEXTVAL';
COMMENT ON COLUMN personal_training_review.ptr_creation_date IS '받은 개인 레슨에 대한 평가일자';
COMMENT ON COLUMN personal_training_review.ptr_content IS '받은 개인 레슨에 대한 평가 내용';
COMMENT ON COLUMN personal_training_review.ptr_rating IS '받은 개인 레슨에 대한 평가 별점';
