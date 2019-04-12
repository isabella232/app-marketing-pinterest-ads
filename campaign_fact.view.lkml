include: "account_fact.view"

explore: pinterest_campaign_date_fact {
  persist_with: pinterest_ads_etl_datagroup
  extends: [pinterest_account_date_fact, pinterest_campaign_join]
  from: pinterest_campaign_date_fact
  view_name: fact
  label: "Campaign This Period"
  view_label: "Campaign This Period"
  join: last_fact {
    from: pinterest_campaign_date_fact
    view_label: "Campaign Prior Period"
    sql_on: ${fact.account_id} = ${last_fact.account_id} AND
      ${fact.campaign_id} = ${last_fact.campaign_id} AND
      ${fact.date_last_period} = ${last_fact.date_period} AND
      ${fact.date_day_of_period} = ${last_fact.date_day_of_period} ;;
  }
  join: parent_fact {
    view_label: "Customer This Period"
    from: pinterest_account_date_fact
    sql_on: ${fact.account_id} = ${parent_fact.account_id} AND
      ${fact.date_date} = ${parent_fact.date_date};;
    relationship: many_to_one
  }
}

view: pinterest_campaign_key_base {
  extends: [pinterest_account_key_base]
  extension: required

  dimension: campaign_key_base {
    hidden: yes
    sql: {% if _dialect._name == 'snowflake' %}
        ${account_key_base} || '-' || TO_CHAR(${campaign_id})
      {% elsif _dialect._name == 'redshift' %}
        ${account_key_base} || '-' || CAST(${campaign_id} AS VARCHAR)
      {% else %}
        CONCAT(${account_key_base}, "-", CAST(${campaign_id} as STRING))
      {% endif %} ;;
  }
  dimension: key_base {
    hidden: yes
    sql: ${campaign_key_base} ;;
  }
}

view: pinterest_campaign_date_fact {
  extends: [ad_metrics_parent_comparison_base, pinterest_account_date_fact, pinterest_campaign_key_base]

  derived_table: {
    datagroup_trigger: pinterest_ads_etl_datagroup
    explore_source: pinterest_ad_impressions_campaign {
      column: _date { field: fact.date_date }
      column: account_id { field: fact.account_id }
      column: campaign_id {field: fact.campaign_id}
      column: average_position {field: fact.weighted_average_position}
      column: clicks {field: fact.total_clicks }
      column: conversions {field: fact.total_conversions}
      column: conversionvalue {field: fact.total_conversionvalue}
      column: cost {field: fact.total_cost}
      column: impressions { field: fact.total_impressions}
    }
  }
  dimension: campaign_id {
    hidden: yes
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
  set: detail {
    fields: [account_id, campaign_id]
  }
}
