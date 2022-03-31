curl -XPUT -u "elastic:elastic123" http://elasticsearch:9200/radares-br -H "Content-Type: application/json" -d @/index_Template.sh

### https://www.elastic.co/guide/en/elasticsearch/reference/current/explicit-mapping.html
### https://www.elastic.co/guide/en/elasticsearch/reference/current/index-mgmt.html
### https://discuss.elastic.co/t/location-dosent-convert-to-geo-point/131199
### https://linuxhint.com/elasticsearch-create-index/