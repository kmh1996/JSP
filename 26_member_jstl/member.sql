DROP TABLE IF EXISTS smart_member;
CREATE TABLE IF NOT EXISTS smart_member(
	u_num INT primary key auto_increment, 	-- 회원번호
	u_id VARCHAR(30) unique,			  	-- 회원아이디
	u_pass VARCHAR(30) NOT NULL,			-- 비밀번호
	u_age int,								-- 나이
	u_gender VARCHAR(10), 				    -- 성별
	u_join char(1) default 'Y',	-- 회원탈퇴 여부 Y == 가입상태
	u_regdate TIMESTAMP default now() -- 회원가입일	 
);

INSERT INTO smart_member(u_id,u_pass,u_age,u_gender) 
VALUES('admin', 'admin' , 20, 'male');

SELECT * FROM smart_member;

SELECT * FROM smart_member 
WHERE u_id != 'admin' AND u_join = 'Y' 
ORDER BY u_num DESC






