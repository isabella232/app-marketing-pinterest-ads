include: "pinterest_ad_metrics_base.view"

view: pinterest_ad_impressions_base {
  extends: [date_base, period_base, pinterest_ad_metrics_base]
}

explore: pinterest_ad_impressions_template {
  persist_with: pinterest_ads_etl_datagroup
  extends: [pinterest_ad_impressions_adapter]
  from: pinterest_ad_impressions
  view_name: fact
  group_label: "pinterest Ads"
  label: "pinterest Ads Impressions"
  view_label: "Impressions"
}

view: pinterest_ad_impressions_template {
  extends: [pinterest_ad_impressions_base, pinterest_ad_impressions_adapter]
}

explore: pinterest_ad_impressions_campaign_template {
  persist_with: pinterest_ads_etl_datagroup
  extends: [pinterest_ad_impressions_campaign_adapter]
  from: pinterest_ad_impressions_campaign
  view_name: fact
  group_label: "pinterest Ads"
  label: "pinterest Ads Impressions by Campaign"
  view_label: "Impressions by Campaign"
}

view: pinterest_ad_impressions_campaign_template {
  extends: [pinterest_ad_impressions_base, pinterest_ad_impressions_campaign_adapter]
}

explore: pinterest_ad_impressions_ad_group_template {
  persist_with: pinterest_ads_etl_datagroup
  extends: [pinterest_ad_impressions_ad_group_adapter]
  from: pinterest_ad_impressions_ad_group
  view_name: fact
  group_label: "pinterest Ads"
  label: "pinterest Ads Impressions by Ad Group"
  view_label: "Impressions by Ad Group"
}

view: pinterest_ad_impressions_ad_group_template {
  extends: [pinterest_ad_impressions_base, pinterest_ad_impressions_ad_group_adapter]
}

explore: pinterest_ad_impressions_keyword_template {
  persist_with: pinterest_ads_etl_datagroup
  extends: [pinterest_ad_impressions_keyword_adapter]
  from: pinterest_ad_impressions_keyword
  view_name: fact
  hidden: yes
  group_label: "pinterest Ads"
  label: "pinterest Ads Impressions by Keyword"
  view_label: "Impressions by Keyword"
}

view: pinterest_ad_impressions_keyword_template {
  extends: [pinterest_ad_impressions_base, pinterest_ad_impressions_keyword_adapter]
}

explore: pinterest_ad_impressions_ad_template {
  persist_with: pinterest_ads_etl_datagroup
  extends: [pinterest_ad_impressions_ad_adapter]
  from: pinterest_ad_impressions_ad
  view_name: fact
  group_label: "pinterest Ads"
  label: "pinterest Ads Impressions by Ad"
  view_label: "Impressions by Ad"
}

view: pinterest_ad_impressions_ad_template {
  extends: [pinterest_ad_impressions_base, pinterest_ad_impressions_ad_adapter]
}
