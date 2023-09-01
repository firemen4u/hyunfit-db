ALTER TABLE exercise_target ADD CONSTRAINT FK_exercise_TO_exercise_target_1 FOREIGN KEY (
	exc_seq
)
REFERENCES exercise (
	exc_seq
);
