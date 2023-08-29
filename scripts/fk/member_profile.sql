ALTER TABLE member_profile ADD CONSTRAINT FK_member_TO_member_profile_1 FOREIGN KEY (
	mbr_seq
)
REFERENCES member (
	mbr_seq
);