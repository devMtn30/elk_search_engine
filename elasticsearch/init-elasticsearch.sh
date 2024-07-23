#!/bin/bash

# Elasticsearch 완전히 켜졌는지 확인
until curl -s http://localhost:9200/_cluster/health?wait_for_status=yellow&timeout=50s; do
  echo 'Waiting for Elasticsearch...' >> /usr/share/elasticsearch/config/init-elasticsearch.log
  sleep 10
done

# nori 플러그인 설치
echo "Installing nori plugin..." >> /usr/share/elasticsearch/config/init-elasticsearch.log
elasticsearch-plugin install analysis-nori

# 5초 대기
echo "Waiting for 10 seconds..." >> /usr/share/elasticsearch/config/init-elasticsearch.log
sleep 5

echo "Elasticsearch started, applying template..." >> /usr/share/elasticsearch/config/init-elasticsearch.log

# Apply the index
curl -X PUT localhost:9200/ocr_product_keyword?pretty=true -d @/usr/share/elasticsearch/config/ocr_product_keyword.json -H "Content-Type:application/json"
echo "index applied successfully" >> /usr/share/elasticsearch/config/init-elasticsearch.log

# 스크립트 끝난 뒤 컨테이너 종료 방지
tail -f /dev/null
