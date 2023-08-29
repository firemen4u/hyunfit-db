ALTER TABLE member_event ADD CONSTRAINT FK_member_TO_member_event_1 FOREIGN KEY (
	mbr_seq
)
REFERENCES member (
	mbr_seq
);
