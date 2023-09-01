ALTER TABLE exercise ADD CONSTRAINT FK_administrator_TO_exercise_1 FOREIGN KEY (
	adm_seq
)
REFERENCES administrator (
	adm_seq
);