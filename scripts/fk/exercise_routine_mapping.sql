ALTER TABLE exercise_routine_mapping ADD CONSTRAINT FK_routine_TO_exercise_routine_mapping_1 FOREIGN KEY (
	rtn_seq
)
REFERENCES routine (
	rtn_seq
);

ALTER TABLE exercise_routine_mapping ADD CONSTRAINT FK_exercise_TO_exercise_routine_mapping_1 FOREIGN KEY (
	exc_seq
)
REFERENCES exercise (
	exc_seq
);