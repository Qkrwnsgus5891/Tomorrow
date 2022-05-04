insert into product_category values (1, 'furniture');
insert into product_category values (2, 'fabric');
insert into product_category values (3, 'light');

insert into product values (SEQUENCE_PRODUCT_P_NO.nextval, '저스트슬립', '저스트슬립 Air/Deep 매트리스 4types S/SS/Q', './upload/images/product/furniture1.jpg', 92900, 1);
insert into product values (SEQUENCE_PRODUCT_P_NO.nextval, '에어론', '리버서블 오피스데스크 6size 2colors', './upload/images/product/furniture2.jpg', 39800, 1);
insert into product values (SEQUENCE_PRODUCT_P_NO.nextval, '도모디자인', '(후기이벤트) 1+1커버증정 기능성/워셔블 패브릭소파 4인/6인/8인', './upload/images/product/furniture3.jpg', 1739000, 1);

COMMIT;

insert into product values (SEQUENCE_PRODUCT_P_NO.nextval, '아엠홈', '[주말특가][맞춤] 비침없는 화이트 도톰 레이스/쉬폰커튼(나비주름/핀형/봉집)', './upload/images/product/pabric1.jpg', 19900, 2);
insert into product values (SEQUENCE_PRODUCT_P_NO.nextval, '헬로우슬립', '부드러운 카스테라 항균 옥수수솜 봄이불 차렵이불세트', './upload/images/product/pabric2.jpg', 37900, 2);
insert into product values (SEQUENCE_PRODUCT_P_NO.nextval, '코튼리빙', '40수 코마사 호텔수건 200g 10장', './upload/images/product/pabric3.jpg', 28500, 2);

insert into product values (SEQUENCE_PRODUCT_P_NO.nextval, '티피링크', 'Tapo L530E 스마트 멀티 컬러 전구 IoT LED 조명', './upload/images/product/light1.jpg', 14000, 3);
insert into product values (SEQUENCE_PRODUCT_P_NO.nextval, '에이모노', '빈티지 레트로 스탠드_4types', './upload/images/product/light2.jpg', 29900, 3);
insert into product values (SEQUENCE_PRODUCT_P_NO.nextval, '레나에너지', '우주인 오로라 무드등 은하수 조명 LN-777', './upload/images/product/light3.jpg', 22800, 3);

insert into option_parent values (1, '색상');
insert into option_parent values (2, '사이즈');
insert into option_parent values (3, '추가상품');

COMMIT;

insert into product_detail values (SEQUENCE_PROD_DETAIL_P_SEQ.nextval, 1, 1, 'white', 0);
insert into product_detail values (SEQUENCE_PROD_DETAIL_P_SEQ.nextval, 1, 1, 'gray', 0);
insert into product_detail values (SEQUENCE_PROD_DETAIL_P_SEQ.nextval, 1, 1, 'black', 0);

insert into product_detail values (SEQUENCE_PROD_DETAIL_P_SEQ.nextval, 1, 2, 'single', 0);
insert into product_detail values (SEQUENCE_PROD_DETAIL_P_SEQ.nextval, 1, 2, 'super single', 20000);
insert into product_detail values (SEQUENCE_PROD_DETAIL_P_SEQ.nextval, 1, 2, 'queen', 30000);

COMMIT;
--002
insert into product_detail values (SEQUENCE_PROD_DETAIL_P_SEQ.nextval, 2, 1, 'white', 0);
insert into product_detail values (SEQUENCE_PROD_DETAIL_P_SEQ.nextval, 2, 1, 'gray', 0);

insert into product_detail values (SEQUENCE_PROD_DETAIL_P_SEQ.nextval, 2, 2, '테이블 600~2400', 0);
insert into product_detail values (SEQUENCE_PROD_DETAIL_P_SEQ.nextval, 2, 2, '테이블 + 낮은선반', 50000);
insert into product_detail values (SEQUENCE_PROD_DETAIL_P_SEQ.nextval, 2, 2, '테이블 + 중간선반', 60000);
insert into product_detail values (SEQUENCE_PROD_DETAIL_P_SEQ.nextval, 2, 2, '테이블 + 높은선반', 70000);
insert into product_detail values (SEQUENCE_PROD_DETAIL_P_SEQ.nextval, 2, 2, '테이블 + 더블선반', 80000);
insert into product_detail values (SEQUENCE_PROD_DETAIL_P_SEQ.nextval, 2, 2, '테이블 1200~1800', 60000);

COMMIT;
--003
insert into product_detail values (SEQUENCE_PROD_DETAIL_P_SEQ.nextval, 3, 1, '코튼 화이트', 0);
insert into product_detail values (SEQUENCE_PROD_DETAIL_P_SEQ.nextval, 3, 1, '소프트 블루', 0);
insert into product_detail values (SEQUENCE_PROD_DETAIL_P_SEQ.nextval, 3, 1, '라이트 그레이', 0);

insert into product_detail values (SEQUENCE_PROD_DETAIL_P_SEQ.nextval, 3, 2, '4인', 0);
insert into product_detail values (SEQUENCE_PROD_DETAIL_P_SEQ.nextval, 3, 2, '6인', 200000);
insert into product_detail values (SEQUENCE_PROD_DETAIL_P_SEQ.nextval, 3, 2, '8인', 400000);

COMMIT;
--004
insert into product_detail values (SEQUENCE_PROD_DETAIL_P_SEQ.nextval, 4, 1, '레이스 커튼', 0);
insert into product_detail values (SEQUENCE_PROD_DETAIL_P_SEQ.nextval, 4, 1, '쉬폰 커튼', 0);

insert into product_detail values (SEQUENCE_PROD_DETAIL_P_SEQ.nextval, 4, 2, '나비주름', 0);
insert into product_detail values (SEQUENCE_PROD_DETAIL_P_SEQ.nextval, 4, 2, '핀형', 0);
insert into product_detail values (SEQUENCE_PROD_DETAIL_P_SEQ.nextval, 4, 2, '봉집', 0);

COMMIT;
--005
insert into product_detail values (SEQUENCE_PROD_DETAIL_P_SEQ.nextval, 5, 1, '화이트', 0);
insert into product_detail values (SEQUENCE_PROD_DETAIL_P_SEQ.nextval, 5, 1, '크림아이보리', 0);
insert into product_detail values (SEQUENCE_PROD_DETAIL_P_SEQ.nextval, 5, 1, '핑크', 0);
insert into product_detail values (SEQUENCE_PROD_DETAIL_P_SEQ.nextval, 5, 1, '모카브라운', 0);
insert into product_detail values (SEQUENCE_PROD_DETAIL_P_SEQ.nextval, 5, 1, '그레이', 0);
insert into product_detail values (SEQUENCE_PROD_DETAIL_P_SEQ.nextval, 5, 1, '버터엘로우', 0);

insert into product_detail values (SEQUENCE_PROD_DETAIL_P_SEQ.nextval, 5, 2, '싱글', 0);
insert into product_detail values (SEQUENCE_PROD_DETAIL_P_SEQ.nextval, 5, 2, '슈퍼 싱글', 20000);
insert into product_detail values (SEQUENCE_PROD_DETAIL_P_SEQ.nextval, 5, 2, '퀸/킹 겸용', 50000);

COMMIT;
--006
insert into product_detail values (SEQUENCE_PROD_DETAIL_P_SEQ.nextval, 6, 1, '화이트', 0);
insert into product_detail values (SEQUENCE_PROD_DETAIL_P_SEQ.nextval, 6, 1, '연회색', 0);
insert into product_detail values (SEQUENCE_PROD_DETAIL_P_SEQ.nextval, 6, 1, '진회색', 0);
insert into product_detail values (SEQUENCE_PROD_DETAIL_P_SEQ.nextval, 6, 1, '크림', 0);
insert into product_detail values (SEQUENCE_PROD_DETAIL_P_SEQ.nextval, 6, 1, '모카', 0);
insert into product_detail values (SEQUENCE_PROD_DETAIL_P_SEQ.nextval, 6, 1, '블루그레이', 0);
insert into product_detail values (SEQUENCE_PROD_DETAIL_P_SEQ.nextval, 6, 1, '코랄핑크', 0);
insert into product_detail values (SEQUENCE_PROD_DETAIL_P_SEQ.nextval, 6, 1, '피스타치오', 0);
insert into product_detail values (SEQUENCE_PROD_DETAIL_P_SEQ.nextval, 6, 1, '파스텔핑크', 0);
insert into product_detail values (SEQUENCE_PROD_DETAIL_P_SEQ.nextval, 6, 1, '파스텔엘로우', 0);
insert into product_detail values (SEQUENCE_PROD_DETAIL_P_SEQ.nextval, 6, 1, '파스텔블루', 0);

COMMIT;
--007
insert into product_detail values (SEQUENCE_PROD_DETAIL_P_SEQ.nextval, 7, 3, '선택하지 않음', 0);
insert into product_detail values (SEQUENCE_PROD_DETAIL_P_SEQ.nextval, 7, 3, '조명 IoT 구글홈 절전 + 11,900원', 11900);

COMMIT;
--008
insert into product_detail values (SEQUENCE_PROD_DETAIL_P_SEQ.nextval, 8, 1, '화이트', 0);
insert into product_detail values (SEQUENCE_PROD_DETAIL_P_SEQ.nextval, 8, 1, '엘로우', 0);
insert into product_detail values (SEQUENCE_PROD_DETAIL_P_SEQ.nextval, 8, 1, '블랙', 0);
insert into product_detail values (SEQUENCE_PROD_DETAIL_P_SEQ.nextval, 8, 1, '레드', 0);

insert into product_detail values (SEQUENCE_PROD_DETAIL_P_SEQ.nextval, 8, 2, '클램프 스탠드', 0);
insert into product_detail values (SEQUENCE_PROD_DETAIL_P_SEQ.nextval, 8, 2, '레트로 스탠드', 10000);
insert into product_detail values (SEQUENCE_PROD_DETAIL_P_SEQ.nextval, 8, 2, '레트로 클립 스탠드', 25000);

COMMIT;
--009
insert into product_detail values (SEQUENCE_PROD_DETAIL_P_SEQ.nextval, 9, 3, '선택하지 않음', 0);
insert into product_detail values (SEQUENCE_PROD_DETAIL_P_SEQ.nextval, 9, 3, '어뎁터 5V 2A + 3,000원', 3000);
insert into product_detail values (SEQUENCE_PROD_DETAIL_P_SEQ.nextval, 9, 3, 'AAA건전지(2알) + 1000원', 1000);

COMMIT;