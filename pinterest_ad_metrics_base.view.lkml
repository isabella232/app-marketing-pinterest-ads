view: pinterest_ad_metrics_base_template {
  extension: required
  extends: [google_ad_metrics_base]

  dimension: average_position {
    type: number
    sql: 0 ;;
  }

  dimension: conversionvalue {
    type: number
    sql: ${TABLE}.total_conversions_value_in_micro_dollar;;
  }

  dimension: cost {
    type: number
    sql: ${TABLE}.spend_in_micro_dollar  / 1000000;;
  }

}
