#!/bin/bash

echo "Starting init-elasticsearch.sh script..." > /usr/share/elasticsearch/config/init-elasticsearch.log

# Wait for Elasticsearch to start up
until curl -s http://elasticsearch:9200/_cluster/health?wait_for_status=yellow&timeout=50s; do
  echo 'Waiting for Elasticsearch...' >> /usr/share/elasticsearch/config/init-elasticsearch.log
  sleep 5
done

echo "Elasticsearch started, applying template..." >> /usr/share/elasticsearch/config/init-elasticsearch.log

# Apply the index template
curl -X PUT "http://elasticsearch:9200/_template/ocr_product_keyword_template" -H 'Content-Type: application/json' -d @/usr/share/elasticsearch/config/ocr_product_keyword_template.json

echo "Template applied successfully" >> /usr/share/elasticsearch/config/init-elasticsearch.log
