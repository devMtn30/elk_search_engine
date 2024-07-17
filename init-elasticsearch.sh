#!/bin/bash

# Wait for Elasticsearch to start up
until curl -s http://elasticsearch:9200/_cluster/health?wait_for_status=yellow&timeout=50s; do
  echo 'Waiting for Elasticsearch...'
  sleep 5
done

# Apply the index template
curl -X PUT "http://elasticsearch:9200/_template/ocr_product_keyword_template" -H 'Content-Type: application/json' -d @/usr/share/elasticsearch/config/ocr_product_keyword_template.json
