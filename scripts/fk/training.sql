ALTER TABLE training ADD CONSTRAINT FK_administrator_TO_training_1 FOREIGN KEY (
	adm_seq
)
REFERENCES administrator (
	adm_seq
);