
CREATE TABLE exercise_routine_mapping (
	erm_seq	NUMBER	DEFAULT erm_seq_pk.NEXTVAL	NOT NULL,
	rtn_seq	NUMBER		NOT NULL,
	exc_seq	NUMBER		NOT NULL
);
