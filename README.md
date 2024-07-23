# elk_search_engine
ELK 검색엔진

### 1. docker-compose 실행
   docker-compose up --build -d

### 2. nori 플러그인 설치 & 인덱스 등록
   init-elasticsearch.sh

### 3. 엘라스틱 서치 컨테이너 재시작

### 4. kibana index management
   http://localhost:5601/
   create index pattern

### 5. 데이터베이스
   테이블 생성
   데이터 insert

### Process
   - 위 환경 설정이 완료 된 후, 검색엔진을 통해 사용 가능
   - postman_collection.json을 통해 테스트 가능
   - nori를 기반으로 형태소 분석
   - logstatsh를 통해 업데이트 시간을 기준으로 데이터 동기화

## referrence
   https://velog.io/@yoonene/Docker%EB%A1%9C-%EC%84%9C%EB%B2%84%EC%97%90%EC%84%9C-ElasticsearchKibananori-plugin-%EA%B5%AC%EB%8F%99%ED%95%98%EA%B8%B0
   http://kimjmin.net/2019/08/2019-08-how-to-analyze-korean/
   