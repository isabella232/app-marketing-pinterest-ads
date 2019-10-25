view: pinterest_ad_metrics_base_template {
  extension: required
  extends: [ad_metrics_base]

  dimension: average_position {
    type: number
    sql: 0 ;;
  }

  dimension: conversionvalue {
    type: number
    sql: ${TABLE}.total_conversions_value_in_micro_dollar / 1000000;;
  }

  dimension: cost {
    type: number
    sql: ${TABLE}.spend_in_micro_dollar / 1000000;;
  }

}
