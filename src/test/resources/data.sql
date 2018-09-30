insert into company(id, name, created_at, updated_at)
values
(1, '(주) 허니문 여행사', now(), now());

insert into course(id, title, sub_title, main_color, sub_color, icon_url, description, company_id, created_at, updated_at)
values
(1, 'A코스', '도심, 고궁코스', '#fd7674', '#0cfd7674', 'https://bitbucket.org/opklnm102/mapc-image-storage/raw/6d59d778e643f2a14560b3764184797d7386aec4/icon/ic_course_a.png', '도심, 고궁, 남산코스는 총 22곳의 정류장을 순환하며 원하는 정류장에서 하차하여 자유관람 30분 간격으로 다음 버스를 이용할 수 있습니다.<font color="#fd7674">(예약상황에 따라 배차간격이 25분~40분 간격으로 운행됩니다.)</font>', 1, now(), now()),
(2, 'B코스', '서울파노라마코스', '#528aff', '#0c528aff', 'https://bitbucket.org/opklnm102/mapc-image-storage/raw/6d59d778e643f2a14560b3764184797d7386aec4/icon/ic_course_c.png', '서울의 전경을 한눈에 볼 수 있는 코스로 남산, 한강 등 자연경관과 명동, 홍대와 이대 등 번화한 모습도 볼 수 있습니다. <font color="#fd7674">독일산 하이데커 오픈탑 버스와 미국 정통 트롤리 버스를 동시에 이용할 수 있습니다.</font>', 1, now(), now()),
(3, 'C코스', '어라운드 강남시티투어코스', '#ffc94f', '#0ff6c557', 'https://bitbucket.org/opklnm102/mapc-image-storage/raw/6d59d778e643f2a14560b3764184797d7386aec4/icon/ic_course_b.png', '어라운드 강남시티투어 코스는 총 21곳의 강남일대의 정류장을 순환합니다. K-POP엔터테이먼트사부터 코엑스몰, 올림픽공원까지 다양한 쇼핑과 관광을 즐길 수 있습니다.', 1, now(), now()),
(4, 'D코스', '야경코스', '#5cb760', '#0c65b85f', 'https://bitbucket.org/opklnm102/mapc-image-storage/raw/6d59d778e643f2a14560b3764184797d7386aec4/icon/ic_course_d.png', '한강을 품에 안고 아름다운 조명으로 치장한 서울을 또 다른 모습으로 볼 수 있는 야경코스. <font color="#fd7674">서울시티투어버스를 통해 로맨틱한 여행의 추억을 남기세요.</font>', 1, now(), now());


insert into course_option(id, course_id, option_type, option_value, created_at, updated_at)
values
(1, 1, 'SUMMARY', '{ \"icon_url\":\"http://...\", \"content\":\"성인 18,000원\" }', now(), now()),
(2, 1, 'SUMMARY', '{ \"icon_url\":\"http://...\", \"content\":\"학생(5세-고등학생) 12,000원\"}', now(), now()),
(3, 1, 'ROUTE', '광화문 ↔ 세종문화회관\n배차간격 20분~40분', now(), now()),
(4, 2, 'SUMMARY', '{ \"icon_url\":\"http://...\", \"content\":\"성인 18,000원\" }', now(), now()),
(5, 2, 'SUMMARY', '{ \"icon_url\":\"http://...\", \"content\":\"학생(5세-고등학생) 12,000원\"}', now(), now()),
(6, 2, 'ROUTE', '광화문  ↔  역사박물관\n주말, 연휴 동안 세빛섬 관광 제외', now(), now()),
(7, 3, 'SUMMARY', '{ \"icon_url\":\"http://...\", \"content\":\"성인 18,000원\" }', now(), now()),
(8, 3, 'SUMMARY', '{ \"icon_url\":\"http://...\", \"content\":\"학생(5세-고등학생) 12,000원\"}', now(), now()),
(9, 3, 'ROUTE', '강남역  ↔  삼성 딜라이트\n강남순환코스, 1시간 25분 소요', now(), now()),
(10, 4, 'SUMMARY', '{ \"icon_url\":\"http://...\", \"content\":\"성인 18,000원\" }', now(), now()),
(11, 4, 'SUMMARY', '{ \"icon_url\":\"http://...\", \"content\":\"학생(5세-고등학생) 12,000원\"}', now(), now()),
(12, 4, 'ROUTE', '광화문  ↔  청계광장\n최소 10명 이상일 경우만 출발보장', now(), now());


insert into station(course_id, name, number, latitude, longitude, audio_content, created_at, updated_at)
values
(1, '광화문(기점)', 1, 40.7114005, -74.0086398,'', now(), now()),
(1, '덕수궁', 2, 40.7114005, -74.0086398,'', now(), now()),
(1, '남대문시장', 3, 40.7114005, -74.0086398,'', now(), now()),
(1, '서울역', 4, 40.7114005, -74.0086398,'', now(), now()),
(1, '전쟁기념관(U.S.O)', 5, 40.7114005, -74.0086398,'', now(), now()),
(1, '용산역', 6, 40.7114005, -74.0086398,'', now(), now()),
(1, '국립중앙박물관', 7, 40.7114005, -74.0086398,'', now(), now()),
(1, '이태원', 8, 40.7114005, -74.0086398,'', now(), now()),
(1, '명동', 9, 40.7114005, -74.0086398,'', now(), now()),
(1, '남산골 한옥마을', 10, 40.7114005, -74.0086398,'', now(), now()),
(1, '앰버서더 호텔', 11, 40.7114005, -74.0086398,'', now(), now()),
(1, '신라호텔, 장충단공원', 12, 40.7114005, -74.0086398,'', now(), now()),
(1, 'N서울타워', 13, 40.7114005, -74.0086398,'', now(), now()),
(1, '하얏트호텔', 14, 40.7114005, -74.0086398,'', now(), now()),
(1, '동대문시장(DDP)', 15, 40.7114005, -74.0086398,'', now(), now()),
(1, '대학로', 16, 40.7114005, -74.0086398,'', now(), now()),
(1, '창경궁', 17, 40.7114005, -74.0086398,'', now(), now()),
(1, '창덕궁', 18, 40.7114005, -74.0086398,'', now(), now()),
(1, '인사동', 19, 40.7114005, -74.0086398,'', now(), now()),
(1, '청와대 앞', 20, 40.7114005, -74.0086398,'', now(), now()),
(1, '경복궁, 민속박물관, 현대미술관', 21, 40.7114005, -74.0086398,'', now(), now()),
(1, '세종문화회관', 22, 40.7114005, -74.0086398,'', now(), now()),
(1, '광화문(종점)', 23, 40.7114005, -74.0086398,'', now(), now()),
(2, '광화문', 1, 40.7114005, -74.0086398,'', now(), now()),
(2, '명동', 2, 40.7114005, -74.0086398,'', now(), now()),
(2, '남산 케이블카', 3, 40.7114005, -74.0086398,'', now(), now()),
(2, '힐튼호텔', 4, 40.7114005, -74.0086398,'', now(), now()),
(2, '남산도서관', 5, 40.7114005, -74.0086398,'', now(), now()),
(2, '하얏트호텔', 6, 40.7114005, -74.0086398,'', now(), now()),
(2, '강남역(환승역)', 7, 40.7114005, -74.0086398,'', now(), now()),
(2, '세빛섬', 8, 40.7114005, -74.0086398,'', now(), now()),
(2, '63빌딩, 한강유람선', 9, 40.7114005, -74.0086398,'', now(), now()),
(2, '여의나루역', 10, 40.7114005, -74.0086398,'', now(), now()),
(2, '홍대앞', 11, 40.7114005, -74.0086398,'', now(), now()),
(2, '공항철도 홍대입구역', 12, 40.7114005, -74.0086398,'', now(), now()),
(2, '이대입구', 13, 40.7114005, -74.0086398,'', now(), now()),
(2, '농업박물관', 14, 40.7114005, -74.0086398,'', now(), now()),
(2, '역사박물관', 15, 40.7114005, -74.0086398,'', now(), now()),
(3, '강남역(환승역)', 1, 40.7114005, -74.0086398,'', now(), now()),
(3, '르메르디앙, 노보텔', 2, 40.7114005, -74.0086398,'', now(), now()),
(3, '삼정호텔', 3, 40.7114005, -74.0086398,'', now(), now()),
(3, '선릉과 정릉, 라마다호텔', 4, 40.7114005, -74.0086398,'', now(), now()),
(3, '봉은사, 카지노', 5, 40.7114005, -74.0086398,'', now(), now()),
(3, '코엑스', 6, 40.7114005, -74.0086398,'', now(), now()),
(3, '롯데월드', 7, 40.7114005, -74.0086398,'', now(), now()),
(3, '롯데월드 슈퍼타워', 8, 40.7114005, -74.0086398,'', now(), now()),
(3, '올림픽공원', 9, 40.7114005, -74.0086398,'', now(), now()),
(3, '서울잠실종합운동장', 10, 40.7114005, -74.0086398,'', now(), now()),
(3, '삼성역', 11, 40.7114005, -74.0086398,'', now(), now()),
(3, 'K-POP 엔터테이먼트사', 12, 40.7114005, -74.0086398,'', now(), now()),
(3, '한류스타거리', 13, 40.7114005, -74.0086398,'', now(), now()),
(3, '로데오 거리', 14, 40.7114005, -74.0086398,'', now(), now()),
(3, '강남관광정보센터, 현대백화점', 15, 40.7114005, -74.0086398,'', now(), now()),
(3, '가로수길', 16, 40.7114005, -74.0086398,'', now(), now()),
(3, '세빛섬', 17, 40.7114005, -74.0086398,'', now(), now()),
(3, '고속터미널 신세계백화점', 18, 40.7114005, -74.0086398,'', now(), now()),
(3, '서래마을', 19, 40.7114005, -74.0086398,'', now(), now()),
(3, '법원, 교대역', 20, 40.7114005, -74.0086398,'', now(), now()),
(3, '삼성 딜라이트', 21, 40.7114005, -74.0086398,'', now(), now()),
(4, '광화문', 1, 40.7114005, -74.0086398,'', now(), now()),
(4, '마포대교', 2, 40.7114005, -74.0086398,'', now(), now()),
(4, '서강대교', 3, 40.7114005, -74.0086398,'', now(), now()),
(4, '강변북로', 4, 40.7114005, -74.0086398,'', now(), now()),
(4, '반포대교', 5, 40.7114005, -74.0086398,'', now(), now()),
(4, '세빛섬(주중 포토타임)', 6, 40.7114005, -74.0086398,'', now(), now()),
(4, '동작대교', 7, 40.7114005, -74.0086398,'', now(), now()),
(4, '성수대교', 8, 40.7114005, -74.0086398,'', now(), now()),
(4, '한남대교', 9, 40.7114005, -74.0086398,'', now(), now()),
(4, 'N서울타워(주말, 공휴일 포토타임)', 10, 40.7114005, -74.0086398,'', now(), now()),
(4, '남대문시장앞', 11, 40.7114005, -74.0086398,'', now(), now()),
(4, '청계광장(종착역)', 12, 40.7114005, -74.0086398,'', now(), now());
