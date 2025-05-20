-- freelist 테이블
CREATE TABLE freelist (
  fno NUMBER PRIMARY KEY,
  fid VARCHAR2(30) NOT NULL,
  ftitle VARCHAR2(500) NOT NULL,
  fcontent CLOB NOT NULL,
  fdate DATE NOT NULL,
  fview NUMBER DEFAULT 0,
  fgood NUMBER DEFAULT 0,
  ffile VARCHAR2(1000) DEFAULT NULL
);

-- fr_reply 테이블
CREATE TABLE fr_reply (
  c_no NUMBER PRIMARY KEY,
  fno NUMBER NOT NULL,
  m_id VARCHAR2(30) NOT NULL,
  c_con CLOB NOT NULL,
  fdate DATE NOT NULL
);

-- 시퀀스 생성
CREATE SEQUENCE freelist_seq START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE fr_reply_seq START WITH 1 INCREMENT BY 1;


INSERT INTO freelist VALUES (freelist_seq.NEXTVAL, 'foodie01', '홍대 김치찌개 맛집 추천', '홍대에서 찾은 김치찌개 맛집! 진짜 맛있어요. 고기도 많고 국물도 시원합니다.', SYSDATE - 1, 42, 8, 'null');
INSERT INTO freelist VALUES (freelist_seq.NEXTVAL, 'yumlover', '삼겹살에 소주 한 잔', '친구랑 삼겹살에 소주 한잔 했어요. 역시 고기엔 소주!', SYSDATE - 2, 35, 5, 'null');
INSERT INTO freelist VALUES (freelist_seq.NEXTVAL, 'happycat', '강남역 파스타집 후기', '크림파스타가 정말 부드러웠고 분위기도 좋아요. 데이트 코스로 추천합니다.', SYSDATE - 3, 58, 12, 'null');
INSERT INTO freelist VALUES (freelist_seq.NEXTVAL, 'eatman', '순대국밥 한 그릇의 행복', '몸이 안좋을 때 순대국밥만한 게 없네요. 국물이 진국입니다.', SYSDATE - 4, 21, 2, 'null');
INSERT INTO freelist VALUES (freelist_seq.NEXTVAL, 'spicygirl', '불닭볶음면 도전 후기', '진짜 맵네요 ㅠㅠ 하지만 맛있어서 계속 먹게 되는 매력!', SYSDATE - 1, 60, 15, 'null');
INSERT INTO freelist VALUES (freelist_seq.NEXTVAL, 'noodleguy', '비 오는 날엔 잔치국수', '비 오는 날 뜨끈한 국수가 최고죠. 엄마가 해준 것 같아요.', SYSDATE - 5, 18, 3, 'null');
INSERT INTO freelist VALUES (freelist_seq.NEXTVAL, 'hungrybear', '치킨 종류별 비교 후기', '양념, 후라이드, 간장치킨 전부 먹어봤어요. 제 추천은 간장치킨!', SYSDATE - 3, 84, 20, 'null');
INSERT INTO freelist VALUES (freelist_seq.NEXTVAL, 'travelbite', '제주도 흑돼지 솔직 리뷰', '제주도 여행 가면 꼭 먹어야 할 흑돼지! 입에서 살살 녹아요.', SYSDATE - 6, 45, 9, 'null');
INSERT INTO freelist VALUES (freelist_seq.NEXTVAL, 'coffeequeen', '한남동 디저트 카페 탐방기', '케이크가 진짜 부드러워요. 라떼랑 찰떡궁합!', SYSDATE - 2, 77, 16, 'null');
INSERT INTO freelist VALUES (freelist_seq.NEXTVAL, 'midnightfoodie', '야식엔 역시 떡볶이', '배달 떡볶이 시켰는데 양도 많고 맛도 좋아요!', SYSDATE - 1, 66, 10, 'null');
INSERT INTO freelist VALUES (freelist_seq.NEXTVAL, 'gimbapman', '편의점 김밥 솔직 리뷰', '저렴한 가격에 이정도 퀄리티면 자주 사먹을 듯요.', SYSDATE - 7, 10, 0, 'null');
INSERT INTO freelist VALUES (freelist_seq.NEXTVAL, 'veggiebae', '비건 레스토랑 다녀왔어요', '비건도 맛있을 수 있네요! 두부 스테이크가 최고였어요.', SYSDATE - 3, 20, 4, 'null');
INSERT INTO freelist VALUES (freelist_seq.NEXTVAL, 'ramenlover', '일본식 라멘 비교', '쇼유라멘이 가장 깔끔하고 좋았어요. 돈코츠는 다소 느끼했어요.', SYSDATE - 6, 52, 6, 'null');
INSERT INTO freelist VALUES (freelist_seq.NEXTVAL, 'seouler', '홍대 맛집 지도 공유합니다', '제가 다녀온 곳 위주로 정리해봤어요. 도움 되셨으면!', SYSDATE - 2, 90, 22, 'null');
INSERT INTO freelist VALUES (freelist_seq.NEXTVAL, 'jjajangfan', '짜장면 맛집은 여기입니다', '면발 쫄깃하고 양도 많아요. 단무지도 넉넉하게 주심!', SYSDATE - 4, 33, 4, 'null');


INSERT INTO fr_reply VALUES (fr_reply_seq.NEXTVAL, 1, 'foodie01', '진짜 맛있어 보여요!', SYSDATE - 1);
INSERT INTO fr_reply VALUES (fr_reply_seq.NEXTVAL, 1, 'yummy_girl', '여기 자주 가요~ 강추!', SYSDATE - 1);
INSERT INTO fr_reply VALUES (fr_reply_seq.NEXTVAL, 1, 'min_chef', '가격대는 어떤가요?', SYSDATE - 2);
INSERT INTO fr_reply VALUES (fr_reply_seq.NEXTVAL, 1, 'eaterking', '사진만 봐도 군침 도네요.', SYSDATE - 1.5);
INSERT INTO fr_reply VALUES (fr_reply_seq.NEXTVAL, 1, 'jina89', '여기 데이트 장소로도 좋겠네요!', SYSDATE - 2.3);
INSERT INTO fr_reply VALUES (fr_reply_seq.NEXTVAL, 1, 'sunsik', '위치가 어디쯤인가요?', SYSDATE - 3);
INSERT INTO fr_reply VALUES (fr_reply_seq.NEXTVAL, 1, 'happymeal', '가성비 좋네요~', SYSDATE - 2.7);
INSERT INTO fr_reply VALUES (fr_reply_seq.NEXTVAL, 1, 'han_sik', '가족끼리 가기 괜찮나요?', SYSDATE - 2);
INSERT INTO fr_reply VALUES (fr_reply_seq.NEXTVAL, 1, 'dailybite', '다음주에 가봐야겠어요!', SYSDATE - 1.1);
INSERT INTO fr_reply VALUES (fr_reply_seq.NEXTVAL, 1, 'johndoe', '정보 감사합니다~', SYSDATE - 1);


INSERT INTO fr_reply VALUES (fr_reply_seq.NEXTVAL, 2, 'eun_tea', '오~ 여긴 처음보네요', SYSDATE - 2);
INSERT INTO fr_reply VALUES (fr_reply_seq.NEXTVAL, 2, 'kimchi', '김치찌개 맛있게 보이네요', SYSDATE - 2.1);
INSERT INTO fr_reply VALUES (fr_reply_seq.NEXTVAL, 2, 'doongdoong', '여기 어디에요?', SYSDATE - 2.5);
INSERT INTO fr_reply VALUES (fr_reply_seq.NEXTVAL, 2, 'sohee', '가봤는데 진짜 맛있었어요!', SYSDATE - 3);
INSERT INTO fr_reply VALUES (fr_reply_seq.NEXTVAL, 2, 'milklover', '저번에 갔는데 사람이 많더라고요', SYSDATE - 2.9);
INSERT INTO fr_reply VALUES (fr_reply_seq.NEXTVAL, 2, 'yongman', '메뉴 추천 좀 해주세요!', SYSDATE - 2.4);
INSERT INTO fr_reply VALUES (fr_reply_seq.NEXTVAL, 2, 'cookmaster', '맛있게 드셨네요~', SYSDATE - 2.2);
INSERT INTO fr_reply VALUES (fr_reply_seq.NEXTVAL, 2, 'hungrywolf', '점심으로 딱이네요!', SYSDATE - 1.8);
INSERT INTO fr_reply VALUES (fr_reply_seq.NEXTVAL, 2, 'bomi_bomi', '이런 정보 너무 좋아요 ㅎㅎ', SYSDATE - 2.6);
INSERT INTO fr_reply VALUES (fr_reply_seq.NEXTVAL, 2, 'mandoo', '맨날 지나다녔는데 한번 가봐야겠어요', SYSDATE - 2.3);

INSERT INTO fr_reply VALUES (fr_reply_seq.NEXTVAL, 3, 'foodie01', '진짜 맛있어 보여요!', SYSDATE - 1);
INSERT INTO fr_reply VALUES (fr_reply_seq.NEXTVAL, 3, 'yummy_girl', '여기 자주 가요~ 강추!', SYSDATE - 1);
INSERT INTO fr_reply VALUES (fr_reply_seq.NEXTVAL, 3, 'min_chef', '가격대는 어떤가요?', SYSDATE - 2);
INSERT INTO fr_reply VALUES (fr_reply_seq.NEXTVAL, 3, 'eaterking', '사진만 봐도 군침 도네요.', SYSDATE - 1.5);
INSERT INTO fr_reply VALUES (fr_reply_seq.NEXTVAL, 3, 'jina89', '여기 데이트 장소로도 좋겠네요!', SYSDATE - 2.3);
INSERT INTO fr_reply VALUES (fr_reply_seq.NEXTVAL, 3, 'sunsik', '위치가 어디쯤인가요?', SYSDATE - 3);
INSERT INTO fr_reply VALUES (fr_reply_seq.NEXTVAL, 3, 'happymeal', '가성비 좋네요~', SYSDATE - 2.7);
INSERT INTO fr_reply VALUES (fr_reply_seq.NEXTVAL, 3, 'han_sik', '가족끼리 가기 괜찮나요?', SYSDATE - 2);
INSERT INTO fr_reply VALUES (fr_reply_seq.NEXTVAL, 3, 'dailybite', '다음주에 가봐야겠어요!', SYSDATE - 1.1);
INSERT INTO fr_reply VALUES (fr_reply_seq.NEXTVAL, 3, 'johndoe', '정보 감사합니다~', SYSDATE - 1);


INSERT INTO fr_reply VALUES (fr_reply_seq.NEXTVAL, 4, 'eun_tea', '오~ 여긴 처음보네요', SYSDATE - 2);
INSERT INTO fr_reply VALUES (fr_reply_seq.NEXTVAL, 4, 'kimchi', '김치찌개 맛있게 보이네요', SYSDATE - 2.1);
INSERT INTO fr_reply VALUES (fr_reply_seq.NEXTVAL, 4, 'doongdoong', '여기 어디에요?', SYSDATE - 2.5);
INSERT INTO fr_reply VALUES (fr_reply_seq.NEXTVAL, 4, 'sohee', '가봤는데 진짜 맛있었어요!', SYSDATE - 3);
INSERT INTO fr_reply VALUES (fr_reply_seq.NEXTVAL, 4, 'milklover', '저번에 갔는데 사람이 많더라고요', SYSDATE - 2.9);
INSERT INTO fr_reply VALUES (fr_reply_seq.NEXTVAL, 4, 'yongman', '메뉴 추천 좀 해주세요!', SYSDATE - 2.4);
INSERT INTO fr_reply VALUES (fr_reply_seq.NEXTVAL, 4, 'cookmaster', '맛있게 드셨네요~', SYSDATE - 2.2);
INSERT INTO fr_reply VALUES (fr_reply_seq.NEXTVAL, 4, 'hungrywolf', '점심으로 딱이네요!', SYSDATE - 1.8);
INSERT INTO fr_reply VALUES (fr_reply_seq.NEXTVAL, 4, 'bomi_bomi', '이런 정보 너무 좋아요 ㅎㅎ', SYSDATE - 2.6);
INSERT INTO fr_reply VALUES (fr_reply_seq.NEXTVAL, 4, 'mandoo', '맨날 지나다녔는데 한번 가봐야겠어요', SYSDATE - 2.3);


INSERT INTO fr_reply VALUES (fr_reply_seq.NEXTVAL, 5, 'foodie01', '진짜 맛있어 보여요!', SYSDATE - 1);
INSERT INTO fr_reply VALUES (fr_reply_seq.NEXTVAL, 5, 'yummy_girl', '여기 자주 가요~ 강추!', SYSDATE - 1);
INSERT INTO fr_reply VALUES (fr_reply_seq.NEXTVAL, 5, 'min_chef', '가격대는 어떤가요?', SYSDATE - 2);
INSERT INTO fr_reply VALUES (fr_reply_seq.NEXTVAL, 5, 'eaterking', '사진만 봐도 군침 도네요.', SYSDATE - 1.5);
INSERT INTO fr_reply VALUES (fr_reply_seq.NEXTVAL, 5, 'jina89', '여기 데이트 장소로도 좋겠네요!', SYSDATE - 2.3);
INSERT INTO fr_reply VALUES (fr_reply_seq.NEXTVAL, 5, 'sunsik', '위치가 어디쯤인가요?', SYSDATE - 3);
INSERT INTO fr_reply VALUES (fr_reply_seq.NEXTVAL, 5, 'happymeal', '가성비 좋네요~', SYSDATE - 2.7);
INSERT INTO fr_reply VALUES (fr_reply_seq.NEXTVAL, 5, 'han_sik', '가족끼리 가기 괜찮나요?', SYSDATE - 2);
INSERT INTO fr_reply VALUES (fr_reply_seq.NEXTVAL, 5, 'dailybite', '다음주에 가봐야겠어요!', SYSDATE - 1.1);
INSERT INTO fr_reply VALUES (fr_reply_seq.NEXTVAL, 5, 'johndoe', '정보 감사합니다~', SYSDATE - 1);


INSERT INTO fr_reply VALUES (fr_reply_seq.NEXTVAL, 6, 'eun_tea', '오~ 여긴 처음보네요', SYSDATE - 2);
INSERT INTO fr_reply VALUES (fr_reply_seq.NEXTVAL, 6, 'kimchi', '김치찌개 맛있게 보이네요', SYSDATE - 2.1);
INSERT INTO fr_reply VALUES (fr_reply_seq.NEXTVAL, 6, 'doongdoong', '여기 어디에요?', SYSDATE - 2.5);
INSERT INTO fr_reply VALUES (fr_reply_seq.NEXTVAL, 6, 'sohee', '가봤는데 진짜 맛있었어요!', SYSDATE - 3);
INSERT INTO fr_reply VALUES (fr_reply_seq.NEXTVAL, 6, 'milklover', '저번에 갔는데 사람이 많더라고요', SYSDATE - 2.9);
INSERT INTO fr_reply VALUES (fr_reply_seq.NEXTVAL, 6, 'yongman', '메뉴 추천 좀 해주세요!', SYSDATE - 2.4);
INSERT INTO fr_reply VALUES (fr_reply_seq.NEXTVAL, 6, 'cookmaster', '맛있게 드셨네요~', SYSDATE - 2.2);
INSERT INTO fr_reply VALUES (fr_reply_seq.NEXTVAL, 6, 'hungrywolf', '점심으로 딱이네요!', SYSDATE - 1.8);
INSERT INTO fr_reply VALUES (fr_reply_seq.NEXTVAL, 6, 'bomi_bomi', '이런 정보 너무 좋아요 ㅎㅎ', SYSDATE - 2.6);
INSERT INTO fr_reply VALUES (fr_reply_seq.NEXTVAL, 6, 'mandoo', '맨날 지나다녔는데 한번 가봐야겠어요', SYSDATE - 2.3);

INSERT INTO fr_reply VALUES (fr_reply_seq.NEXTVAL, 7, 'foodie01', '진짜 맛있어 보여요!', SYSDATE - 1);
INSERT INTO fr_reply VALUES (fr_reply_seq.NEXTVAL, 7, 'yummy_girl', '여기 자주 가요~ 강추!', SYSDATE - 1);
INSERT INTO fr_reply VALUES (fr_reply_seq.NEXTVAL, 7, 'min_chef', '가격대는 어떤가요?', SYSDATE - 2);
INSERT INTO fr_reply VALUES (fr_reply_seq.NEXTVAL, 7, 'eaterking', '사진만 봐도 군침 도네요.', SYSDATE - 1.5);
INSERT INTO fr_reply VALUES (fr_reply_seq.NEXTVAL, 7, 'jina89', '여기 데이트 장소로도 좋겠네요!', SYSDATE - 2.3);
INSERT INTO fr_reply VALUES (fr_reply_seq.NEXTVAL, 7, 'sunsik', '위치가 어디쯤인가요?', SYSDATE - 3);
INSERT INTO fr_reply VALUES (fr_reply_seq.NEXTVAL, 7, 'happymeal', '가성비 좋네요~', SYSDATE - 2.7);
INSERT INTO fr_reply VALUES (fr_reply_seq.NEXTVAL, 7, 'han_sik', '가족끼리 가기 괜찮나요?', SYSDATE - 2);
INSERT INTO fr_reply VALUES (fr_reply_seq.NEXTVAL, 7, 'dailybite', '다음주에 가봐야겠어요!', SYSDATE - 1.1);
INSERT INTO fr_reply VALUES (fr_reply_seq.NEXTVAL, 7, 'johndoe', '정보 감사합니다~', SYSDATE - 1);


INSERT INTO fr_reply VALUES (fr_reply_seq.NEXTVAL, 8, 'eun_tea', '오~ 여긴 처음보네요', SYSDATE - 2);
INSERT INTO fr_reply VALUES (fr_reply_seq.NEXTVAL, 8, 'kimchi', '김치찌개 맛있게 보이네요', SYSDATE - 2.1);
INSERT INTO fr_reply VALUES (fr_reply_seq.NEXTVAL, 8, 'doongdoong', '여기 어디에요?', SYSDATE - 2.5);
INSERT INTO fr_reply VALUES (fr_reply_seq.NEXTVAL, 8, 'sohee', '가봤는데 진짜 맛있었어요!', SYSDATE - 3);
INSERT INTO fr_reply VALUES (fr_reply_seq.NEXTVAL, 8, 'milklover', '저번에 갔는데 사람이 많더라고요', SYSDATE - 2.9);
INSERT INTO fr_reply VALUES (fr_reply_seq.NEXTVAL, 8, 'yongman', '메뉴 추천 좀 해주세요!', SYSDATE - 2.4);
INSERT INTO fr_reply VALUES (fr_reply_seq.NEXTVAL, 8, 'cookmaster', '맛있게 드셨네요~', SYSDATE - 2.2);
INSERT INTO fr_reply VALUES (fr_reply_seq.NEXTVAL, 8, 'hungrywolf', '점심으로 딱이네요!', SYSDATE - 1.8);
INSERT INTO fr_reply VALUES (fr_reply_seq.NEXTVAL, 8, 'bomi_bomi', '이런 정보 너무 좋아요 ㅎㅎ', SYSDATE - 2.6);
INSERT INTO fr_reply VALUES (fr_reply_seq.NEXTVAL, 8, 'mandoo', '맨날 지나다녔는데 한번 가봐야겠어요', SYSDATE - 2.3);


INSERT INTO fr_reply VALUES (fr_reply_seq.NEXTVAL, 9, 'foodie01', '진짜 맛있어 보여요!', SYSDATE - 1);
INSERT INTO fr_reply VALUES (fr_reply_seq.NEXTVAL, 9, 'yummy_girl', '여기 자주 가요~ 강추!', SYSDATE - 1);
INSERT INTO fr_reply VALUES (fr_reply_seq.NEXTVAL, 9, 'min_chef', '가격대는 어떤가요?', SYSDATE - 2);
INSERT INTO fr_reply VALUES (fr_reply_seq.NEXTVAL, 9, 'eaterking', '사진만 봐도 군침 도네요.', SYSDATE - 1.5);
INSERT INTO fr_reply VALUES (fr_reply_seq.NEXTVAL, 9, 'jina89', '여기 데이트 장소로도 좋겠네요!', SYSDATE - 2.3);
INSERT INTO fr_reply VALUES (fr_reply_seq.NEXTVAL, 9, 'sunsik', '위치가 어디쯤인가요?', SYSDATE - 3);
INSERT INTO fr_reply VALUES (fr_reply_seq.NEXTVAL, 9, 'happymeal', '가성비 좋네요~', SYSDATE - 2.7);
INSERT INTO fr_reply VALUES (fr_reply_seq.NEXTVAL, 9, 'han_sik', '가족끼리 가기 괜찮나요?', SYSDATE - 2);
INSERT INTO fr_reply VALUES (fr_reply_seq.NEXTVAL, 9, 'dailybite', '다음주에 가봐야겠어요!', SYSDATE - 1.1);
INSERT INTO fr_reply VALUES (fr_reply_seq.NEXTVAL, 9, 'johndoe', '정보 감사합니다~', SYSDATE - 1);


INSERT INTO fr_reply VALUES (fr_reply_seq.NEXTVAL, 10, 'eun_tea', '오~ 여긴 처음보네요', SYSDATE - 2);
INSERT INTO fr_reply VALUES (fr_reply_seq.NEXTVAL, 10, 'kimchi', '김치찌개 맛있게 보이네요', SYSDATE - 2.1);
INSERT INTO fr_reply VALUES (fr_reply_seq.NEXTVAL, 10, 'doongdoong', '여기 어디에요?', SYSDATE - 2.5);
INSERT INTO fr_reply VALUES (fr_reply_seq.NEXTVAL, 10, 'sohee', '가봤는데 진짜 맛있었어요!', SYSDATE - 3);
INSERT INTO fr_reply VALUES (fr_reply_seq.NEXTVAL, 10, 'milklover', '저번에 갔는데 사람이 많더라고요', SYSDATE - 2.9);
INSERT INTO fr_reply VALUES (fr_reply_seq.NEXTVAL, 10, 'yongman', '메뉴 추천 좀 해주세요!', SYSDATE - 2.4);
INSERT INTO fr_reply VALUES (fr_reply_seq.NEXTVAL, 10, 'cookmaster', '맛있게 드셨네요~', SYSDATE - 2.2);
INSERT INTO fr_reply VALUES (fr_reply_seq.NEXTVAL, 10, 'hungrywolf', '점심으로 딱이네요!', SYSDATE - 1.8);
INSERT INTO fr_reply VALUES (fr_reply_seq.NEXTVAL, 10, 'bomi_bomi', '이런 정보 너무 좋아요 ㅎㅎ', SYSDATE - 2.6);
INSERT INTO fr_reply VALUES (fr_reply_seq.NEXTVAL, 10, 'mandoo', '맨날 지나다녔는데 한번 가봐야겠어요', SYSDATE - 2.3);

INSERT INTO fr_reply VALUES (fr_reply_seq.NEXTVAL, 11, 'foodie01', '진짜 맛있어 보여요!', SYSDATE - 1);
INSERT INTO fr_reply VALUES (fr_reply_seq.NEXTVAL, 11, 'yummy_girl', '여기 자주 가요~ 강추!', SYSDATE - 1);
INSERT INTO fr_reply VALUES (fr_reply_seq.NEXTVAL, 11, 'min_chef', '가격대는 어떤가요?', SYSDATE - 2);
INSERT INTO fr_reply VALUES (fr_reply_seq.NEXTVAL, 11, 'eaterking', '사진만 봐도 군침 도네요.', SYSDATE - 1.5);
INSERT INTO fr_reply VALUES (fr_reply_seq.NEXTVAL, 11, 'jina89', '여기 데이트 장소로도 좋겠네요!', SYSDATE - 2.3);
INSERT INTO fr_reply VALUES (fr_reply_seq.NEXTVAL, 11, 'sunsik', '위치가 어디쯤인가요?', SYSDATE - 3);
INSERT INTO fr_reply VALUES (fr_reply_seq.NEXTVAL, 11, 'happymeal', '가성비 좋네요~', SYSDATE - 2.7);
INSERT INTO fr_reply VALUES (fr_reply_seq.NEXTVAL, 11, 'han_sik', '가족끼리 가기 괜찮나요?', SYSDATE - 2);
INSERT INTO fr_reply VALUES (fr_reply_seq.NEXTVAL, 11, 'dailybite', '다음주에 가봐야겠어요!', SYSDATE - 1.1);
INSERT INTO fr_reply VALUES (fr_reply_seq.NEXTVAL, 11, 'johndoe', '정보 감사합니다~', SYSDATE - 1);


INSERT INTO fr_reply VALUES (fr_reply_seq.NEXTVAL, 12, 'eun_tea', '오~ 여긴 처음보네요', SYSDATE - 2);
INSERT INTO fr_reply VALUES (fr_reply_seq.NEXTVAL, 12, 'kimchi', '김치찌개 맛있게 보이네요', SYSDATE - 2.1);
INSERT INTO fr_reply VALUES (fr_reply_seq.NEXTVAL, 12, 'doongdoong', '여기 어디에요?', SYSDATE - 2.5);
INSERT INTO fr_reply VALUES (fr_reply_seq.NEXTVAL, 12, 'sohee', '가봤는데 진짜 맛있었어요!', SYSDATE - 3);
INSERT INTO fr_reply VALUES (fr_reply_seq.NEXTVAL, 12, 'milklover', '저번에 갔는데 사람이 많더라고요', SYSDATE - 2.9);
INSERT INTO fr_reply VALUES (fr_reply_seq.NEXTVAL, 12, 'yongman', '메뉴 추천 좀 해주세요!', SYSDATE - 2.4);
INSERT INTO fr_reply VALUES (fr_reply_seq.NEXTVAL, 12, 'cookmaster', '맛있게 드셨네요~', SYSDATE - 2.2);
INSERT INTO fr_reply VALUES (fr_reply_seq.NEXTVAL, 12, 'hungrywolf', '점심으로 딱이네요!', SYSDATE - 1.8);
INSERT INTO fr_reply VALUES (fr_reply_seq.NEXTVAL, 12, 'bomi_bomi', '이런 정보 너무 좋아요 ㅎㅎ', SYSDATE - 2.6);
INSERT INTO fr_reply VALUES (fr_reply_seq.NEXTVAL, 12, 'mandoo', '맨날 지나다녔는데 한번 가봐야겠어요', SYSDATE - 2.3);


INSERT INTO fr_reply VALUES (fr_reply_seq.NEXTVAL, 13, 'foodie01', '진짜 맛있어 보여요!', SYSDATE - 1);
INSERT INTO fr_reply VALUES (fr_reply_seq.NEXTVAL, 13, 'yummy_girl', '여기 자주 가요~ 강추!', SYSDATE - 1);
INSERT INTO fr_reply VALUES (fr_reply_seq.NEXTVAL, 13, 'min_chef', '가격대는 어떤가요?', SYSDATE - 2);
INSERT INTO fr_reply VALUES (fr_reply_seq.NEXTVAL, 13, 'eaterking', '사진만 봐도 군침 도네요.', SYSDATE - 1.5);
INSERT INTO fr_reply VALUES (fr_reply_seq.NEXTVAL, 13, 'jina89', '여기 데이트 장소로도 좋겠네요!', SYSDATE - 2.3);
INSERT INTO fr_reply VALUES (fr_reply_seq.NEXTVAL, 13, 'sunsik', '위치가 어디쯤인가요?', SYSDATE - 3);
INSERT INTO fr_reply VALUES (fr_reply_seq.NEXTVAL, 13, 'happymeal', '가성비 좋네요~', SYSDATE - 2.7);
INSERT INTO fr_reply VALUES (fr_reply_seq.NEXTVAL, 13, 'han_sik', '가족끼리 가기 괜찮나요?', SYSDATE - 2);
INSERT INTO fr_reply VALUES (fr_reply_seq.NEXTVAL, 13, 'dailybite', '다음주에 가봐야겠어요!', SYSDATE - 1.1);
INSERT INTO fr_reply VALUES (fr_reply_seq.NEXTVAL, 13, 'johndoe', '정보 감사합니다~', SYSDATE - 1);


INSERT INTO fr_reply VALUES (fr_reply_seq.NEXTVAL, 14, 'eun_tea', '오~ 여긴 처음보네요', SYSDATE - 2);
INSERT INTO fr_reply VALUES (fr_reply_seq.NEXTVAL, 14, 'kimchi', '김치찌개 맛있게 보이네요', SYSDATE - 2.1);
INSERT INTO fr_reply VALUES (fr_reply_seq.NEXTVAL, 14, 'doongdoong', '여기 어디에요?', SYSDATE - 2.5);
INSERT INTO fr_reply VALUES (fr_reply_seq.NEXTVAL, 14, 'sohee', '가봤는데 진짜 맛있었어요!', SYSDATE - 3);
INSERT INTO fr_reply VALUES (fr_reply_seq.NEXTVAL, 14, 'milklover', '저번에 갔는데 사람이 많더라고요', SYSDATE - 2.9);
INSERT INTO fr_reply VALUES (fr_reply_seq.NEXTVAL, 14, 'yongman', '메뉴 추천 좀 해주세요!', SYSDATE - 2.4);
INSERT INTO fr_reply VALUES (fr_reply_seq.NEXTVAL, 14, 'cookmaster', '맛있게 드셨네요~', SYSDATE - 2.2);
INSERT INTO fr_reply VALUES (fr_reply_seq.NEXTVAL, 14, 'hungrywolf', '점심으로 딱이네요!', SYSDATE - 1.8);
INSERT INTO fr_reply VALUES (fr_reply_seq.NEXTVAL, 14, 'bomi_bomi', '이런 정보 너무 좋아요 ㅎㅎ', SYSDATE - 2.6);
INSERT INTO fr_reply VALUES (fr_reply_seq.NEXTVAL, 14, 'mandoo', '맨날 지나다녔는데 한번 가봐야겠어요', SYSDATE - 2.3);

INSERT INTO fr_reply VALUES (fr_reply_seq.NEXTVAL, 15, 'foodie01', '진짜 맛있어 보여요!', SYSDATE - 1);
INSERT INTO fr_reply VALUES (fr_reply_seq.NEXTVAL, 15, 'yummy_girl', '여기 자주 가요~ 강추!', SYSDATE - 1);
INSERT INTO fr_reply VALUES (fr_reply_seq.NEXTVAL, 15, 'min_chef', '가격대는 어떤가요?', SYSDATE - 2);
INSERT INTO fr_reply VALUES (fr_reply_seq.NEXTVAL, 15, 'eaterking', '사진만 봐도 군침 도네요.', SYSDATE - 1.5);
INSERT INTO fr_reply VALUES (fr_reply_seq.NEXTVAL, 15, 'jina89', '여기 데이트 장소로도 좋겠네요!', SYSDATE - 2.3);
INSERT INTO fr_reply VALUES (fr_reply_seq.NEXTVAL, 15, 'sunsik', '위치가 어디쯤인가요?', SYSDATE - 3);
INSERT INTO fr_reply VALUES (fr_reply_seq.NEXTVAL, 15, 'happymeal', '가성비 좋네요~', SYSDATE - 2.7);
INSERT INTO fr_reply VALUES (fr_reply_seq.NEXTVAL, 15, 'han_sik', '가족끼리 가기 괜찮나요?', SYSDATE - 2);
INSERT INTO fr_reply VALUES (fr_reply_seq.NEXTVAL, 15, 'dailybite', '다음주에 가봐야겠어요!', SYSDATE - 1.1);
INSERT INTO fr_reply VALUES (fr_reply_seq.NEXTVAL, 15, 'johndoe', '정보 감사합니다~', SYSDATE - 1);


commit;

select * from freelist;
select * from fr_reply;

drop table freelist;
drop table fr_reply;

drop sequence freelist_seq;
drop sequence fr_reply_seq;

