#### https://www.elastic.co/guide/en/elasticsearch/reference/current/explicit-mapping.html
#### https://www.elastic.co/guide/en/elasticsearch/reference/current/index-mgmt.html


PUT _index_template/template_radares-02
{
  "index_patterns": [ "radares02-*"  ],
  "template": {
    "settings": {
      "index": {
        "number_of_shards": "1"
      }
    },
  "mappings": {
    "dynamic": "true",
    "_data_stream_timestamp": {
      "enabled": false
    },
    "dynamic_templates": [],
    "date_detection": true,
    "numeric_detection": true,
    "properties": {
      "timestamp": {
        "type": "date"
      },
      "@version": {
        "type": "long"
      },
      "concessionaria": {
        "type": "text",
        "fields": {
          "keyword": {
            "type": "keyword",
            "ignore_above": 256
          }
        }
      },
      "geoip": {
        "type": "object"
      },
      "host": {
        "type": "text",
        "fields": {
          "keyword": {
            "type": "keyword",
            "ignore_above": 256
          }
        }
      },
      "infracao": {
        "type": "long"
      },
      "lat": {
        "type": "half_float"
      },
      "location": {
        "type": "geo_point"
      },
      "lon": {
        "type": "half_float"
      },
      "message": {
        "type": "text",
        "fields": {
          "keyword": {
            "type": "keyword",
            "ignore_above": 256
          }
        }
      },
      "path": {
        "type": "text",
        "fields": {
          "keyword": {
            "type": "keyword",
            "ignore_above": 256
          }
        }
      },
      "radar": {
        "type": "long"
      },
      "rodovia": {
        "type": "short"
      },
      "tags": {
        "type": "text",
        "fields": {
          "keyword": {
            "type": "keyword",
            "ignore_above": 256
          }
        }
      },

      "velocidade_max": {
        "type": "float"
      },
      "velocidade_medida": {
        "type": "float"
      }
    }
  }
  },
  "version": 1,
  "priority": 500,
   "_meta": {
    "description": "template_radares02-br"
  }
}