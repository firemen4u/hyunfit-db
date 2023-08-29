ALTER TABLE routine ADD CONSTRAINT FK_administrator_TO_routine_1 FOREIGN KEY (
	adm_seq
)
REFERENCES administrator (
	adm_seq
);
