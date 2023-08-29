ALTER TABLE training_history ADD CONSTRAINT FK_training_TO_training_history_1 FOREIGN KEY (
	tri_seq
)
REFERENCES training (
	tri_seq
);

ALTER TABLE training_history ADD CONSTRAINT FK_member_TO_training_history_1 FOREIGN KEY (
	mbr_seq
)
REFERENCES member (
	mbr_seq
);
