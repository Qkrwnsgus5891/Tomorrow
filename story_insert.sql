--B_NO       NOT NULL NUMBER         
--B_TITLE    NOT NULL VARCHAR2(100)  
--B_CONTENT  NOT NULL VARCHAR2(4000) 
--B_WRITER   NOT NULL VARCHAR2(20)   
--M_ID       NOT NULL VARCHAR2(20)   
--B_CNT      NOT NULL NUMBER         
--B_DATE     NOT NULL TIMESTAMP(6)   
--P_NO       NOT NULL NUMBER         
--B_NY       NOT NULL VARCHAR2(1)    
--B_IMG_PATH NOT NULL VARCHAR2(300)
SET DEFINE OFF;
INSERT INTO STORY VALUES (SEQUENCE_STORY_B_NO.nextval,
                        '첫 자취방, 꾸미기 로망 성공적✨', 
                        '<p><img alt="" src="http://localhost:8090/house/upload/images/story/content/s_1_c1.png" style="height:781px; width:750px" /></p>
                        <p>&nbsp;</p>
                        <p><img alt="" src="http://localhost:8090/house/upload/images/story/content/s_1_c2.png" style="height:750px; width:750px" /></p>
                        <p>&nbsp;</p>
                        <p><img alt="" src="http://localhost:8090/house/upload/images/story/content/s_1_c3.png" style="height:755px; width:750px" /></p>
                        <p>&nbsp;</p>
                        <p>첫 자취방, 꾸미기 로망 성공적✨</p>',
                        '민준123',
                        'test001',
                        default, 
                        default,
                        '5',
                        default,
                        'upload/images/story/detail/s_1_d.png');
INSERT INTO STORY VALUES (SEQUENCE_STORY_B_NO.nextval,
                        '내 취향으로 가득 채우는 작고 소중한 공간🌿', 
                        '<p><img alt="" src="http://localhost:8090/house/upload/images/story/content/s_2_c1.png" style="height:932px; width:750px" /></p>
                        <p>&nbsp;</p>
                        <p>내 취향으로 가득 채우는 작고 소중한 공간🌿</p>',
                        '서연123',
                        'test002',
                        default, 
                        default,
                        '5',
                        default,
                        'upload/images/story/detail/s_2_d.png');
INSERT INTO STORY VALUES (SEQUENCE_STORY_B_NO.nextval,
                        '아직 완벽하지 않은 내 공간이지만 서서히 채우는 중🤍', 
                        '<p><img alt="" src="http://localhost:8090/house/upload/images/story/content/s_3_c1.png" style="height:1000px; width:750px" /></p>
                        <p>&nbsp;</p>
                        <p>아직 완벽하지 않은 내 공간이지만 서서히 채우는 중🤍</p>',
                        '도윤123',
                        'test003',
                        default, 
                        default,
                        '5',
                        default,
                        'upload/images/story/detail/s_3_d.png');
INSERT INTO STORY VALUES (SEQUENCE_STORY_B_NO.nextval,
                        '드디어 도착한 필로우 커버와 함께', 
                        '<p><img alt="" src="http://localhost:8090/house/upload/images/story/content/s_4_c1.png" style="height:1000px; width:750px" /></p>
                        <p>&nbsp;</p>
                        <p>드디어 도착한 필로우 커버와 함께</p>
                        <p>&nbsp;</p>
                        <p>&nbsp;</p>
                        <p><img alt="" src="http://localhost:8090/house/upload/images/story/content/s_4_c2.png" style="height:1000px; width:750px" /></p>
                        <p>&nbsp;</p>
                        <p>소리없는 아우성 같은 섹시한 모노톤</p>
                        <p>&nbsp;</p>
                        <p>&nbsp;</p>
                        <p><img alt="" src="http://localhost:8090/house/upload/images/story/content/s_4_c3.png" style="height:1000px; width:750px" /></p>
                        <p>&nbsp;</p>
                        <p>New Cable</p>
                        <p>&nbsp;</p>
                        <p>&nbsp;</p>
                        <p><img alt="" src="http://localhost:8090/house/upload/images/story/content/s_4_c4.png" style="height:1000px; width:750px" /></p>
                        <p>&nbsp;</p>
                        <p>옹지엠므의 디자인 케이블까지</p>
                        <p>&nbsp;</p>
                        <p>&nbsp;</p>
                        <p><img alt="" src="http://localhost:8090/house/upload/images/story/content/s_4_c5.png" style="height:1000px; width:750px" /></p>
                        <p>&nbsp;</p>
                        <p>바쁜 현대삶 잠은 잘 자야죠</p>',
                        '지우123',
                        'test004',
                        default, 
                        default,
                        '5',
                        default,
                        'upload/images/story/detail/s_4_d.png');
INSERT INTO STORY VALUES (SEQUENCE_STORY_B_NO.nextval,
                        '날씨 애매할때는 간절기 차렵', 
                        '<p><img alt="" src="http://localhost:8090/house/upload/images/story/content/s_5_c1.png" style="height:938px; width:750px" /></p>
                        <p>&nbsp;</p>
                        <p><img alt="" src="http://localhost:8090/house/upload/images/story/content/s_5_c2.png" style="height:938px; width:750px" /></p>
                        <p>&nbsp;</p>
                        <p><img alt="" src="http://localhost:8090/house/upload/images/story/content/s_5_c3.png" style="height:938px; width:750px" /></p>
                        <p>&nbsp;</p>
                        <p>날씨 애매할때는 간절기 차렵</p>',
                        '민서123',
                        'test005',
                        default, 
                        default,
                        '5',
                        default,
                        'upload/images/story/detail/s_5_d.png');
                        
commit;