ALTER TABLE exercise_history ADD CONSTRAINT FK_exercise_TO_exercise_history_1 FOREIGN KEY (
	exc_seq
)
REFERENCES exercise (
	exc_seq
);

ALTER TABLE exercise_history ADD CONSTRAINT FK_member_TO_exercise_history_1 FOREIGN KEY (
	mbr_seq
)
REFERENCES member (
	mbr_seq
);
