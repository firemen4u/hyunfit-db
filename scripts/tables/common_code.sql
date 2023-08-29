
CREATE TABLE common_code (
	category	VARCHAR2(100)	NOT NULL, 
	code_number	NUMBER NOT NULL,
	code_name	VARCHAR2(500) NOT NULL,
	code_info1	VARCHAR2(2002) NULL,
	code_info2	VARCHAR2(2002) NULL,
	code_info3	VARCHAR2(2002) NULL,
	code_info4	VARCHAR2(2002) NULL,
	code_info5	VARCHAR2(2002) NULL
);

COMMENT ON COLUMN common_code.category IS '공통코드 카테고리';
COMMENT ON COLUMN common_code.code_number IS '공통코드 넘버';
COMMENT ON COLUMN common_code.code_name IS '공통코드 이름';
