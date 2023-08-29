ALTER TABLE trainer_feedback ADD CONSTRAINT FK_Trainer_TO_trainer_feedback_1 FOREIGN KEY (
	trn_seq
)
REFERENCES Trainer (
	trn_seq
);

ALTER TABLE trainer_feedback ADD CONSTRAINT FK_member_TO_trainer_feedback_1 FOREIGN KEY (
	mbr_seq
)
REFERENCES member (
	mbr_seq
);