ALTER TABLE training_target ADD CONSTRAINT FK_training_TO_training_target_1 FOREIGN KEY (
	tri_seq
)
REFERENCES training (
	tri_seq
);
