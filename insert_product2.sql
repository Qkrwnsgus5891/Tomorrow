--furniture 7,8,9

insert into product values (SEQUENCE_PRODUCT_P_NO.nextval, 'DF동서가구', '[오늘의딜] 디아 LED 편백선반 헤드 침대 (매트포함) SS/Q 3colors', 'upload/images/product/furniture/content/fabric_c7_1.jpg', 299000, 1);
insert into product values (SEQUENCE_PRODUCT_P_NO.nextval, '휴도', '편안한 제주 필로우탑 본넬스프링 침대 매트리스 (싱글/슈퍼싱글/퀸/킹)', 'upload/images/product/furniture/content/fabric_c8_1.jpg', 109000, 1);
insert into product values (SEQUENCE_PRODUCT_P_NO.nextval, '먼데이하우스', '당일출고 호텔식 프리미엄 독립 포켓스프링 필로우탑 매트리스(25cm)', 'upload/images/product/furniture/content/fabric_c9_1.jpg', 107900, 1);

COMMIT;
--furniture 7
insert into product_detail values (SEQUENCE_PROD_DETAIL_P_SEQ.nextval, 16, 1, '오크', 0);
insert into product_detail values (SEQUENCE_PROD_DETAIL_P_SEQ.nextval, 16, 1, '화이트', 0);
insert into product_detail values (SEQUENCE_PROD_DETAIL_P_SEQ.nextval, 16, 1, '그레이', 0);

insert into product_detail values (SEQUENCE_PROD_DETAIL_P_SEQ.nextval, 16, 2, 'SS 침대 + 본넬양면', 0);
insert into product_detail values (SEQUENCE_PROD_DETAIL_P_SEQ.nextval, 16, 2, 'SS 침대 + 독립포켓', 40000);
insert into product_detail values (SEQUENCE_PROD_DETAIL_P_SEQ.nextval, 16, 2, 'SS 침대 + 9존 독립', 70000);
insert into product_detail values (SEQUENCE_PROD_DETAIL_P_SEQ.nextval, 16, 2, 'Q 침대 + 본넬양면', 70000);
insert into product_detail values (SEQUENCE_PROD_DETAIL_P_SEQ.nextval, 16, 2, 'Q 침대 + 독립포켓', 100000);
insert into product_detail values (SEQUENCE_PROD_DETAIL_P_SEQ.nextval, 16, 2, 'Q 침대 + 9존 독립', 140000);
insert into product_img values (SEQUENCE_PRODUCT_IMG_NO.nextval, 16, 'upload/images/product/detail/furniture_d7.jpg', 124);

commit;
--furniture 8
insert into product_detail values (SEQUENCE_PROD_DETAIL_P_SEQ.nextval, 17, 1, '블랙', 0);
insert into product_detail values (SEQUENCE_PROD_DETAIL_P_SEQ.nextval, 17, 1, '실버 베이지', 0);
insert into product_detail values (SEQUENCE_PROD_DETAIL_P_SEQ.nextval, 17, 1, '그레이', 0);

insert into product_detail values (SEQUENCE_PROD_DETAIL_P_SEQ.nextval, 17, 2, 'S 싱글', 0);
insert into product_detail values (SEQUENCE_PROD_DETAIL_P_SEQ.nextval, 17, 2, 'SS 슈퍼싱글', 10000);
insert into product_detail values (SEQUENCE_PROD_DETAIL_P_SEQ.nextval, 17, 2, 'Q 퀸', 50000);
insert into product_detail values (SEQUENCE_PROD_DETAIL_P_SEQ.nextval, 17, 2, 'K 킹', 60000);
insert into product_img values (SEQUENCE_PRODUCT_IMG_NO.nextval, 17, 'upload/images/product/detail/furniture_d8.jpg', 124);

commit;
--furniture 9
insert into product_detail values (SEQUENCE_PROD_DETAIL_P_SEQ.nextval, 18, 2, 'S 싱글', 0);
insert into product_detail values (SEQUENCE_PROD_DETAIL_P_SEQ.nextval, 18, 2, 'SS 슈퍼싱글', 10500);
insert into product_detail values (SEQUENCE_PROD_DETAIL_P_SEQ.nextval, 18, 2, 'Q 퀸', 42500);
insert into product_img values (SEQUENCE_PRODUCT_IMG_NO.nextval, 18, 'upload/images/product/detail/furniture_d9.jpg', 124);

commit;

insert into product values (SEQUENCE_PRODUCT_P_NO.nextval, '까르데코', '[오늘의딜]메리미 이중레이스 암막커튼 3size 3colors', '<p><img alt="" src="http://localhost:8090/house/upload/images/product/content/fabric_c7_1.jpg" /></p>', 49900, 2);
insert into product values (SEQUENCE_PRODUCT_P_NO.nextval, '마틸라', '[5%쿠폰] 최고급 코마사 도즈 60수 고밀도순면 이불커버(세트) 10colors',  
'<p><img alt="" src="http://localhost:8090/house/upload/images/product/content/furniture_c8_1.jpg" /></p>
<p><img alt="" src="http://localhost:8090/house/upload/images/product/content/furniture_c8_2.jpg" /></p>
<p><img alt="" src="http://localhost:8090/house/upload/images/product/content/furniture_c8_3.jpg" /></p>'
, 46500, 2);
insert into product values (SEQUENCE_PRODUCT_P_NO.nextval, '심플먼트', '이지케어 워셔블 슬러브 러그 (7color/4size)',  
'<p><img alt="" src="http://localhost:8090/house/upload/images/product/content/fabric_c9_1.jpg" /></p>
<p><img alt="" src="http://localhost:8090/house/upload/images/product/content/fabric_c9_2.jpg" /></p>'
, 29800, 2);

--fabric7
insert into product_detail values (SEQUENCE_PROD_DETAIL_P_SEQ.nextval, 19, 1, '미드 그레이', 0);
insert into product_detail values (SEQUENCE_PROD_DETAIL_P_SEQ.nextval, 19, 1, '라이트 그레이', 0);
insert into product_detail values (SEQUENCE_PROD_DETAIL_P_SEQ.nextval, 19, 1, '테콰이즈 블루', 0);

insert into product_detail values (SEQUENCE_PROD_DETAIL_P_SEQ.nextval, 19, 2, '소형', 0);
insert into product_detail values (SEQUENCE_PROD_DETAIL_P_SEQ.nextval, 19, 2, '중형', 10000);
insert into product_detail values (SEQUENCE_PROD_DETAIL_P_SEQ.nextval, 19, 2, '대형', 50000);
insert into product_detail values (SEQUENCE_PROD_DETAIL_P_SEQ.nextval, 19, 2, '특대형', 60000);
insert into product_img values (SEQUENCE_PRODUCT_IMG_NO.nextval, 19, 'upload/images/product/detail/fabric_d7.jpg', 124);

--fabric8
insert into product_detail values(SEQUENCE_PROD_DETAIL_P_SEQ.nextval, 20, 1, '01. 아이보리(35,500 ~ 88,900원)', 0);
insert into product_detail values(SEQUENCE_PROD_DETAIL_P_SEQ.nextval, 20, 1, '02. 크림(35,500 ~ 88,900원)', 0);
insert into product_detail values(SEQUENCE_PROD_DETAIL_P_SEQ.nextval, 20, 1, '03. 바닐라라떼(35,500 ~ 88,900원)', 0);
insert into product_detail values(SEQUENCE_PROD_DETAIL_P_SEQ.nextval, 20, 1, '04. 파우더핑크(35,500 ~ 88,900원)', 0);
insert into product_detail values(SEQUENCE_PROD_DETAIL_P_SEQ.nextval, 20, 1, '05. 머스터드(35,500 ~ 88,900원)', 0);

insert into product_detail values(SEQUENCE_PROD_DETAIL_P_SEQ.nextval, 20, 2, 'SS이불베개세트(35,500원)', 0);
insert into product_detail values(SEQUENCE_PROD_DETAIL_P_SEQ.nextval, 20, 2, 'SS이불패드세트(57,900원)', 22400);
insert into product_detail values(SEQUENCE_PROD_DETAIL_P_SEQ.nextval, 20, 2, 'Q이불베개세트(57,900원)', 22400);
insert into product_detail values(SEQUENCE_PROD_DETAIL_P_SEQ.nextval, 20, 2, 'Q이불패드세트(83,900원)', 48400);
insert into product_detail values(SEQUENCE_PROD_DETAIL_P_SEQ.nextval, 20, 2, 'K이불패드세트(88,900원)', 53400);

insert into product_detail values(SEQUENCE_PROD_DETAIL_P_SEQ.nextval, 20, 3, 'SS홀매트리스커버 스테이 아이보리', 39900);
insert into product_detail values(SEQUENCE_PROD_DETAIL_P_SEQ.nextval, 20, 3, 'SS홀매트리스커버 스테이 크림', 39900);
insert into product_detail values(SEQUENCE_PROD_DETAIL_P_SEQ.nextval, 20, 3, 'SS홀매트리스커버 스테이 바닐라라떼', 39900);
insert into product_detail values(SEQUENCE_PROD_DETAIL_P_SEQ.nextval, 20, 3, 'Q홀매트리스커버 스테이 아이보리', 39900);
insert into product_detail values(SEQUENCE_PROD_DETAIL_P_SEQ.nextval, 20, 3, 'Q홀매트리스커버 스테이 크림', 39900);
insert into product_detail values(SEQUENCE_PROD_DETAIL_P_SEQ.nextval, 20, 3, 'Q홀매트리스커버 스테이 바닐라라떼', 39900);
insert into product_img values (SEQUENCE_PRODUCT_IMG_NO.nextval, 20, 'upload/images/product/detail/fabric_d8.jpg', 124);

--fabric9
insert into product_detail values (SEQUENCE_PROD_DETAIL_P_SEQ.nextval, 21, 1, '크림 베이지', 0);
insert into product_detail values (SEQUENCE_PROD_DETAIL_P_SEQ.nextval, 21, 1, '베이비 핑크', 0);
insert into product_detail values (SEQUENCE_PROD_DETAIL_P_SEQ.nextval, 21, 1, '화이트', 0);

insert into product_detail values (SEQUENCE_PROD_DETAIL_P_SEQ.nextval, 21, 2, '264 사이즈', 0);
insert into product_detail values (SEQUENCE_PROD_DETAIL_P_SEQ.nextval, 21, 2, '360 사이즈', 15000);
insert into product_detail values (SEQUENCE_PROD_DETAIL_P_SEQ.nextval, 21, 2, '520 사이즈', 40000);
insert into product_img values (SEQUENCE_PRODUCT_IMG_NO.nextval, 21, 'upload/images/product/detail/fabric_d9.jpg', 124);

commit;
----------------------------

--light 7,8,9
insert into product values (SEQUENCE_PRODUCT_P_NO.nextval, '베스트조명', '파파 LED 와이드스탠드_2colors',  '<p><img alt="" src="http://localhost:8090/house/upload/images/product/content/light_c7_1.jpg" /></p>', 36900, 3);
insert into product values (SEQUENCE_PRODUCT_P_NO.nextval, '이케아', '(안전포장) LERSTA 레르스타 장스탠드_3colors', '<p><img alt="" src="http://localhost:8090/house/upload/images/product/content/light_c8_1.jpg" /></p>', 31900, 3);
insert into product values (SEQUENCE_PRODUCT_P_NO.nextval, '베스트조명', '파파 LED 와이드스탠드 800B(스탠드타입)_2colors', '<p><img alt="" src="http://localhost:8090/house/upload/images/product/content/light_c9_1.jpg" /></p>', 49190, 3);


--light7
insert into product_detail values (SEQUENCE_PROD_DETAIL_P_SEQ.nextval, 22, 1, '화이트', 0);
insert into product_detail values (SEQUENCE_PROD_DETAIL_P_SEQ.nextval, 22, 1, '블랙', 0);

insert into product_detail values (SEQUENCE_PROD_DETAIL_P_SEQ.nextval, 22, 2, '와이드 스탠드 500S', 0);
insert into product_detail values (SEQUENCE_PROD_DETAIL_P_SEQ.nextval, 22, 2, '와이드 스탠드 800S', 10000);
insert into product_img values (SEQUENCE_PRODUCT_IMG_NO.nextval, 22, 'upload/images/product/detail/light_d7.jpg', 124);


--light8
insert into product_detail values (SEQUENCE_PROD_DETAIL_P_SEQ.nextval, 23, 1, '화이트', 0);
insert into product_detail values (SEQUENCE_PROD_DETAIL_P_SEQ.nextval, 23, 1, '실버', 0);
insert into product_detail values (SEQUENCE_PROD_DETAIL_P_SEQ.nextval, 23, 1, '그린', 0);

insert into product_detail values (SEQUENCE_PROD_DETAIL_P_SEQ.nextval, 23, 3, '선택 안함', 0);
insert into product_detail values (SEQUENCE_PROD_DETAIL_P_SEQ.nextval, 23, 3, '콥플라 3구 USB 충전기', 12900);
insert into product_detail values (SEQUENCE_PROD_DETAIL_P_SEQ.nextval, 23, 3, '뢰르뷔 3구 USB 충전기 + 화이트 집게', 17900);
insert into product_detail values (SEQUENCE_PROD_DETAIL_P_SEQ.nextval, 23, 3, '콘플라 3구 멀티탭', 6900);
insert into product_detail values (SEQUENCE_PROD_DETAIL_P_SEQ.nextval, 23, 3, '콘플라 6구 멀티탭', 9900);
insert into product_img values (SEQUENCE_PRODUCT_IMG_NO.nextval, 22, 'upload/images/product/detail/light_d8.jpg', 124);

--light9
insert into product_detail values (SEQUENCE_PROD_DETAIL_P_SEQ.nextval, 24, 1, '화이트', 0);
insert into product_detail values (SEQUENCE_PROD_DETAIL_P_SEQ.nextval, 24, 1, '블랙', 0);

insert into product_detail values (SEQUENCE_PROD_DETAIL_P_SEQ.nextval, 24, 2, '와이드 스탠드 500S', 0);
insert into product_detail values (SEQUENCE_PROD_DETAIL_P_SEQ.nextval, 24, 2, '와이드 스탠드 800S', 10000);
insert into product_img values (SEQUENCE_PRODUCT_IMG_NO.nextval, 24, 'upload/images/product/detail/light_d9.jpg', 124);

--light 10,11,12
insert into product values (SEQUENCE_PRODUCT_P_NO.nextval, '올루미', '오로라 단스탠드(전구 증정 이벤트)',  '<p><img alt="" src="http://localhost:8090/house/upload/images/product/content/light_c10_1.jpg" /></p>', 17900, 3);
insert into product values (SEQUENCE_PRODUCT_P_NO.nextval, '앤트레디션', '[해외] 플라워팟 포터블 테이블램프 VP9', '<p><img alt="" src="http://localhost:8090/house/upload/images/product/content/light_c11_1.jpg" /></p>', 203000, 3);
insert into product values (SEQUENCE_PRODUCT_P_NO.nextval, '루이스폴센', '[해외] PH5 펜던트 조명 (관부가세 포함)', '<p><img alt="" src="http://localhost:8090/house/upload/images/product/content/light_c12_1.jpg" /></p>', 849000, 3);

--lighr 10
insert into product_detail values (SEQUENCE_PROD_DETAIL_P_SEQ.nextval, 25, 1, '블랙', 0);
insert into product_detail values (SEQUENCE_PROD_DETAIL_P_SEQ.nextval, 25, 1, '실버 베이지', 0);
insert into product_detail values (SEQUENCE_PROD_DETAIL_P_SEQ.nextval, 25, 1, '화이트', 0);
insert into product_img values (SEQUENCE_PRODUCT_IMG_NO.nextval, 25, 'upload/images/product/detail/light_d10.jpg', 124);


--lighr 11
insert into product_detail values (SEQUENCE_PROD_DETAIL_P_SEQ.nextval, 26, 1, '블랙', 0);
insert into product_detail values (SEQUENCE_PROD_DETAIL_P_SEQ.nextval, 26, 1, '실버 베이지', 0);
insert into product_detail values (SEQUENCE_PROD_DETAIL_P_SEQ.nextval, 26, 1, '화이트', 0);
insert into product_img values (SEQUENCE_PRODUCT_IMG_NO.nextval, 26, 'upload/images/product/detail/light_d11.jpg', 124);


--lighr 12
insert into product_detail values (SEQUENCE_PROD_DETAIL_P_SEQ.nextval, 27, 1, '블랙', 0);
insert into product_detail values (SEQUENCE_PROD_DETAIL_P_SEQ.nextval, 27, 1, '실버 베이지', 0);
insert into product_detail values (SEQUENCE_PROD_DETAIL_P_SEQ.nextval, 27, 1, '화이트', 0);
insert into product_img values (SEQUENCE_PRODUCT_IMG_NO.nextval, 27, 'upload/images/product/detail/light_d12.jpg', 124);

commit;