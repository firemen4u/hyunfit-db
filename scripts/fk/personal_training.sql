ALTER TABLE personal_training ADD CONSTRAINT FK_trainer_TO_personal_training_1 FOREIGN KEY (
	trn_seq
)
REFERENCES trainer (
	trn_seq
);

ALTER TABLE personal_training ADD CONSTRAINT FK_member_TO_personal_training_1 FOREIGN KEY (
	mbr_seq
)
REFERENCES member (
	mbr_seq
);
