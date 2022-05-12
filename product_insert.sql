insert into product_category values (1, 'furniture');
insert into product_category values (2, 'fabric');
insert into product_category values (3, 'light');

insert into product values (SEQUENCE_PRODUCT_P_NO.nextval, '저스트슬립', '저스트슬립 Air/Deep 매트리스 4types S/SS/Q', 'upload/images/product/furniture/content/f_c_1.jpg', 92900, 1);
insert into product values (SEQUENCE_PRODUCT_P_NO.nextval, '에어론', '리버서블 오피스데스크 6size 2colors', 'upload/images/product/furniture/content/f_c_2.jpg', 39800, 1);
insert into product values (SEQUENCE_PRODUCT_P_NO.nextval, '도모디자인', '(후기이벤트) 1+1커버증정 기능성/워셔블 패브릭소파 4인/6인/8인', 'upload/images/product/furniture/content/f_c_3.jpg', 1739000, 1);

COMMIT;

insert into product values (SEQUENCE_PRODUCT_P_NO.nextval, '아엠홈', '[주말특가][맞춤] 비침없는 화이트 도톰 레이스/쉬폰커튼(나비주름/핀형/봉집)', 'upload/images/product/pabric/content/p_c_4.jpg', 19900, 2);
insert into product values (SEQUENCE_PRODUCT_P_NO.nextval, '헬로우슬립', '부드러운 카스테라 항균 옥수수솜 봄이불 차렵이불세트', 'upload/images/product/pabric/content/p_c_5.jpg', 37900, 2);
insert into product values (SEQUENCE_PRODUCT_P_NO.nextval, '코튼리빙', '40수 코마사 호텔수건 200g 10장', 'upload/images/product/pabric/content/p_c_6.jpg', 28500, 2);

insert into product values (SEQUENCE_PRODUCT_P_NO.nextval, '티피링크', 'Tapo L530E 스마트 멀티 컬러 전구 IoT LED 조명', 'upload/images/product/light/content/l_c_7.jpg', 14000, 3);
insert into product values (SEQUENCE_PRODUCT_P_NO.nextval, '에이모노', '빈티지 레트로 스탠드_4types', 'upload/images/product/light/content/l_c_8.jpg', 29900, 3);
insert into product values (SEQUENCE_PRODUCT_P_NO.nextval, '레나에너지', '우주인 오로라 무드등 은하수 조명 LN-777', 'upload/images/product/light/content/l_c_9.jpg', 22800, 3);

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

insert into product_img values (SEQUENCE_PRODUCT_IMG_NO.nextval, 1, 'upload/images/product/furniture/detail/f_d_1.jpg', 124);
insert into product_img values (SEQUENCE_PRODUCT_IMG_NO.nextval, 2, 'upload/images/product/furniture/detail/f_d_2.jpg', 124);
insert into product_img values (SEQUENCE_PRODUCT_IMG_NO.nextval, 3, 'upload/images/product/furniture/detail/f_d_3.jpg', 124);

insert into product_img values (SEQUENCE_PRODUCT_IMG_NO.nextval, 4, 'upload/images/product/pabric/detail/p_d_4.jpg', 124);
insert into product_img values (SEQUENCE_PRODUCT_IMG_NO.nextval, 5, 'upload/images/product/pabric/detail/p_d_5.jpg', 124);
insert into product_img values (SEQUENCE_PRODUCT_IMG_NO.nextval, 6, 'upload/images/product/pabric/detail/p_d_6.jpg', 124);

insert into product_img values (SEQUENCE_PRODUCT_IMG_NO.nextval, 7, 'upload/images/product/light/detail/l_d_7.jpg', 124);
insert into product_img values (SEQUENCE_PRODUCT_IMG_NO.nextval, 8, 'upload/images/product/light/detail/l_d_8.jpg', 124);
insert into product_img values (SEQUENCE_PRODUCT_IMG_NO.nextval, 9, 'upload/images/product/light/detail/l_d_9.jpg', 124);
commit;

-- 색상/사이즈/추가상품 (1/2/3)
select * from product;
-- furniture 4
insert into product values(SEQUENCE_PRODUCT_P_NO.nextval, '오트밀하우스', '[오집배송] 인기 급증 BEST 침대/소파/식탁/서랍장/거울/드레스룸/거실장 모음전', '상품 정보 이미지 경로', 155000, 1);
insert into product_detail values (SEQUENCE_PROD_DETAIL_P_SEQ.nextval, 10, 1, '아이보리(155,000원)', 0);
insert into product_detail values (SEQUENCE_PROD_DETAIL_P_SEQ.nextval, 10, 1, '라이트그레이(155,000원)', 0);
insert into product_detail values (SEQUENCE_PROD_DETAIL_P_SEQ.nextval, 10, 1, '다크그레이(155,000원)', 0);
insert into product_detail values (SEQUENCE_PROD_DETAIL_P_SEQ.nextval, 10, 3, '버디 패브릭 좌식 소파 베드 코너형 세트 3colors', 0);
insert into product_detail values (SEQUENCE_PROD_DETAIL_P_SEQ.nextval, 10, 3, '포아 아쿠아텍스 패브릭 3인 소파 2colors(스툴 기본포함)', 134000);
insert into product_detail values (SEQUENCE_PROD_DETAIL_P_SEQ.nextval, 10, 3, '루오 아쿠아텍스 패브릭 3인 소파 2colors(스툴 기본포함, 쿠션증정)', 144000);
insert into product_detail values (SEQUENCE_PROD_DETAIL_P_SEQ.nextval, 10, 3, '토미 헤드리스 4단 멀티 수납 침대(매트 제외) SS/Q', 114000);
insert into product_img values (SEQUENCE_PRODUCT_IMG_NO.nextval, 10, 'upload/images/product/detail/furniture_d4.jpg', 124);
commit;

-- furniture 5
insert into product values (SEQUENCE_PRODUCT_P_NO.nextval, '퀵슬립', 'Q4 유로탑 롤팩 매트리스 2size', '상품 정보 이미지 경로', 284900, 1);
insert into product_detail values(SEQUENCE_PROD_DETAIL_P_SEQ.nextval, 11, 2, 'SS 슈퍼싱글(284,900원)', 0);
insert into product_detail values(SEQUENCE_PROD_DETAIL_P_SEQ.nextval, 11, 2, 'Q 퀸(334,900원)', 50000);
insert into product_detail values(SEQUENCE_PROD_DETAIL_P_SEQ.nextval, 11, 3, '밴드형 매트리스 방수커버 슈퍼싱글 사이즈(전용제품)', 34900);
insert into product_detail values(SEQUENCE_PROD_DETAIL_P_SEQ.nextval, 11, 2, '밴드형 매트리스 방수커버 퀸 사이즈(전용제품)', 44900);
insert into product_detail values(SEQUENCE_PROD_DETAIL_P_SEQ.nextval, 11, 2, '밴드형 매트리스 그레이 순면커버 슈퍼싱글 사이즈(전용제품)', 52900);
insert into product_detail values(SEQUENCE_PROD_DETAIL_P_SEQ.nextval, 11, 2, '밴드형 매트리스 그레이 순면커버 퀸 사이즈(전용제품)', 62900);
insert into product_img values (SEQUENCE_PRODUCT_IMG_NO.nextval, 11, 'upload/images/product/detail/furniture_d5.jpg', 124);
commit;

-- furniture 6
insert into product values (SEQUENCE_PRODUCT_P_NO.nextval, '큐브', '[드레스룸BEST] 맞춤제작 시스템 드레스룸 (시공무료) 9colors', '상품 정보 이미지 경로', 8200, 1);
insert into product_detail values(SEQUENCE_PROD_DETAIL_P_SEQ.nextval, 12, 1, '프레임 블랙/선반 화이트(8,200원)', 0);
insert into product_detail values(SEQUENCE_PROD_DETAIL_P_SEQ.nextval, 12, 1, '프레임 블랙/선반 월넛(8,200원)', 0);
insert into product_detail values(SEQUENCE_PROD_DETAIL_P_SEQ.nextval, 12, 1, '프레임 블랙/선반 네추럴(8,200원)', 0);
insert into product_detail values(SEQUENCE_PROD_DETAIL_P_SEQ.nextval, 12, 1, '프레임 실버/선반 화이트(8,200원)', 0);
insert into product_detail values(SEQUENCE_PROD_DETAIL_P_SEQ.nextval, 12, 1, '프레임 실버/선반 월넛(8,200원)', 0);
insert into product_detail values(SEQUENCE_PROD_DETAIL_P_SEQ.nextval, 12, 1, '프레임 실버/선반 네추럴(8,200원)', 0);
insert into product_detail values(SEQUENCE_PROD_DETAIL_P_SEQ.nextval, 12, 1, '프레임 화이트/선반 화이트(8,200원)', 0);
insert into product_detail values(SEQUENCE_PROD_DETAIL_P_SEQ.nextval, 12, 1, '프레임 화이트/선반 월넛(8,200원)', 0);
insert into product_detail values(SEQUENCE_PROD_DETAIL_P_SEQ.nextval, 12, 1, '프레임 화이트/선반 네추럴(8,200원)', 0);
insert into product_detail values(SEQUENCE_PROD_DETAIL_P_SEQ.nextval, 12, 3, '아일랜드장 화이트', 189000);
insert into product_detail values(SEQUENCE_PROD_DETAIL_P_SEQ.nextval, 12, 3, '아일랜드장 월넛', 189000);
insert into product_detail values(SEQUENCE_PROD_DETAIL_P_SEQ.nextval, 12, 3, '아일랜드장 네추럴', 189000);
insert into product_detail values(SEQUENCE_PROD_DETAIL_P_SEQ.nextval, 12, 3, '3단서랍장 화이트', 129000);
insert into product_detail values(SEQUENCE_PROD_DETAIL_P_SEQ.nextval, 12, 3, '3단서랍장 월넛', 129000);
insert into product_detail values(SEQUENCE_PROD_DETAIL_P_SEQ.nextval, 12, 3, '3단서랍장 네추럴', 129000);
insert into product_detail values(SEQUENCE_PROD_DETAIL_P_SEQ.nextval, 12, 3, '공간 박스 화이트', 99000);
insert into product_detail values(SEQUENCE_PROD_DETAIL_P_SEQ.nextval, 12, 3, '공간 박스 월넛', 99000);
insert into product_detail values(SEQUENCE_PROD_DETAIL_P_SEQ.nextval, 12, 3, '공간 박스 네추럴', 99000);
insert into product_img values (SEQUENCE_PRODUCT_IMG_NO.nextval, 12, 'upload/images/product/detail/furniture_d6.jpg', 124);
commit;

-- fabric 4
insert into product values (SEQUENCE_PRODUCT_P_NO.nextval, '마틸라', '최고급 코마사 도즈60수 고밀도순면 차렵이불세트10color', '상품 정보 이미지 경로', 61900, 2);
insert into product_detail values(SEQUENCE_PROD_DETAIL_P_SEQ.nextval, 13, 1, '크림', 0);
insert into product_detail values(SEQUENCE_PROD_DETAIL_P_SEQ.nextval, 13, 1, '린넨 베이지', 0);
insert into product_detail values(SEQUENCE_PROD_DETAIL_P_SEQ.nextval, 13, 1, '밀크티', 0);
insert into product_detail values(SEQUENCE_PROD_DETAIL_P_SEQ.nextval, 13, 1, '버터', 0);
insert into product_detail values(SEQUENCE_PROD_DETAIL_P_SEQ.nextval, 13, 1, '밀크로즈', 0);
insert into product_detail values(SEQUENCE_PROD_DETAIL_P_SEQ.nextval, 13, 1, '라벤더', 0);
insert into product_detail values(SEQUENCE_PROD_DETAIL_P_SEQ.nextval, 13, 2, 'SS이불베개세트(61,900원)', 0);
insert into product_detail values(SEQUENCE_PROD_DETAIL_P_SEQ.nextval, 13, 2, 'SS이불패드세트(98,900원)', 37000);
insert into product_detail values(SEQUENCE_PROD_DETAIL_P_SEQ.nextval, 13, 2, 'Q이불베개세트(89,500원)', 27600);
insert into product_detail values(SEQUENCE_PROD_DETAIL_P_SEQ.nextval, 13, 2, 'Q이불패드세트(131,900원)', 70000);
insert into product_detail values(SEQUENCE_PROD_DETAIL_P_SEQ.nextval, 13, 2, 'K이불패드세트(139,900원)', 78000);
insert into product_detail values(SEQUENCE_PROD_DETAIL_P_SEQ.nextval, 13, 3, 'SS홀매트리스커버 도즈 크림', 39900);
insert into product_detail values(SEQUENCE_PROD_DETAIL_P_SEQ.nextval, 13, 3, 'SS홀매트리스커버 도즈 린넨 베이지', 39900);
insert into product_detail values(SEQUENCE_PROD_DETAIL_P_SEQ.nextval, 13, 3, 'SS홀매트리스커버 도즈 밀크티', 39900);
insert into product_detail values(SEQUENCE_PROD_DETAIL_P_SEQ.nextval, 13, 3, 'SS홀매트리스커버 도즈 버터', 39900);
insert into product_detail values(SEQUENCE_PROD_DETAIL_P_SEQ.nextval, 13, 3, 'SS홀매트리스커버 도즈 브릭', 39900);
insert into product_detail values(SEQUENCE_PROD_DETAIL_P_SEQ.nextval, 13, 3, 'SS홀매트리스커버 도즈 매트네이비', 39900);
insert into product_detail values(SEQUENCE_PROD_DETAIL_P_SEQ.nextval, 13, 3, 'SS홀매트리스커버 도즈 화이트', 39900);
insert into product_detail values(SEQUENCE_PROD_DETAIL_P_SEQ.nextval, 13, 3, 'Q홀매트리스커버 도즈 크림', 39900);
insert into product_detail values(SEQUENCE_PROD_DETAIL_P_SEQ.nextval, 13, 3, 'Q홀매트리스커버 도즈 린넨 베이지', 39900);
insert into product_detail values(SEQUENCE_PROD_DETAIL_P_SEQ.nextval, 13, 3, 'Q홀매트리스커버 도즈 밀크티', 39900);
insert into product_detail values(SEQUENCE_PROD_DETAIL_P_SEQ.nextval, 13, 3, 'Q홀매트리스커버 도즈 버터', 39900);
insert into product_detail values(SEQUENCE_PROD_DETAIL_P_SEQ.nextval, 13, 3, 'Q홀매트리스커버 도즈 브릭', 39900);
insert into product_detail values(SEQUENCE_PROD_DETAIL_P_SEQ.nextval, 13, 3, 'Q홀매트리스커버 도즈 매트네이비', 39900);
insert into product_detail values(SEQUENCE_PROD_DETAIL_P_SEQ.nextval, 13, 3, 'Q홀매트리스커버 도즈 화이트', 39900);
insert into product_img values (SEQUENCE_PRODUCT_IMG_NO.nextval, 13, 'upload/images/product/detail/fabric_d4.jpg', 124);
commit;

-- fabric 5
insert into product values (SEQUENCE_PRODUCT_P_NO.nextval, '마틸라', '복숭아촉감 보드라운 피치스킨 먼지없는 차렵이불(세트) 10colors', '상품 정보 이미지 경로', 35500, 2);
insert into product_detail values(SEQUENCE_PROD_DETAIL_P_SEQ.nextval, 14, 1, '01. 아이보리(35,500 ~ 88,900원)', 0);
insert into product_detail values(SEQUENCE_PROD_DETAIL_P_SEQ.nextval, 14, 1, '02. 크림(35,500 ~ 88,900원)', 0);
insert into product_detail values(SEQUENCE_PROD_DETAIL_P_SEQ.nextval, 14, 1, '03. 바닐라라떼(35,500 ~ 88,900원)', 0);
insert into product_detail values(SEQUENCE_PROD_DETAIL_P_SEQ.nextval, 14, 1, '04. 파우더핑크(35,500 ~ 88,900원)', 0);
insert into product_detail values(SEQUENCE_PROD_DETAIL_P_SEQ.nextval, 14, 1, '05. 머스터드(35,500 ~ 88,900원)', 0);
insert into product_detail values(SEQUENCE_PROD_DETAIL_P_SEQ.nextval, 14, 2, 'SS이불베개세트(35,500원)', 0);
insert into product_detail values(SEQUENCE_PROD_DETAIL_P_SEQ.nextval, 14, 2, 'SS이불패드세트(57,900원)', 22400);
insert into product_detail values(SEQUENCE_PROD_DETAIL_P_SEQ.nextval, 14, 2, 'Q이불베개세트(57,900원)', 22400);
insert into product_detail values(SEQUENCE_PROD_DETAIL_P_SEQ.nextval, 14, 2, 'Q이불패드세트(83,900원)', 48400);
insert into product_detail values(SEQUENCE_PROD_DETAIL_P_SEQ.nextval, 14, 2, 'K이불패드세트(88,900원)', 53400);
insert into product_detail values(SEQUENCE_PROD_DETAIL_P_SEQ.nextval, 14, 3, 'SS홀매트리스커버 스테이 아이보리', 39900);
insert into product_detail values(SEQUENCE_PROD_DETAIL_P_SEQ.nextval, 14, 3, 'SS홀매트리스커버 스테이 크림', 39900);
insert into product_detail values(SEQUENCE_PROD_DETAIL_P_SEQ.nextval, 14, 3, 'SS홀매트리스커버 스테이 바닐라라떼', 39900);
insert into product_detail values(SEQUENCE_PROD_DETAIL_P_SEQ.nextval, 14, 3, 'Q홀매트리스커버 스테이 아이보리', 39900);
insert into product_detail values(SEQUENCE_PROD_DETAIL_P_SEQ.nextval, 14, 3, 'Q홀매트리스커버 스테이 크림', 39900);
insert into product_detail values(SEQUENCE_PROD_DETAIL_P_SEQ.nextval, 14, 3, 'Q홀매트리스커버 스테이 바닐라라떼', 39900);
insert into product_img values (SEQUENCE_PRODUCT_IMG_NO.nextval, 14, 'upload/images/product/detail/fabric_d5.jpg', 124);
commit;

-- fabric 6
insert into product values (SEQUENCE_PRODUCT_P_NO.nextval, '심플먼트', '셀프 DIY 방염 타일카페트 (50x50cm) 8P/16P', '상품 정보 이미지 경로', 29900, 2);
insert into product_detail values(SEQUENCE_PROD_DETAIL_P_SEQ.nextval, 15, 1, '그레이(CH02)(29,900 ~ 57,900원)', 0);
insert into product_detail values(SEQUENCE_PROD_DETAIL_P_SEQ.nextval, 15, 1, '차콜(CH03)(29,900 ~ 57,900원)', 0);
insert into product_detail values(SEQUENCE_PROD_DETAIL_P_SEQ.nextval, 15, 1, '베이지(CH18)(29,900 ~ 57,900원)', 0);
insert into product_detail values(SEQUENCE_PROD_DETAIL_P_SEQ.nextval, 15, 1, '브라운(CH08)(29,900 ~ 57,900원)', 0);
insert into product_detail values(SEQUENCE_PROD_DETAIL_P_SEQ.nextval, 15, 2, '8p(29,900원)', 0);
insert into product_detail values(SEQUENCE_PROD_DETAIL_P_SEQ.nextval, 15, 2, '16p(57,900원)', 28900);
insert into product_detail values(SEQUENCE_PROD_DETAIL_P_SEQ.nextval, 15, 1, '그레이(CH02)1p', 4100);
insert into product_detail values(SEQUENCE_PROD_DETAIL_P_SEQ.nextval, 15, 1, '차콜(CH03)1p', 4100);
insert into product_detail values(SEQUENCE_PROD_DETAIL_P_SEQ.nextval, 15, 1, '베이지(CH18)1p', 4100);
insert into product_detail values(SEQUENCE_PROD_DETAIL_P_SEQ.nextval, 15, 1, '브라운(CH08)1p', 4100);
insert into product_img values (SEQUENCE_PRODUCT_IMG_NO.nextval, 15, 'upload/images/product/detail/fabric_d6.jpg', 124);


-- light 4,5,6 쪽은 등록 기능으로 구현하기
commit;
