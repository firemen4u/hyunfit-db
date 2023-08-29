ALTER TABLE personal_training_review ADD CONSTRAINT FK_personal_training_TO_personal_training_review_1 FOREIGN KEY (
	pt_seq
)
REFERENCES personal_training (
	pt_seq
);
