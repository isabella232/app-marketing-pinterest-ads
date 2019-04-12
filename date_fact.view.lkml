view: pinterest_date_fact {
  extends: [pinterest_ad_metrics_base]

  derived_table: {
    explore_source: pinterest_ad_impressions {
      column: date_period { field: fact.date_period }
      column: average_position {field: fact.weighted_average_position}
      column: clicks {field: fact.total_clicks }
      column: conversions {field: fact.total_conversions}
      column: conversionvalue {field: fact.total_conversionvalue}
      column: cost {field: fact.total_cost}
      column: impressions { field: fact.total_impressions}
      bind_filters: {
        from_field: total.period
        to_field: fact.period
      }
    }
  }

  dimension: date_period {
    allow_fill: no
    hidden: yes
    primary_key: yes
    type: date
    convert_tz: no
  }

  dimension: conversionvalue {
    type: number
    hidden:  yes
    sql: ${TABLE}.conversionvalue ;;
  }

  dimension: cost {
    type: number
    hidden:  yes
    sql: ${TABLE}.cost ;;
  }

  parameter: period {
    description: "Prior Period for Comparison"
    type: string
    allowed_value: {
      value: "day"
      label: "Day"
    }
    allowed_value: {
      value: "week"
      label: "Week (Mon - Sun)"
    }
    allowed_value: {
      value: "month"
      label: "Month"
    }
    allowed_value: {
      value: "quarter"
      label: "Quarter"
    }
    allowed_value: {
      value: "year"
      label: "Year"
    }
    allowed_value: {
      value: "7 day"
      label: "Last 7 Days"
    }
    allowed_value: {
      value: "28 day"
      label: "Last 28 Days"
    }
    allowed_value: {
      value: "91 day"
      label: "Last 91 Days"
    }
    allowed_value: {
      value: "364 day"
      label: "Last 364 Days"
    }
    default_value: "28 day"
  }

}
