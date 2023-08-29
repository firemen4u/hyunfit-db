ALTER TABLE training_routine_mapping ADD CONSTRAINT FK_routine_TO_training_routine_mapping_1 FOREIGN KEY (
	rtn_seq
)
REFERENCES routine (
	rtn_seq
);

ALTER TABLE training_routine_mapping ADD CONSTRAINT FK_training_TO_training_routine_mapping_1 FOREIGN KEY (
	tri_seq
)
REFERENCES training (
	tri_seq
);