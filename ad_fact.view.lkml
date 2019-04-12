include: "ad_group_fact.view"

explore: pinterest_ad_date_fact {
  persist_with: pinterest_ads_etl_datagroup
  extends: [pinterest_ad_group_date_fact, pinterest_ad_join]
  from: pinterest_ad_date_fact
  view_name: fact
  label: "Ad This Period"
  view_label: "Ad This Period"
  join: last_fact {
    from: pinterest_ad_date_fact
    view_label: "Ad Last Period"
    sql_on: ${fact.account_id} = ${last_fact.account_id} AND
      ${fact.campaign_id} = ${last_fact.campaign_id} AND
      ${fact.ad_group_id} = ${last_fact.ad_group_id} AND
      ${fact.ad_id} = ${last_fact.ad_id} AND
      ${fact.date_last_period} = ${last_fact.date_period} AND
      ${fact.date_day_of_period} = ${last_fact.date_day_of_period} ;;
    relationship: one_to_one
  }
  join: parent_fact {
    from: pinterest_ad_group_date_fact
    view_label: "Ad Group This Period"
    sql_on: ${fact.account_id} = ${parent_fact.account_id} AND
      ${fact.campaign_id} = ${parent_fact.campaign_id} AND
      ${fact.ad_group_id} = ${parent_fact.ad_group_id} AND
      ${fact.date_date} = ${parent_fact.date_date} ;;
    relationship: many_to_one
  }
}

view: pinterest_ad_key_base {
  extends: [pinterest_ad_group_key_base]
  extension: required

  dimension: ad_key_base {
    hidden: yes
    sql:
      {% if _dialect._name == 'snowflake' %}
        ${ad_group_key_base} || '-' || TO_CHAR(${ad_id})
      {% elsif _dialect._name == 'redshift' %}
        ${ad_group_key_base} || '-' || CAST(${ad_id} AS VARCHAR)
      {% else %}
        CONCAT(${ad_group_key_base}, "-", CAST(${ad_id} as STRING))
      {% endif %} ;;
  }
  dimension: key_base {
    sql: ${ad_key_base} ;;
  }
}

view: pinterest_ad_date_fact {
  extends: [pinterest_ad_group_date_fact, pinterest_ad_key_base]

  derived_table: {
    datagroup_trigger: pinterest_ads_etl_datagroup
    explore_source: pinterest_ad_impressions_ad {
      column: _date { field: fact.date_date }
      column: account_id { field: fact.account_id }
      column: campaign_id {field: fact.campaign_id}
      column: ad_group_id {field: fact.ad_group_id}
      column: ad_id { field: fact.ad_id }
      column: average_position {field: fact.weighted_average_position}
      column: clicks {field: fact.total_clicks }
      column: conversions {field: fact.total_conversions}
      column: conversionvalue {field: fact.total_conversionvalue}
      column: spend {field: fact.total_cost}
      column: impressions { field: fact.total_impressions}
    }
  }
  dimension: ad_id {
    hidden: yes
  }
  set: detail {
    fields: [account_id, campaign_id, ad_group_id, ad_id]
  }
}
