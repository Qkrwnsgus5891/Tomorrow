--MEMBER
INSERT INTO MEMBER VALUES ('admin001', 'admin001', '관리자', '관리자', '000000', null, sysdate, '010-0000-0000', '0', default);
INSERT INTO MEMBER VALUES ('test001', 'test123', '김민준', '민준123', '970714', 'test001 한 줄 소개', sysdate, '010-4528-4792', '1', default);
INSERT INTO MEMBER VALUES ('test002', 'test123', '이서연', '서연123', '941109', 'test002 한 줄 소개', sysdate, '010-6298-1087', '1', default);
INSERT INTO MEMBER VALUES ('test003', 'test123', '박도윤', '도윤123', '000726', 'test003 한 줄 소개', sysdate, '010-728-2153', '1', default);
INSERT INTO MEMBER VALUES ('test004', 'test123', '정지우', '지우123', '020103', 'test004 한 줄 소개', sysdate, '010-1853-7767', '1', default);
INSERT INTO MEMBER VALUES ('test005', 'test123', '최민서', '민서123', '921018', 'test005 한 줄 소개', sysdate, '011-8103-3924', '1', default);

INSERT INTO MEMBER VALUES ('tomo001', 'tomo123', '금난새', 'h__fairy', '921018', '#원룸#원룸꾸미기', sysdate, '010-3179-7902', '1', default);
INSERT INTO MEMBER VALUES ('tomo002', 'tomo123', '금내리', 'Ttotto', '921018', default, sysdate, '010-8001-1498', '1', default);
INSERT INTO MEMBER VALUES ('tomo003', 'tomo123', '금노리', 'y_hhi', '921018', '귀여운 우리집 강아지', sysdate, '010-8104-6548', '1', default);
INSERT INTO MEMBER VALUES ('tomo004', 'tomo123', '금노상', 'Won1ni', '921018', 'insta @hye.won.1 @won.1.room', sysdate, '010-8103-3924', '1', default);
INSERT INTO MEMBER VALUES ('tomo005', 'tomo123', '김나래', 'borummie', '921018', default, sysdate, '010-9813-2353', '1', default);
INSERT INTO MEMBER VALUES ('tomo006', 'tomo123', '김나리', '옥냥s2', '921018', '인스타그램 @seizethernome', sysdate, '011-4822-9160', '1', default);
INSERT INTO MEMBER VALUES ('tomo007', 'tomo123', '한이랑', 'NANNY', '921018', default, sysdate, '010-2180-9781', '1', default);
INSERT INTO MEMBER VALUES ('tomo008', 'tomo123', '한사랑', '쭈히2', '921018', default, sysdate, '010-0073-3915', '1', default);
INSERT INTO MEMBER VALUES ('tomo009', 'tomo123', '권시내', '쑤홈', '921018', '동갑내기 부부✨', sysdate, '011-9843-3424', '1', default);
INSERT INTO MEMBER VALUES ('tomo010', 'tomo123', '권한솔', '범예범', '921018', '인생이란 한 편의 영화', sysdate, '010-1021-2114', '1', default);
INSERT INTO MEMBER VALUES ('tomo011', 'tomo123', '유한별', 'KIMRUHI', '921018', default, sysdate, '010-5147-3514', '1', default);
INSERT INTO MEMBER VALUES ('tomo012', 'tomo123', '이사랑', '이끌로이', '921018', '알록달록 신혼라이프', sysdate, '010-4903-6524', '1', default);
INSERT INTO MEMBER VALUES ('tomo013', 'tomo123', '금초슬', 'eunn_hye__', '921018', default, sysdate, '010-0403-3964', '1', default);
INSERT INTO MEMBER VALUES ('tomo014', 'tomo123', '김가람', '명인이닭', '921018', '명인이닭', sysdate, '010-3984-4859', '1', default);
INSERT INTO MEMBER VALUES ('tomo015', 'tomo123', '정시내', 'eunyeong。', '921018', 'instagram : iey_jj', sysdate, '010-2143-3060', '1', default);
INSERT INTO MEMBER VALUES ('tomo016', 'tomo123', '이하얀', '하물짱', '921018', '변화를 추구합니다!', sysdate, '010-7912-3524', '1', default);
INSERT INTO MEMBER VALUES ('tomo017', 'tomo123', '진달래', 'EseulEya', '921018', '스윗한 #횬쓰윗뜨룸', sysdate, '011-6250-6190', '1', default);
INSERT INTO MEMBER VALUES ('tomo018', 'tomo123', '유아름', '백하부부', '921018', default, sysdate, '010-9011-3618', '1', default);
INSERT INTO MEMBER VALUES ('tomo019', 'tomo123', '허단비', '서진저', '921018', '@ginger_zip', sysdate, '010-8843-4942', '1', default);
INSERT INTO MEMBER VALUES ('tomo020', 'tomo123', '허봄비', 'Ooooii', '921018', '나를 닮은 공간에서.', sysdate, '011-7142-2404', '1', default);
INSERT INTO MEMBER VALUES ('tomo021', 'tomo123', '허꽃비', '쯩연', '921018', default, sysdate, '010-2788-3924', '1', default);
INSERT INTO MEMBER VALUES ('tomo022', 'tomo123', '옥찬돌', '아일라홈', '921018', '요리전공자 일라', sysdate, '010-3403-1916', '1', default);
INSERT INTO MEMBER VALUES ('tomo023', 'tomo123', '채운들', '서리들', '921018', default, sysdate, '010-9127-3994', '1', default);
INSERT INTO MEMBER VALUES ('tomo024', 'tomo123', '한바다', '서니데이_', '921018', '🕰 프렌치 무드 🤍', sysdate, '010-5403-5194', '1', default);
INSERT INTO MEMBER VALUES ('tomo025', 'tomo123', '정빛나', 'sua6344', '921018', default, sysdate, '010-1603-7910', '1', default);



--CART
INSERT INTO CART VALUES (SEQUENCE_CART_C_NO.nextval, 'test001', 1, '3, 6', 1 , default);
INSERT INTO CART VALUES (SEQUENCE_CART_C_NO.nextval, 'test001', 2, '8, 10', 3,  default);
INSERT INTO CART VALUES (SEQUENCE_CART_C_NO.nextval, 'test001', 3, '15, 20', 2, default);
INSERT INTO CART VALUES (SEQUENCE_CART_C_NO.nextval, 'test001', 4, '22, 25', 5, default);

INSERT INTO CART VALUES (SEQUENCE_CART_C_NO.nextval, 'test003', 1, '3, 6', 1, 'Y');
INSERT INTO CART VALUES (SEQUENCE_CART_C_NO.nextval, 'test003', 2, '8, 10', 3, 'Y');
INSERT INTO CART VALUES (SEQUENCE_CART_C_NO.nextval, 'test003', 3, '15, 20', 2, 'Y');
INSERT INTO CART VALUES (SEQUENCE_CART_C_NO.nextval, 'test003', 4, '22, 25', 5, 'Y');

--ORDERS
INSERT INTO ORDERS VALUES(SEQUENCE_ORDERS_O_NO.nextval, 'test002', sysdate, '이서연', 'test001@naver.com', '010-6298-1087', '이서연', '경기도 군포시 오금동 871-1 삼익소월아파트 373-1803', '010-6298-1087', 92900+30000 +39800+50000);
INSERT INTO ORDERS VALUES(SEQUENCE_ORDERS_O_NO.nextval, 'test004', sysdate, '정지우', 'test004@gmail.com', '010-1853-7767', '신하준', '전주시 덕진구 송천동 신일ⓐ 104/1507', '010-8049-1783', 92900+30000 +39800+50000 +1739000+400000);
INSERT INTO ORDERS VALUES(SEQUENCE_ORDERS_O_NO.nextval, 'test005', sysdate, '최민서', 'test005@yahoo.com', '011-8103-3924', '최민서', '고양시 일산구 백석동 1316번지 현대밀라트1차 B동515호', '011-8103-3924', 39800+50000 +1739000+400000 +19900);
INSERT INTO ORDERS VALUES(SEQUENCE_ORDERS_O_NO.nextval, 'test001', sysdate, '김민준', 'test001@nate.com', '010-4528-4792', '주채원', '서울시 송파구 방이동212-8 코오롱아파트105-405', '010-3319-7841', 19900);

--ORDER_DETAIL
INSERT INTO ORDER_DETAIL VALUES(SEQUENCE_ORDER_DETAIL_O_D_SEQ.nextval, 1, 1, '3, 6', 1);
INSERT INTO ORDER_DETAIL VALUES(SEQUENCE_ORDER_DETAIL_O_D_SEQ.nextval, 1, 2, '8, 10', 3);

INSERT INTO ORDER_DETAIL VALUES(SEQUENCE_ORDER_DETAIL_O_D_SEQ.nextval, 2, 1, '3, 6', 1);
INSERT INTO ORDER_DETAIL VALUES(SEQUENCE_ORDER_DETAIL_O_D_SEQ.nextval, 2, 2, '8, 10', 3);
INSERT INTO ORDER_DETAIL VALUES(SEQUENCE_ORDER_DETAIL_O_D_SEQ.nextval, 2, 3, '15, 20', 2);

INSERT INTO ORDER_DETAIL VALUES(SEQUENCE_ORDER_DETAIL_O_D_SEQ.nextval, 3, 2, '8, 10', 3);
INSERT INTO ORDER_DETAIL VALUES(SEQUENCE_ORDER_DETAIL_O_D_SEQ.nextval, 3, 3, '15, 20', 2);
INSERT INTO ORDER_DETAIL VALUES(SEQUENCE_ORDER_DETAIL_O_D_SEQ.nextval, 3, 4, '22, 25', 5);

INSERT INTO ORDER_DETAIL VALUES(SEQUENCE_ORDER_DETAIL_O_D_SEQ.nextval, 4, 4, '22, 25', 5);

commit;
--SELECT CART
SELECT * FROM CART WHERE C_NY = 'N' AND M_ID = 'test001';