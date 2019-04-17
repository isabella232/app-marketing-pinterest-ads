- dashboard: pi_campaign_metrics_conversion_rate
  title: Pinterest Campaign Metrics - Conversion Rate
  extends: pinterest_ads_base
  elements:
  - title: Conversion Rate To Date
    name: Conversion Rate To Date
    model: marketing_analytics
    explore: pinterest_ad_group_date_fact
    type: looker_line
    fields: [fact.date_date, fact.total_cost, fact.average_cost_per_conversion, fact.average_conversion_rate,
      fact.total_conversions, fact.average_cost_per_click, fact.average_click_rate]
    fill_fields: [fact.date_date]
    filters:
      fact.period: 28 day
      fact.date_period_latest: 'Yes'
    sorts: [fact.date_date desc]
    limit: 500
    query_timezone: America/New_York
    color_application:
      collection_id: legacy
      palette_id: fuchsia_to_green
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
    hidden_series: [fact.total_conversions, fact.average_cost_per_click, fact.average_click_rate,
      fact.total_cost, fact.average_cost_per_conversion]
    legend_position: center
    series_types: {}
    point_style: none
    series_colors:
      fact.cumulative_spend: "#4bb86a"
      last_fact.cumulative_spend: "#8fe4a7"
      fact.average_cost_per_conversion: "#7869df"
      fact.average_conversion_rate: "#6e98f9"
      fact.total_conversions: "#8ac8ca"
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
    row: 0
    col: 0
    width: 24
    height: 11
  - title: Conversion Rate By Day Of Week
    name: Conversion Rate By Day Of Week
    model: marketing_analytics
    explore: pinterest_ad_group_date_fact
    type: looker_bar
    fields: [fact.date_day_of_week, fact.average_conversion_rate]
    fill_fields: [fact.date_day_of_week]
    filters:
      fact.period: 28 day
      fact.date_period_latest: 'Yes'
    sorts: [fact.average_conversion_rate desc]
    limit: 500
    query_timezone: America/New_York
    color_application:
      collection_id: legacy
      palette_id: fuchsia_to_green
      options:
        steps: 5
        __FILE: app-marketing-pinterest-ads/pinterest_overview.dashboard.lookml
        __LINE_NUM: 231
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    y_axes: [{label: '', orientation: bottom, series: [{axisId: fact.average_conversion_rate,
            id: fact.average_conversion_rate, name: Conversion Rate}], showLabels: false,
        showValues: false, unpinAxis: false, tickDensity: default, type: linear}]
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
    row: 11
    col: 0
    width: 12
    height: 8
  - title: Conversion Rate By Bid Type
    name: Conversion Rate By Bid Type
    model: marketing_analytics
    explore: pinterest_ad_group_date_fact
    type: looker_bar
    fields: [ad_group.bid_type, fact.average_conversion_rate]
    filters:
      fact.period: 28 day
      fact.date_period_latest: 'Yes'
    sorts: [fact.average_conversion_rate desc]
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
    y_axes: [{label: '', orientation: bottom, series: [{axisId: fact.average_conversion_rate,
            id: fact.average_conversion_rate, name: Conversion Rate}], showLabels: false,
        showValues: false, unpinAxis: false, tickDensity: default, type: linear}]
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
      fact.average_cost_per_conversion: "#3EB0D5"
      fact.average_conversion_rate: "#6e98f9"
      fact.total_conversions: "#8ac8ca"
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
    row: 11
    col: 12
    width: 12
    height: 8
  - title: Ad Group Conversion Rate Change
    name: Ad Group Conversion Rate Change
    model: marketing_analytics
    explore: pinterest_ad_group_date_fact
    type: looker_bar
    fields: [ad_group.ad_group_name, last_fact.average_conversion_rate, fact.average_conversion_rate,
      fact.total_conversions, fact.total_clicks, last_fact.total_conversions, last_fact.total_clicks,
      fact.average_conversion_rate_period_percent_change]
    filters:
      fact.average_conversion_rate_period_percent_change: NOT NULL
      fact.period: 28 day
      fact.date_period_latest: 'Yes'
    sorts: [fact.average_conversion_rate_period_percent_change desc]
    limit: 50
    column_limit: 50
    query_timezone: America/Los_Angeles
    stacking: ''
    colors: ["#a6b7ff", "#7869df", "#6e98f9", "#8ac8ca", "#d06180", "#dc9d4f", "#4bb86a",
      "#a4a6a9", "#a6b7ff", "#afe8fd", "#ea9895", "#f1e582"]
    show_value_labels: true
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    point_style: none
    series_colors: {}
    series_labels:
      fact.average_conversion_rate: This Period
      last_fact.average_conversion_rate: Prior Period
    series_types: {}
    limit_displayed_rows: true
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '10'
    y_axes: [{label: '', maxValue: !!null '', minValue: !!null '', orientation: bottom,
        showLabels: true, showValues: false, tickDensity: default, tickDensityCustom: !!null '',
        type: linear, unpinAxis: false, valueFormat: !!null '', series: [{id: fact.average_conversion_rate,
            name: Period Fact, axisId: fact.average_conversion_rate, __FILE: app-marketing-config-5f71074d49e24011ceee3a8ee7cf1e94-a86f3012e721f02f3d522404ff42fac45a79a9dc/bi_campaign_metrics_conversion_rate.dashboard.lookml,
            __LINE_NUM: 522}, {id: last_fact.average_conversion_rate, name: Last Period
              Fact, axisId: last_fact.average_conversion_rate, __FILE: app-marketing-config-5f71074d49e24011ceee3a8ee7cf1e94-a86f3012e721f02f3d522404ff42fac45a79a9dc/bi_campaign_metrics_conversion_rate.dashboard.lookml,
            __LINE_NUM: 527}], __FILE: app-marketing-config-5f71074d49e24011ceee3a8ee7cf1e94-a86f3012e721f02f3d522404ff42fac45a79a9dc/bi_campaign_metrics_conversion_rate.dashboard.lookml,
        __LINE_NUM: 510}]
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
    table_theme: editable
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    hidden_fields: [campaign.name, fact.total_conversions, fact.total_clicks, last_fact.total_conversions,
      last_fact.total_clicks, fact.average_conversion_rate_period_percent_change]
    row: 19
    col: 0
    width: 12
    height: 8
  - title: Ad Conversion Rate Change
    name: Ad Conversion Rate Change
    model: marketing_analytics
    explore: pinterest_ad_date_fact
    type: looker_bar
    fields: [last_fact.average_conversion_rate, fact.average_conversion_rate, fact.average_conversion_rate_period_percent_change,
      ad.name]
    filters:
      fact.average_conversion_rate_period_percent_change: NOT NULL
      fact.period: 28 day
      fact.date_period_latest: 'Yes'
    sorts: [fact.average_conversion_rate_period_percent_change desc]
    limit: 50
    column_limit: 50
    query_timezone: America/Los_Angeles
    stacking: ''
    colors: ["#a6b7ff", "#7869df", "#6e98f9", "#8ac8ca", "#d06180", "#dc9d4f", "#4bb86a",
      "#a4a6a9", "#a6b7ff", "#afe8fd", "#ea9895", "#f1e582"]
    show_value_labels: true
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    point_style: none
    series_colors: {}
    series_labels:
      fact.average_conversion_rate: This Period
      last_fact.average_conversion_rate: Prior Period
    series_types: {}
    limit_displayed_rows: true
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '10'
    y_axes: [{label: '', maxValue: !!null '', minValue: !!null '', orientation: bottom,
        showLabels: true, showValues: false, tickDensity: default, tickDensityCustom: !!null '',
        type: linear, unpinAxis: false, valueFormat: !!null '', series: [{id: fact.average_conversion_rate,
            name: Period Fact, axisId: fact.average_conversion_rate, __FILE: app-marketing-config-5f71074d49e24011ceee3a8ee7cf1e94-a86f3012e721f02f3d522404ff42fac45a79a9dc/bi_campaign_metrics_conversion_rate.dashboard.lookml,
            __LINE_NUM: 522}, {id: last_fact.average_conversion_rate, name: Last Period
              Fact, axisId: last_fact.average_conversion_rate, __FILE: app-marketing-config-5f71074d49e24011ceee3a8ee7cf1e94-a86f3012e721f02f3d522404ff42fac45a79a9dc/bi_campaign_metrics_conversion_rate.dashboard.lookml,
            __LINE_NUM: 527}], __FILE: app-marketing-config-5f71074d49e24011ceee3a8ee7cf1e94-a86f3012e721f02f3d522404ff42fac45a79a9dc/bi_campaign_metrics_conversion_rate.dashboard.lookml,
        __LINE_NUM: 510}]
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
    table_theme: editable
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    hidden_fields: [campaign.name, fact.average_conversion_rate_period_percent_change]
    row: 19
    col: 12
    width: 12
    height: 8
