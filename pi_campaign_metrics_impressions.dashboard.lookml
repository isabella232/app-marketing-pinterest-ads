- dashboard: pi_campaign_metrics_impressions
  title: Pinterest Campaign Metrics - Impressions
  extends: pinterest_ads_base
  elements:
  - title: Impressions To Date
    name: Impressions To Date
    model: marketing_analytics
    explore: pinterest_ad_group_date_fact
    type: looker_line
    fields: [fact.date_date, fact.total_cost, fact.average_cost_per_conversion, fact.total_conversions,
      fact.total_clicks, fact.total_impressions]
    fill_fields: [fact.date_date]
    filters:
      fact.period: 28 day
      fact.date_period_latest: 'Yes'
    sorts: [fact.date_date desc]
    limit: 500
    query_timezone: America/New_York
    color_application:
      collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
      palette_id: fb7bb53e-b77b-4ab6-8274-9d420d3d73f3
      options:
        steps: 5
        __FILE: app-marketing-pinterest-ads/pinterest_overview.dashboard.lookml
        __LINE_NUM: 231
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    y_axes: [{label: '', orientation: left, series: [{axisId: fact.average_cost_per_conversion,
            id: fact.average_cost_per_conversion, name: Cost per Conversion., __FILE: app-marketing-pinterest-ads/pinterest_overview.dashboard.lookml,
            __LINE_NUM: 235}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear, __FILE: app-marketing-pinterest-ads/pinterest_overview.dashboard.lookml,
        __LINE_NUM: 235}, {label: !!null '', orientation: left, series: [{axisId: fact.average_conversion_rate,
            id: fact.average_conversion_rate, name: Conversion Rate, __FILE: app-marketing-pinterest-ads/pinterest_overview.dashboard.lookml,
            __LINE_NUM: 239}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear, __FILE: app-marketing-pinterest-ads/pinterest_overview.dashboard.lookml,
        __LINE_NUM: 238}, {label: !!null '', orientation: right, series: [{axisId: fact.total_conversions,
            id: fact.total_conversions, name: Conversions, __FILE: app-marketing-pinterest-ads/pinterest_overview.dashboard.lookml,
            __LINE_NUM: 242}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear, __FILE: app-marketing-pinterest-ads/pinterest_overview.dashboard.lookml,
        __LINE_NUM: 241}]
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    hidden_series: [fact.average_conversion_rate, fact.total_conversions, fact.average_cost_per_conversion,
      fact.average_cost_per_click, fact.average_click_rate, fact.total_cost, fact.total_clicks]
    legend_position: center
    series_types: {}
    point_style: none
    series_colors:
      fact.cumulative_spend: "#4bb86a"
      last_fact.cumulative_spend: "#8fe4a7"
      fact.average_cost_per_conversion: "#7869df"
      fact.average_conversion_rate: "#6e98f9"
      fact.total_conversions: "#8ac8ca"
      fact.total_clicks: "#FBB555"
    series_labels:
      fact.cumulative_spend: This Period
      last_fact.cumulative_spend: Prior Period
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    custom_color_enabled: true
    custom_color: ''
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: true
    show_comparison_label: false
    hidden_fields: [total_conversion_change]
    listen:
      Period: fact.period
      Period Latest: fact.date_period_latest
    row: 0
    col: 0
    width: 24
    height: 11
  - title: Impressions By Day Of Week
    name: Impressions By Day Of Week
    model: marketing_analytics
    explore: pinterest_ad_group_date_fact
    type: looker_bar
    fields: [fact.date_day_of_week, fact.total_impressions]
    fill_fields: [fact.date_day_of_week]
    filters:
      fact.period: 28 day
      fact.date_period_latest: 'Yes'
    sorts: [fact.total_impressions desc]
    limit: 500
    query_timezone: America/New_York
    color_application:
      collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
      palette_id: fb7bb53e-b77b-4ab6-8274-9d420d3d73f3
      options:
        steps: 5
        __FILE: app-marketing-pinterest-ads/pinterest_overview.dashboard.lookml
        __LINE_NUM: 231
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    y_axes: [{label: '', orientation: bottom, series: [{axisId: fact.total_impressions,
            id: fact.total_impressions, name: Impressions}], showLabels: false, showValues: false,
        unpinAxis: false, tickDensity: default, type: linear}]
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    hidden_series: [fact.average_conversion_rate, fact.total_conversions, fact.average_cost_per_click,
      fact.average_click_rate, fact.total_cost]
    legend_position: center
    series_types: {}
    point_style: none
    series_colors:
      fact.cumulative_spend: "#4bb86a"
      last_fact.cumulative_spend: "#8fe4a7"
      fact.average_cost_per_conversion: "#7869df"
      fact.average_conversion_rate: "#6e98f9"
      fact.total_conversions: "#8ac8ca"
      fact.average_cost_per_click: "#72D16D"
      fact.total_cost: "#B1399E"
      fact.average_click_rate: "#FBB555"
      fact.total_clicks: "#4276BE"
    series_labels:
      fact.cumulative_spend: This Period
      last_fact.cumulative_spend: Prior Period
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    show_null_points: true
    interpolation: linear
    custom_color_enabled: true
    custom_color: ''
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: true
    show_comparison_label: false
    hidden_fields: [total_conversion_change]
    listen:
      Period: fact.period
      Period Latest: fact.date_period_latest
    row: 11
    col: 0
    width: 12
    height: 8
  - title: Impressions By Bid Type
    name: Impressions By Bid Type
    model: marketing_analytics
    explore: pinterest_ad_group_date_fact
    type: looker_bar
    fields: [ad_group.bid_type, fact.total_impressions]
    filters:
      fact.period: 28 day
      fact.date_period_latest: 'Yes'
    sorts: [fact.total_impressions desc]
    limit: 500
    query_timezone: America/New_York
    color_application:
      collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
      palette_id: fb7bb53e-b77b-4ab6-8274-9d420d3d73f3
      options:
        steps: 5
        __FILE: app-marketing-pinterest-ads/pinterest_overview.dashboard.lookml
        __LINE_NUM: 231
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    y_axes: [{label: '', orientation: bottom, series: [{axisId: fact.total_impressions,
            id: fact.total_impressions, name: Impressions}], showLabels: false, showValues: false,
        unpinAxis: false, tickDensity: default, type: linear}]
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    hidden_series: [fact.average_conversion_rate, fact.total_conversions, fact.average_cost_per_click,
      fact.average_click_rate, fact.total_cost]
    legend_position: center
    series_types: {}
    point_style: none
    series_colors:
      fact.cumulative_spend: "#4bb86a"
      last_fact.cumulative_spend: "#8fe4a7"
      fact.average_cost_per_conversion: "#7869df"
      fact.average_conversion_rate: "#6e98f9"
      fact.total_conversions: "#8ac8ca"
      fact.average_cost_per_click: "#72D16D"
      fact.total_cost: "#B1399E"
      fact.average_click_rate: "#FBB555"
      fact.total_clicks: "#FBB555"
    series_labels:
      fact.cumulative_spend: This Period
      last_fact.cumulative_spend: Prior Period
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    show_null_points: true
    interpolation: linear
    custom_color_enabled: true
    custom_color: ''
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: true
    show_comparison_label: false
    hidden_fields: [total_conversion_change]
    listen:
      Period: fact.period
      Period Latest: fact.date_period_latest
    row: 11
    col: 12
    width: 12
    height: 8
  - title: Ad Group Impressions Change
    name: Ad Group Impressions Change
    model: marketing_analytics
    explore: pinterest_ad_group_date_fact
    type: looker_bar
    fields: [ad_group.ad_group_name, last_fact.total_impressions_period_delta, last_fact.total_impressions,
      fact.total_impressions]
    filters:
      fact.total_conversions_period_delta_abs: ">0"
      fact.period: 28 day
      fact.date_period_latest: 'Yes'
      account.account_name: ''
      ad_group.ad_group_name: ''
    sorts: [fact.total_conversions_period_delta_abs desc]
    limit: 50
    column_limit: 50
    query_timezone: America/Los_Angeles
    stacking: ''
    colors: ["#a6b7ff", "#7869df", "#ea9895", "#d06180", "#6e98f9", "#8ac8ca", "#dc9d4f",
      "#4bb86a", "#a4a6a9", "#a6b7ff", "#afe8fd", "#ea989"]
    show_value_labels: true
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    point_style: none
    series_colors: {}
    series_types: {}
    limit_displayed_rows: true
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '10'
    y_axes: [{label: '', orientation: bottom, series: [{id: last_fact.total_impressions,
            name: Ad Group Last Period, axisId: last_fact.total_impressions, __FILE: app-marketing-config-5f71074d49e24011ceee3a8ee7cf1e94-a86f3012e721f02f3d522404ff42fac45a79a9dc/bi_campaign_metrics_impressions.dashboard.lookml,
            __LINE_NUM: 712}, {id: fact.total_impressions, name: Ad Group This Period,
            axisId: fact.total_impressions, __FILE: app-marketing-config-5f71074d49e24011ceee3a8ee7cf1e94-a86f3012e721f02f3d522404ff42fac45a79a9dc/bi_campaign_metrics_impressions.dashboard.lookml,
            __LINE_NUM: 715}], showLabels: true, showValues: false, unpinAxis: false,
        tickDensity: default, type: linear, __FILE: app-marketing-config-5f71074d49e24011ceee3a8ee7cf1e94-a86f3012e721f02f3d522404ff42fac45a79a9dc/bi_campaign_metrics_impressions.dashboard.lookml,
        __LINE_NUM: 709}]
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: gray
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    hidden_fields: [campaign.campaign_name, last_fact.total_impressions_period_delta]
    listen:
      Period: fact.period
      Period Latest: fact.date_period_latest
    row: 19
    col: 0
    width: 8
    height: 6
  - title: Ad Impressions Change
    name: Ad Impressions Change
    model: marketing_analytics
    explore: pinterest_ad_date_fact
    type: looker_bar
    fields: [last_fact.total_impressions_period_delta, last_fact.total_impressions,
      fact.total_impressions, ad.name]
    filters:
      fact.total_conversions_period_delta_abs: ">0"
      fact.period: 28 day
      fact.date_period_latest: 'Yes'
      account.account_name: ''
      ad_group.ad_group_name: ''
    sorts: [fact.total_conversions_period_delta_abs desc]
    limit: 50
    column_limit: 50
    query_timezone: America/Los_Angeles
    stacking: ''
    colors: ["#a6b7ff", "#7869df", "#ea9895", "#d06180", "#6e98f9", "#8ac8ca", "#dc9d4f",
      "#4bb86a", "#a4a6a9", "#a6b7ff", "#afe8fd", "#ea989"]
    show_value_labels: true
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    point_style: none
    series_colors: {}
    series_types: {}
    limit_displayed_rows: true
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '10'
    y_axes: [{label: '', orientation: bottom, series: [{id: last_fact.total_impressions,
            name: Ad Group Last Period, axisId: last_fact.total_impressions, __FILE: app-marketing-config-5f71074d49e24011ceee3a8ee7cf1e94-a86f3012e721f02f3d522404ff42fac45a79a9dc/bi_campaign_metrics_impressions.dashboard.lookml,
            __LINE_NUM: 712}, {id: fact.total_impressions, name: Ad Group This Period,
            axisId: fact.total_impressions, __FILE: app-marketing-config-5f71074d49e24011ceee3a8ee7cf1e94-a86f3012e721f02f3d522404ff42fac45a79a9dc/bi_campaign_metrics_impressions.dashboard.lookml,
            __LINE_NUM: 715}], showLabels: true, showValues: false, unpinAxis: false,
        tickDensity: default, type: linear, __FILE: app-marketing-config-5f71074d49e24011ceee3a8ee7cf1e94-a86f3012e721f02f3d522404ff42fac45a79a9dc/bi_campaign_metrics_impressions.dashboard.lookml,
        __LINE_NUM: 709}]
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: gray
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    hidden_fields: [campaign.campaign_name, last_fact.total_impressions_period_delta]
    listen:
      Period: fact.period
      Period Latest: fact.date_period_latest
    row: 19
    col: 8
    width: 8
    height: 6
  - title: Landing Pages Impressions Change
    name: Landing Pages Impressions Change
    model: marketing_analytics
    explore: pinterest_ad_date_fact
    type: looker_bar
    fields: [last_fact.total_impressions_period_delta, last_fact.total_impressions,
      fact.total_impressions, ad.display_url]
    filters:
      fact.total_conversions_period_delta_abs: ">0"
      fact.period: 28 day
      fact.date_period_latest: 'Yes'
      account.account_name: ''
      ad_group.ad_group_name: ''
    sorts: [fact.total_conversions_period_delta_abs desc]
    limit: 50
    column_limit: 50
    query_timezone: America/Los_Angeles
    stacking: ''
    colors: ["#a6b7ff", "#7869df", "#ea9895", "#d06180", "#6e98f9", "#8ac8ca", "#dc9d4f",
      "#4bb86a", "#a4a6a9", "#a6b7ff", "#afe8fd", "#ea989"]
    show_value_labels: true
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    point_style: none
    series_colors: {}
    series_types: {}
    limit_displayed_rows: true
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '10'
    y_axes: [{label: '', orientation: bottom, series: [{id: last_fact.total_impressions,
            name: Ad Group Last Period, axisId: last_fact.total_impressions, __FILE: app-marketing-config-5f71074d49e24011ceee3a8ee7cf1e94-a86f3012e721f02f3d522404ff42fac45a79a9dc/bi_campaign_metrics_impressions.dashboard.lookml,
            __LINE_NUM: 712}, {id: fact.total_impressions, name: Ad Group This Period,
            axisId: fact.total_impressions, __FILE: app-marketing-config-5f71074d49e24011ceee3a8ee7cf1e94-a86f3012e721f02f3d522404ff42fac45a79a9dc/bi_campaign_metrics_impressions.dashboard.lookml,
            __LINE_NUM: 715}], showLabels: true, showValues: false, unpinAxis: false,
        tickDensity: default, type: linear, __FILE: app-marketing-config-5f71074d49e24011ceee3a8ee7cf1e94-a86f3012e721f02f3d522404ff42fac45a79a9dc/bi_campaign_metrics_impressions.dashboard.lookml,
        __LINE_NUM: 709}]
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: gray
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    hidden_fields: [campaign.campaign_name, last_fact.total_impressions_period_delta]
    listen:
      Period: fact.period
      Period Latest: fact.date_period_latest
    row: 19
    col: 16
    width: 8
    height: 6
