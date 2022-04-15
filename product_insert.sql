insert into product_category values (1, 'furniture');
insert into product_category values (2, 'fabric');
insert into product_category values (3, 'light');

insert into product values (SEQUENCE_PRODUCT_PNO.nextval, '저스트슬립', '저스트슬립 Air/Deep 매트리스 4types S/SS/Q', '상품상세 이미지 경로', 92900, 1);
insert into product values (SEQUENCE_PRODUCT_PNO.nextval, '에어론', '리버서블 오피스데스크 6size 2colors', '상품상세 이미지 경로', 39800, 1);
insert into product values (SEQUENCE_PRODUCT_PNO.nextval, '도모디자인', '(후기이벤트) 1+1커버증정 기능성/워셔블 패브릭소파 4인/6인/8인', '상품상세 이미지 경로', 1739000, 1);

insert into product values (SEQUENCE_PRODUCT_PNO.nextval, '아엠홈', '[주말특가][맞춤] 비침없는 화이트 도톰 레이스/쉬폰커튼(나비주름/핀형/봉집)', '상품상세 이미지 경로', 19900, 2);
insert into product values (SEQUENCE_PRODUCT_PNO.nextval, '헬로우슬립', '부드러운 카스테라 항균 옥수수솜 봄이불 차렵이불세트', '상품상세 이미지 경로', 37900, 2);
insert into product values (SEQUENCE_PRODUCT_PNO.nextval, '코튼리빙', '40수 코마사 호텔수건 200g 10장', '상품상세 이미지 경로', 28500, 2);

insert into product values (SEQUENCE_PRODUCT_PNO.nextval, '티피링크', 'Tapo L530E 스마트 멀티 컬러 전구 IoT LED 조명', '상품상세 이미지 경로', 14000, 3);
insert into product values (SEQUENCE_PRODUCT_PNO.nextval, '에이모노', '빈티지 레트로 스탠드_4types', '상품상세 이미지 경로', 29900, 3);
insert into product values (SEQUENCE_PRODUCT_PNO.nextval, '레나에너지', '우주인 오로라 무드등 은하수 조명 LN-777', '상품상세 이미지 경로', 22800, 3);

insert into option_parent values (1, '색상');
insert into option_parent values (2, '사이즈');
insert into option_parent values (3, '추가상품');


insert into product_detail values (SEQUENCE_PRODUCT_P_NO.nextval, 1, 1, 'white', 92900);
insert into product_detail values (SEQUENCE_PRODUCT_P_NO.nextval, 1, 1, 'gray', 92900);
insert into product_detail values (SEQUENCE_PRODUCT_P_NO.nextval, 1, 1, 'black', 92900);

insert into product_detail values (SEQUENCE_PRODUCT_P_NO.nextval, 1, 2, 'single', 92900);
insert into product_detail values (SEQUENCE_PRODUCT_P_NO.nextval, 1, 2, 'super single', 102900);
insert into product_detail values (SEQUENCE_PRODUCT_P_NO.nextval, 1, 2, 'queen', 122900);

--002
insert into product_detail values (SEQUENCE_PRODUCT_P_NO.nextval, 2, 1, 'white', 39800);
insert into product_detail values (SEQUENCE_PRODUCT_P_NO.nextval, 2, 1, 'gray', 39800);

insert into product_detail values (SEQUENCE_PRODUCT_P_NO.nextval, 2, 2, '테이블 600~2400', 39800);
insert into product_detail values (SEQUENCE_PRODUCT_P_NO.nextval, 2, 2, '테이블 + 낮은선반', 89800);
insert into product_detail values (SEQUENCE_PRODUCT_P_NO.nextval, 2, 2, '테이블 + 중간선반', 92800);
insert into product_detail values (SEQUENCE_PRODUCT_P_NO.nextval, 2, 2, '테이블 + 높은선반', 95800);
insert into product_detail values (SEQUENCE_PRODUCT_P_NO.nextval, 2, 2, '테이블 + 더블선반', 109800);
insert into product_detail values (SEQUENCE_PRODUCT_P_NO.nextval, 2, 2, '테이블 1200~1800', 89800);

--003
insert into product_detail values (SEQUENCE_PRODUCT_P_NO.nextval, 3, 1, '코튼 화이트', 1739000);
insert into product_detail values (SEQUENCE_PRODUCT_P_NO.nextval, 3, 1, '소프트 블루', 1739000);
insert into product_detail values (SEQUENCE_PRODUCT_P_NO.nextval, 3, 1, '라이트 그레이', 1739000);

insert into product_detail values (SEQUENCE_PRODUCT_P_NO.nextval, 3, 2, '4인', 1739000);
insert into product_detail values (SEQUENCE_PRODUCT_P_NO.nextval, 3, 2, '6인', 1939000);
insert into product_detail values (SEQUENCE_PRODUCT_P_NO.nextval, 3, 2, '8인', 2189000);

--004
insert into product_detail values (SEQUENCE_PRODUCT_P_NO.nextval, 4, 1, '레이스 커튼', 19900);
insert into product_detail values (SEQUENCE_PRODUCT_P_NO.nextval, 4, 1, '쉬폰 커튼', 19900);

insert into product_detail values (SEQUENCE_PRODUCT_P_NO.nextval, 4, 2, '나비주름', 19900);
insert into product_detail values (SEQUENCE_PRODUCT_P_NO.nextval, 4, 2, '핀형', 19900);
insert into product_detail values (SEQUENCE_PRODUCT_P_NO.nextval, 4, 2, '봉집', 19900);

--005
insert into product_detail values (SEQUENCE_PRODUCT_P_NO.nextval, 5, 1, '화이트', 37900);
insert into product_detail values (SEQUENCE_PRODUCT_P_NO.nextval, 5, 1, '크림아이보리', 37900);
insert into product_detail values (SEQUENCE_PRODUCT_P_NO.nextval, 5, 1, '핑크', 37900);
insert into product_detail values (SEQUENCE_PRODUCT_P_NO.nextval, 5, 1, '모카브라운', 37900);
insert into product_detail values (SEQUENCE_PRODUCT_P_NO.nextval, 5, 1, '그레이', 37900);
insert into product_detail values (SEQUENCE_PRODUCT_P_NO.nextval, 5, 1, '버터엘로우', 37900);

insert into product_detail values (SEQUENCE_PRODUCT_P_NO.nextval, 5, 2, '싱글', 37900);
insert into product_detail values (SEQUENCE_PRODUCT_P_NO.nextval, 5, 2, '슈퍼 싱글', 57900);
insert into product_detail values (SEQUENCE_PRODUCT_P_NO.nextval, 5, 2, '퀸/킹 겸용', 87900);

--006
insert into product_detail values (SEQUENCE_PRODUCT_P_NO.nextval, 6, 1, '화이트', 28500);
insert into product_detail values (SEQUENCE_PRODUCT_P_NO.nextval, 6, 1, '연회색', 28500);
insert into product_detail values (SEQUENCE_PRODUCT_P_NO.nextval, 6, 1, '진회색', 28500);
insert into product_detail values (SEQUENCE_PRODUCT_P_NO.nextval, 6, 1, '크림', 28500);
insert into product_detail values (SEQUENCE_PRODUCT_P_NO.nextval, 6, 1, '모카', 28500);
insert into product_detail values (SEQUENCE_PRODUCT_P_NO.nextval, 6, 1, '블루그레이', 28500);
insert into product_detail values (SEQUENCE_PRODUCT_P_NO.nextval, 6, 1, '코랄핑크', 28500);
insert into product_detail values (SEQUENCE_PRODUCT_P_NO.nextval, 6, 1, '피스타치오', 28500);
insert into product_detail values (SEQUENCE_PRODUCT_P_NO.nextval, 6, 1, '파스텔핑크', 28500);
insert into product_detail values (SEQUENCE_PRODUCT_P_NO.nextval, 6, 1, '파스텔엘로우', 28500);
insert into product_detail values (SEQUENCE_PRODUCT_P_NO.nextval, 6, 1, '파스텔블루', 28500);

--007
insert into product_detail values (SEQUENCE_PRODUCT_P_NO.nextval, 7, 3, '조명 IoT 구글홈 절전 + 11,900원', 25900);

--008
insert into product_detail values (SEQUENCE_PRODUCT_P_NO.nextval, 8, 1, '화이트', 29900);
insert into product_detail values (SEQUENCE_PRODUCT_P_NO.nextval, 8, 1, '엘로우', 29900);
insert into product_detail values (SEQUENCE_PRODUCT_P_NO.nextval, 8, 1, '블랙', 29900);
insert into product_detail values (SEQUENCE_PRODUCT_P_NO.nextval, 8, 1, '레드', 29900);

insert into product_detail values (SEQUENCE_PRODUCT_P_NO.nextval, 8, 2, '클램프 스탠드', 29900);
insert into product_detail values (SEQUENCE_PRODUCT_P_NO.nextval, 8, 2, '레트로 스탠드', 33900);
insert into product_detail values (SEQUENCE_PRODUCT_P_NO.nextval, 8, 2, '레트로 클립 스탠드', 35900);

--009
insert into product_detail values (SEQUENCE_PRODUCT_P_NO.nextval, 9, 3, '어뎁터 5V 2A + 3,000원', 25800);
insert into product_detail values (SEQUENCE_PRODUCT_P_NO.nextval, 9, 3, 'AAA건전지(2알) + 1000원', 23800);

commit;
