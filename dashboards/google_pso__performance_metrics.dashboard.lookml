---
- dashboard: google_pso__performance_metrics
  title: Google PSO - Performance Metrics
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  filters_location_top: false
  preferred_slug: xoOJEz25fifqhGaa3DKk9K
  elements:
  - title: Average Async Runtime
    name: Average Async Runtime
    model: system__activity
    explore: query_metrics
    type: single_value
    fields: [query_metrics.async_processing_average]
    filters:
      is_async_runtime_value_populated: 'Yes'
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: dimension
      description: ''
      label: Is Async Runtime Value Populated
      value_format:
      value_format_name:
      calculation_type: group_by
      dimension: is_async_runtime_value_populated
      args:
      - query_metrics.async_processing
      - - label: 'Yes'
          filter: ">0"
          __FILE: healthcheck-sa-dashboards/dashboards/google_pso__performance_metrics.dashboard.lookml
          __LINE_NUM: 30
      - 'No'
      _kind_hint: dimension
      _type_hint: string
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: Average Async Runtime
    defaults_version: 1
    note_state: collapsed
    note_display: hover
    note_text: The amount of time a query takes to run from beginning to end inclusive
      of all pre and post main query execution activities
    listen:
      Date: history.created_date
      Workspace ID: history.workspace_id
      Result Source: history.result_source
      Model: query.model
      Explore: query.view
      User: user.name
      Status: history.status
      Dashboard: dashboard.title
      Dialect: history.dialect
      Source: history.source
    row: 2
    col: 6
    width: 6
    height: 4
  - title: Average Query Queue Time
    name: Average Query Queue Time
    model: system__activity
    explore: query_metrics
    type: single_value
    fields: [query_metrics.queued_average, history.query_run_count_drill]
    filters:
      query_metrics.queued: ">0"
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: dimension
      description: ''
      label: Is Async Runtime Value Populated
      value_format:
      value_format_name:
      calculation_type: group_by
      dimension: is_async_runtime_value_populated
      args:
      - query_metrics.async_processing
      - - label: 'Yes'
          filter: ">0"
          __FILE: healthcheck-sa-dashboards/dashboards/google_pso__performance_metrics.dashboard.lookml
          __LINE_NUM: 87
      - 'No'
      _kind_hint: dimension
      _type_hint: string
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: Average Query Queue Time
    comparison_label: Queued queries
    defaults_version: 1
    hidden_pivots: {}
    note_state: collapsed
    note_display: hover
    note_text: 'The average length of time a query spends in queue waiting for a database
      connection when the database does not have open slots or is allocating a connection. '
    listen:
      Date: history.created_date
      Workspace ID: history.workspace_id
      Result Source: history.result_source
      Model: query.model
      Explore: query.view
      User: user.name
      Status: history.status
      Dashboard: dashboard.title
      Dialect: history.dialect
      Source: history.source
    row: 12
    col: 8
    width: 4
    height: 4
  - title: Acquire Connection Average
    name: Acquire Connection Average
    model: system__activity
    explore: query_metrics
    type: single_value
    fields: [query_metrics.acquire_connection_average, history.query_run_count_drill]
    filters:
      query_metrics.acquire_connection: ">0"
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: dimension
      description: ''
      label: Is Async Runtime Value Populated
      value_format:
      value_format_name:
      calculation_type: group_by
      dimension: is_async_runtime_value_populated
      args:
      - query_metrics.async_processing
      - - label: 'Yes'
          filter: ">0"
          __FILE: healthcheck-sa-dashboards/dashboards/google_pso__performance_metrics.dashboard.lookml
          __LINE_NUM: 146
      - 'No'
      _kind_hint: dimension
      _type_hint: string
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: Acquire Connection Time
    comparison_label: Acquire Connection Queries
    defaults_version: 1
    hidden_pivots: {}
    note_state: collapsed
    note_display: hover
    note_text: The time it takes in seconds for the Looker instance to acquire a connection
      to the database. This includes time to look up the credentials for the user, create
      the connection pool if it does not already exist, and initialise the connection
      for use.
    listen:
      Date: history.created_date
      Workspace ID: history.workspace_id
      Result Source: history.result_source
      Model: query.model
      Explore: query.view
      User: user.name
      Status: history.status
      Dashboard: dashboard.title
      Dialect: history.dialect
      Source: history.source
    row: 12
    col: 0
    width: 4
    height: 4
  - title: New Tile
    name: New Tile
    model: system__activity
    explore: query_metrics
    type: single_value
    fields: [query_metrics.per_user_throttler_average, was_per_user_throttling_applied_yesno,
      history.query_run_count_drill]
    filters:
      is_async_runtime_value_populated: 'Yes'
      was_per_user_throttling_applied_yesno: 'Yes'
    sorts: [query_metrics.per_user_throttler_average desc]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: dimension
      description: ''
      label: Is Async Runtime Value Populated
      value_format:
      value_format_name:
      calculation_type: group_by
      dimension: is_async_runtime_value_populated
      args:
      - query_metrics.async_processing
      - - label: 'Yes'
          filter: ">0"
          __FILE: healthcheck-sa-dashboards/dashboards/google_pso__performance_metrics.dashboard.lookml
          __LINE_NUM: 210
      - 'No'
      _kind_hint: dimension
      _type_hint: string
    - category: dimension
      description: ''
      label: Was Per User Throttling applied (Yes/No)
      value_format:
      value_format_name:
      calculation_type: group_by
      dimension: was_per_user_throttling_applied_yesno
      args:
      - query_metrics.per_user_throttler
      - - label: 'Yes'
          filter: ">0"
          __FILE: healthcheck-sa-dashboards/dashboards/google_pso__performance_metrics.dashboard.lookml
          __LINE_NUM: 226
      - 'No'
      _kind_hint: dimension
      _type_hint: string
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: Per User Throttler Average
    comparison_label: Queries with Per User Throttling
    defaults_version: 1
    hidden_pivots: {}
    note_state: collapsed
    note_display: hover
    note_text: "Time in seconds that the query spends waiting for a connection to\
      \ be\navailable for the user to run the query. There is a limit of 15 concurrent\
      \ queries per user implemented within Looker. Where a user has greater than\
      \ 15 queries running concurrently, a queue will be created and queries will\
      \ be held. This can be an issue  when working with excessively large dashboards.\
      \  \n"
    listen:
      Date: history.created_date
      Workspace ID: history.workspace_id
      Result Source: history.result_source
      Model: query.model
      Explore: query.view
      User: user.name
      Status: history.status
      Dashboard: dashboard.title
      Dialect: history.dialect
      Source: history.source
    row: 12
    col: 4
    width: 4
    height: 4
  - title: Query Run Count
    name: Query Run Count
    model: system__activity
    explore: query_metrics
    type: single_value
    fields: [history.query_run_count_drill, history.database_result_query_count]
    filters:
      is_async_runtime_value_populated: 'Yes'
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: dimension
      description: ''
      label: Is Async Runtime Value Populated
      value_format:
      value_format_name:
      calculation_type: group_by
      dimension: is_async_runtime_value_populated
      args:
      - query_metrics.async_processing
      - - label: 'Yes'
          filter: ">0"
          __FILE: healthcheck-sa-dashboards/dashboards/google_pso__performance_metrics.dashboard.lookml
          __LINE_NUM: 289
      - 'No'
      _kind_hint: dimension
      _type_hint: string
    - category: dimension
      description: ''
      label: Was Per User Throttling applied (Yes/No)
      value_format:
      value_format_name:
      calculation_type: group_by
      dimension: was_per_user_throttling_applied_yesno
      args:
      - query_metrics.per_user_throttler
      - - label: 'Yes'
          filter: ">0"
          __FILE: healthcheck-sa-dashboards/dashboards/google_pso__performance_metrics.dashboard.lookml
          __LINE_NUM: 305
      - 'No'
      _kind_hint: dimension
      _type_hint: string
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: Total Query Count
    comparison_label: Queries From BigQuery
    defaults_version: 1
    hidden_pivots: {}
    note_state: collapsed
    note_display: hover
    note_text: "The total number of queries within the period including those run\
      \ directly against the database and who's results were retrieved from Cache.\
      \ \nNOTE: This only reflects queries which capture query metric values. History\
      \ explore results may be higher. "
    listen:
      Date: history.created_date
      Workspace ID: history.workspace_id
      Result Source: history.result_source
      Model: query.model
      Explore: query.view
      User: user.name
      Status: history.status
      Dashboard: dashboard.title
      Dialect: history.dialect
      Source: history.source
    row: 2
    col: 18
    width: 6
    height: 4
  - title: Explore Init
    name: Explore Init
    model: system__activity
    explore: query_metrics
    type: single_value
    fields: [query_metrics.explore_init_average, history.query_run_count_drill]
    filters:
      query_metrics.explore_init: ">0"
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: dimension
      description: ''
      label: Is Async Runtime Value Populated
      value_format:
      value_format_name:
      calculation_type: group_by
      dimension: is_async_runtime_value_populated
      args:
      - query_metrics.async_processing
      - - label: 'Yes'
          filter: ">0"
          __FILE: healthcheck-sa-dashboards/dashboards/google_pso__performance_metrics.dashboard.lookml
          __LINE_NUM: 366
      - 'No'
      _kind_hint: dimension
      _type_hint: string
    - category: dimension
      description: ''
      label: Was Per User Throttling applied (Yes/No)
      value_format:
      value_format_name:
      calculation_type: group_by
      dimension: was_per_user_throttling_applied_yesno
      args:
      - query_metrics.per_user_throttler
      - - label: 'Yes'
          filter: ">0"
          __FILE: healthcheck-sa-dashboards/dashboards/google_pso__performance_metrics.dashboard.lookml
          __LINE_NUM: 382
      - 'No'
      _kind_hint: dimension
      _type_hint: string
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: 'Explore Init: Compute'
    comparison_label: Explore Init Queries
    defaults_version: 1
    hidden_pivots: {}
    note_state: collapsed
    note_display: hover
    note_text: "Time it takes in seconds to initialize the Explore before starting\
      \ to\nprepare it. When this figure is excessive it suggests that simplification\
      \ of the explore would see performance improvement. "
    listen:
      Date: history.created_date
      Workspace ID: history.workspace_id
      Result Source: history.result_source
      Model: query.model
      Explore: query.view
      User: user.name
      Status: history.status
      Dashboard: dashboard.title
      Dialect: history.dialect
      Source: history.source
    row: 7
    col: 12
    width: 4
    height: 4
  - title: Model Init
    name: Model Init
    model: system__activity
    explore: query_metrics
    type: single_value
    fields: [query_metrics.model_init_computed_average, history.query_run_count_drill]
    filters:
      query_metrics.model_init_computed: ">0"
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: dimension
      description: ''
      label: Is Async Runtime Value Populated
      value_format:
      value_format_name:
      calculation_type: group_by
      dimension: is_async_runtime_value_populated
      args:
      - query_metrics.async_processing
      - - label: 'Yes'
          filter: ">0"
          __FILE: healthcheck-sa-dashboards/dashboards/google_pso__performance_metrics.dashboard.lookml
          __LINE_NUM: 442
      - 'No'
      _kind_hint: dimension
      _type_hint: string
    - category: dimension
      description: ''
      label: Was Per User Throttling applied (Yes/No)
      value_format:
      value_format_name:
      calculation_type: group_by
      dimension: was_per_user_throttling_applied_yesno
      args:
      - query_metrics.per_user_throttler
      - - label: 'Yes'
          filter: ">0"
          __FILE: healthcheck-sa-dashboards/dashboards/google_pso__performance_metrics.dashboard.lookml
          __LINE_NUM: 458
      - 'No'
      _kind_hint: dimension
      _type_hint: string
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: 'Model Init: Compute'
    comparison_label: Model Init Queries
    defaults_version: 1
    hidden_pivots: {}
    note_state: collapsed
    note_display: hover
    note_text: "Time it takes in seconds to load and parse the model required to run\
      \ a\nquery. When greater than milliseconds then it suggests over complexity\
      \ of models and simplification such as breaking out explores is merited "
    listen:
      Date: history.created_date
      Workspace ID: history.workspace_id
      Result Source: history.result_source
      Model: query.model
      Explore: query.view
      User: user.name
      Status: history.status
      Dashboard: dashboard.title
      Dialect: history.dialect
      Source: history.source
    row: 7
    col: 4
    width: 4
    height: 4
  - title: Prepare Average
    name: Prepare Average
    model: system__activity
    explore: query_metrics
    type: single_value
    fields: [query_metrics.prepare_average, history.query_run_count_drill]
    filters:
      query_metrics.prepare: ">0"
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: dimension
      description: ''
      label: Is Async Runtime Value Populated
      value_format:
      value_format_name:
      calculation_type: group_by
      dimension: is_async_runtime_value_populated
      args:
      - query_metrics.async_processing
      - - label: 'Yes'
          filter: ">0"
          __FILE: healthcheck-sa-dashboards/dashboards/google_pso__performance_metrics.dashboard.lookml
          __LINE_NUM: 518
      - 'No'
      _kind_hint: dimension
      _type_hint: string
    - category: dimension
      description: ''
      label: Was Per User Throttling applied (Yes/No)
      value_format:
      value_format_name:
      calculation_type: group_by
      dimension: was_per_user_throttling_applied_yesno
      args:
      - query_metrics.per_user_throttler
      - - label: 'Yes'
          filter: ">0"
          __FILE: healthcheck-sa-dashboards/dashboards/google_pso__performance_metrics.dashboard.lookml
          __LINE_NUM: 534
      - 'No'
      _kind_hint: dimension
      _type_hint: string
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: Prepare Average
    comparison_label: Prepare Queries
    defaults_version: 1
    hidden_pivots: {}
    note_state: collapsed
    note_display: hover
    note_text: 'Time it takes in seconds to prepare the query from the Explore definition.
      This value should be measures in milliseconds. Where greater it suggests that
      simplification of logic within views such as through the use of PDTs are migrating
      logic back to the database will benefit run time. Can also be reduced through the
      restructuring & simplification of explore join structures.  '
    listen:
      Date: history.created_date
      Workspace ID: history.workspace_id
      Result Source: history.result_source
      Model: query.model
      Explore: query.view
      User: user.name
      Status: history.status
      Dashboard: dashboard.title
      Dialect: history.dialect
      Source: history.source
    row: 7
    col: 20
    width: 4
    height: 4
  - title: Main Query Execution
    name: Main Query Execution
    model: system__activity
    explore: query_metrics
    type: single_value
    fields: [query_metrics.execute_main_query_average]
    filters:
      query_metrics.execute_main_query: ">0"
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: dimension
      description: ''
      label: Is Async Runtime Value Populated
      value_format:
      value_format_name:
      calculation_type: group_by
      dimension: is_async_runtime_value_populated
      args:
      - query_metrics.async_processing
      - - label: 'Yes'
          filter: ">0"
          __FILE: healthcheck-sa-dashboards/dashboards/google_pso__performance_metrics.dashboard.lookml
          __LINE_NUM: 596
      - 'No'
      _kind_hint: dimension
      _type_hint: string
    - category: dimension
      description: ''
      label: Was Per User Throttling applied (Yes/No)
      value_format:
      value_format_name:
      calculation_type: group_by
      dimension: was_per_user_throttling_applied_yesno
      args:
      - query_metrics.per_user_throttler
      - - label: 'Yes'
          filter: ">0"
          __FILE: healthcheck-sa-dashboards/dashboards/google_pso__performance_metrics.dashboard.lookml
          __LINE_NUM: 612
      - 'No'
      _kind_hint: dimension
      _type_hint: string
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: Main Query Execution Time
    comparison_label: 'Model Init: From Cache'
    defaults_version: 1
    hidden_pivots: {}
    note_state: collapsed
    note_display: hover
    note_text: 'The average time spent executing a query within the database. This can
      be reduced through restructure of the SQL queries sent to the database. Aggregation
      of the underlying data being queried and optimisation of underlying the database
      structures.  '
    listen:
      Date: history.created_date
      Workspace ID: history.workspace_id
      Result Source: history.result_source
      Model: query.model
      Explore: query.view
      User: user.name
      Status: history.status
      Dashboard: dashboard.title
      Dialect: history.dialect
      Source: history.source
    row: 2
    col: 12
    width: 6
    height: 4
  - title: Stream To Cache Time
    name: Stream To Cache Time
    model: system__activity
    explore: query_metrics
    type: single_value
    fields: [query_metrics.stream_to_cache_average, history.query_run_count_drill]
    filters:
      query_metrics.stream_to_cache: ">0"
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: dimension
      description: ''
      label: Is Async Runtime Value Populated
      value_format:
      value_format_name:
      calculation_type: group_by
      dimension: is_async_runtime_value_populated
      args:
      - query_metrics.async_processing
      - - label: 'Yes'
          filter: ">0"
          __FILE: healthcheck-sa-dashboards/dashboards/google_pso__performance_metrics.dashboard.lookml
          __LINE_NUM: 673
      - 'No'
      _kind_hint: dimension
      _type_hint: string
    - category: dimension
      description: ''
      label: Was Per User Throttling applied (Yes/No)
      value_format:
      value_format_name:
      calculation_type: group_by
      dimension: was_per_user_throttling_applied_yesno
      args:
      - query_metrics.per_user_throttler
      - - label: 'Yes'
          filter: ">0"
          __FILE: healthcheck-sa-dashboards/dashboards/google_pso__performance_metrics.dashboard.lookml
          __LINE_NUM: 689
      - 'No'
      _kind_hint: dimension
      _type_hint: string
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: Post Processing - Stream to Cache Time
    comparison_label: Stream To Cache Queries
    defaults_version: 1
    hidden_pivots: {}
    note_state: collapsed
    note_display: hover
    note_text: 'The time in seconds necessary for post-processing the query. This
      occurs after the connection is closed. This should measure in milliseconds and
      if larger can be addressed by migrating custom fields back to LookML or migration
      of Logic back to the database. '
    listen:
      Date: history.created_date
      Workspace ID: history.workspace_id
      Result Source: history.result_source
      Model: query.model
      Explore: query.view
      User: user.name
      Status: history.status
      Dashboard: dashboard.title
      Dialect: history.dialect
      Source: history.source
    row: 16
    col: 0
    width: 24
    height: 4
  - title: Was Per User Throttler Applied
    name: Was Per User Throttler Applied
    model: system__activity
    explore: query_metrics
    type: looker_pie
    fields: [query_metrics.count, was_per_user_throttling_applied_yesno]
    filters:
      is_async_runtime_value_populated: 'Yes'
    sorts: [query_metrics.count desc]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: dimension
      description: ''
      label: Is Async Runtime Value Populated
      value_format:
      value_format_name:
      calculation_type: group_by
      dimension: is_async_runtime_value_populated
      args:
      - query_metrics.async_processing
      - - label: 'Yes'
          filter: ">0"
          __FILE: healthcheck-sa-dashboards/dashboards/google_pso__performance_metrics.dashboard.lookml
          __LINE_NUM: 751
      - 'No'
      _kind_hint: dimension
      _type_hint: string
    - category: dimension
      description: ''
      label: Was Per User Throttling applied (Yes/No)
      value_format:
      value_format_name:
      calculation_type: group_by
      dimension: was_per_user_throttling_applied_yesno
      args:
      - query_metrics.per_user_throttler
      - - label: 'Yes'
          filter: ">0"
          __FILE: healthcheck-sa-dashboards/dashboards/google_pso__performance_metrics.dashboard.lookml
          __LINE_NUM: 767
      - 'No'
      _kind_hint: dimension
      _type_hint: string
    value_labels: legend
    label_type: labPer
    custom_color_enabled: true
    show_single_value_title: true
    single_value_title: Stream to Cache Time
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    comparison_label: 'Model Init: From Cache'
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    hidden_pivots: {}
    note_state: collapsed
    note_display: hover
    note_text: 'The number of queries to which Per user throttling was applied. '
    listen:
      Date: history.created_date
      Workspace ID: history.workspace_id
      Result Source: history.result_source
      Model: query.model
      Explore: query.view
      User: user.name
      Status: history.status
      Dashboard: dashboard.title
      Dialect: history.dialect
      Source: history.source
    row: 30
    col: 0
    width: 6
    height: 8
  - title: Project Init
    name: Project Init
    model: system__activity
    explore: query_metrics
    type: single_value
    fields: [average_of_project_init, history.query_run_count_drill]
    filters:
      project_init: ">0"
    limit: 5000
    column_limit: 50
    dynamic_fields:
    - category: dimension
      description: ''
      label: Is Async Runtime Value Populated
      value_format:
      value_format_name:
      calculation_type: group_by
      dimension: is_async_runtime_value_populated
      args:
      - query_metrics.async_processing
      - - label: 'Yes'
          filter: ">0"
          __FILE: healthcheck-sa-dashboards/dashboards/google_pso__performance_metrics.dashboard.lookml
          __LINE_NUM: 827
      - 'No'
      _kind_hint: dimension
      _type_hint: string
    - category: dimension
      description: ''
      label: Was Per User Throttling applied (Yes/No)
      value_format:
      value_format_name:
      calculation_type: group_by
      dimension: was_per_user_throttling_applied_yesno
      args:
      - query_metrics.per_user_throttler
      - - label: 'Yes'
          filter: ">0"
          __FILE: healthcheck-sa-dashboards/dashboards/google_pso__performance_metrics.dashboard.lookml
          __LINE_NUM: 843
      - 'No'
      _kind_hint: dimension
      _type_hint: string
    - category: dimension
      expression: "${query_metrics.project_init}"
      label: project init
      value_format:
      value_format_name:
      dimension: project_init
      _kind_hint: dimension
      _type_hint: number
    - category: measure
      expression: ''
      label: Average of project init
      value_format:
      value_format_name: decimal_2
      based_on: project_init
      _kind_hint: measure
      measure: average_of_project_init
      type: average
      _type_hint: number
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: Average Project Init
    comparison_label: Project Init Queries
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    defaults_version: 1
    hidden_pivots: {}
    value_labels: legend
    label_type: labPer
    note_state: collapsed
    note_display: hover
    note_text: This is the time it takes for the project to be initialized, validated,
      etc (which will then be used to build / parse / etc the model), or read from
      cache.
    listen:
      Date: history.created_date
      Workspace ID: history.workspace_id
      Result Source: history.result_source
      Model: query.model
      Explore: query.view
      User: user.name
      Status: history.status
      Dashboard: dashboard.title
      Dialect: history.dialect
      Source: history.source
    row: 7
    col: 0
    width: 4
    height: 4
  - title: Looker System Activity Warnings
    name: Looker System Activity Warnings
    model: system__activity
    explore: query_metrics
    type: table
    fields: [query_metrics.combo_warning, query_metrics.sorted_warnings, query_metrics.combo_recommendations,
      query_metrics.acquire_connection_recommendation, query_metrics.acquire_connection_warning,
      query_metrics.execute_main_query_recommendation, query_metrics.execute_main_query_warning,
      query_metrics.explore_init_recommendation, query_metrics.explore_init_warning,
      query_metrics.marshalled_cache_load_recommendation, query_metrics.marshalled_cache_load_warning,
      query_metrics.model_init_computed_recommendation, query_metrics.model_init_computed_warning,
      query_metrics.postprocessing_or_stream_to_cache_recommendation, query_metrics.postprocessing_warning,
      query_metrics.prepare_recommendation, query_metrics.prepare_warning, query_metrics.stream_to_cache_warning,
      history.query_run_count_drill]
    filters:
      is_async_runtime_value_populated: 'Yes'
    limit: 5000
    column_limit: 50
    dynamic_fields:
    - category: dimension
      description: ''
      label: Is Async Runtime Value Populated
      value_format:
      value_format_name:
      calculation_type: group_by
      dimension: is_async_runtime_value_populated
      args:
      - query_metrics.async_processing
      - - label: 'Yes'
          filter: ">0"
          __FILE: healthcheck-sa-dashboards/dashboards/google_pso__performance_metrics.dashboard.lookml
          __LINE_NUM: 959
      - 'No'
      _kind_hint: dimension
      _type_hint: string
    - category: dimension
      description: ''
      label: Was Per User Throttling applied (Yes/No)
      value_format:
      value_format_name:
      calculation_type: group_by
      dimension: was_per_user_throttling_applied_yesno
      args:
      - query_metrics.per_user_throttler
      - - label: 'Yes'
          filter: ">0"
          __FILE: healthcheck-sa-dashboards/dashboards/google_pso__performance_metrics.dashboard.lookml
          __LINE_NUM: 975
      - 'No'
      _kind_hint: dimension
      _type_hint: string
    - category: dimension
      expression: "${query_metrics.project_init}"
      label: project init
      value_format:
      value_format_name:
      dimension: project_init
      _kind_hint: dimension
      _type_hint: number
    - category: measure
      expression: ''
      label: Average of project init
      value_format:
      value_format_name: decimal_2
      based_on: project_init
      _kind_hint: measure
      measure: average_of_project_init
      type: average
      _type_hint: number
    show_view_names: false
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color_enabled: true
    show_single_value_title: true
    single_value_title: Average Project Init
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    comparison_label: 'Model Init: From Cache'
    transpose: false
    truncate_text: true
    size_to_fit: true
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    defaults_version: 1
    hidden_pivots: {}
    value_labels: legend
    label_type: labPer
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    legend_position: center
    point_style: none
    show_value_labels: false
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
    listen:
      Date: history.created_date
      Workspace ID: history.workspace_id
      Result Source: history.result_source
      Model: query.model
      Explore: query.view
      User: user.name
      Status: history.status
      Dashboard: dashboard.title
      Dialect: history.dialect
      Source: history.source
    row: 73
    col: 0
    width: 24
    height: 10
  - title: Looker Overhead
    name: Looker Overhead
    model: system__activity
    explore: query_metrics
    type: single_value
    fields: [average_of_execute_main_query, average_of_async_processing]
    limit: 5000
    column_limit: 50
    dynamic_fields:
    - category: dimension
      description: ''
      label: Is Async Runtime Value Populated
      value_format:
      value_format_name:
      calculation_type: group_by
      dimension: is_async_runtime_value_populated
      args:
      - query_metrics.async_processing
      - - label: 'Yes'
          filter: ">0"
          __FILE: healthcheck-sa-dashboards/dashboards/google_pso__performance_metrics.dashboard.lookml
          __LINE_NUM: 1104
      - 'No'
      _kind_hint: dimension
      _type_hint: string
    - category: dimension
      description: ''
      label: Was Per User Throttling applied (Yes/No)
      value_format:
      value_format_name:
      calculation_type: group_by
      dimension: was_per_user_throttling_applied_yesno
      args:
      - query_metrics.per_user_throttler
      - - label: 'Yes'
          filter: ">0"
          __FILE: healthcheck-sa-dashboards/dashboards/google_pso__performance_metrics.dashboard.lookml
          __LINE_NUM: 1120
      - 'No'
      _kind_hint: dimension
      _type_hint: string
    - category: dimension
      expression: "${query_metrics.project_init}"
      label: project init
      value_format:
      value_format_name:
      dimension: project_init
      _kind_hint: dimension
      _type_hint: number
    - category: measure
      expression: ''
      label: Average of project init
      value_format:
      value_format_name: decimal_2
      based_on: project_init
      _kind_hint: measure
      measure: average_of_project_init
      type: average
      _type_hint: number
    - category: dimension
      expression: "${query_metrics.async_processing}-${query_metrics.execute_main_query}"
      label: Looker Processing Time
      value_format:
      value_format_name:
      dimension: looker_processing_time
      _kind_hint: dimension
      _type_hint: number
    - category: dimension
      expression: "${looker_processing_time}/${query_metrics.async_processing}"
      label: Looker Overhead
      value_format:
      value_format_name:
      dimension: looker_overhead
      _kind_hint: dimension
      _type_hint: number
    - category: measure
      expression: ''
      label: Average of Looker Overhead
      value_format:
      value_format_name: percent_2
      based_on: looker_overhead
      _kind_hint: measure
      measure: average_of_looker_overhead
      type: average
      _type_hint: number
    - category: measure
      expression: ''
      label: Average of Looker Processing Time
      based_on: looker_processing_time
      _kind_hint: measure
      measure: average_of_looker_processing_time
      type: average
      _type_hint: number
      filters:
        is_async_runtime_value_populated: 'Yes'
    - category: table_calculation
      expression: "${query_metrics.execute_main_query_average}/${query_metrics.async_processing_average}"
      label: Looker Overhead
      value_format:
      value_format_name: percent_2
      _kind_hint: measure
      table_calculation: looker_overhead_1
      _type_hint: number
      is_disabled: true
    - category: dimension
      description: ''
      label: Main Query Metric is populated
      value_format:
      value_format_name:
      calculation_type: group_by
      dimension: main_query_metric_is_populated
      args:
      - query_metrics.execute_main_query
      - - label: 'Yes'
          filter: ">0"
          __FILE: healthcheck-sa-dashboards/dashboards/google_pso__performance_metrics.dashboard.lookml
          __LINE_NUM: 1215
      - 'No'
      _kind_hint: dimension
      _type_hint: string
    - category: measure
      expression: ''
      label: Average of Execute Main Query
      based_on: query_metrics.execute_main_query
      _kind_hint: measure
      measure: average_of_execute_main_query
      type: average
      _type_hint: number
      filters:
        main_query_metric_is_populated: 'Yes'
    - category: measure
      expression: ''
      label: Average of Async Processing
      based_on: query_metrics.async_processing
      _kind_hint: measure
      measure: average_of_async_processing
      type: average
      _type_hint: number
      filters:
        is_async_runtime_value_populated: 'Yes'
    - category: table_calculation
      expression: "((${average_of_execute_main_query}/${average_of_async_processing})-1)*(-1)"
      label: Looker Overhead
      value_format:
      value_format_name: percent_2
      _kind_hint: measure
      table_calculation: looker_overhead_2
      _type_hint: number
    - category: table_calculation
      expression: "${average_of_async_processing}-${average_of_execute_main_query}"
      label: Overhead Time
      value_format:
      value_format_name: decimal_2
      _kind_hint: measure
      table_calculation: overhead_time
      _type_hint: number
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: Indicative Looker Overhead
    comparison_label: Overhead Time
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    defaults_version: 1
    hidden_pivots: {}
    value_labels: legend
    label_type: labPer
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    legend_position: center
    point_style: none
    show_value_labels: false
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
    truncate_column_names: false
    hidden_fields: [average_of_execute_main_query, average_of_async_processing]
    note_state: collapsed
    note_display: hover
    note_text: "The percentage of time taken for Looker to process a query outside\
      \ of main query execution. I.E. Prep and post query processing. Calculated as\
      \ Average Async Runtime -  Main Query Execution Time. \nNOTE: Calculated based\
      \ only on values which have query metric results. "
    listen:
      Date: history.created_date
      Workspace ID: history.workspace_id
      Result Source: history.result_source
      Model: query.model
      Explore: query.view
      User: user.name
      Status: history.status
      Dashboard: dashboard.title
      Dialect: history.dialect
      Source: history.source
    row: 2
    col: 0
    width: 6
    height: 4
  - title: Looker Overhead By Model
    name: Looker Overhead By Model
    model: system__activity
    explore: query_metrics
    type: looker_bar
    fields: [query.model, history.query_run_count_drill, average_of_async_processing,
      average_of_execute_main_query]
    filters:
      query.model: "-NULL"
    sorts: [history.query_run_count_drill desc]
    limit: 15
    column_limit: 50
    dynamic_fields:
    - category: dimension
      description: ''
      label: Is Async Runtime Value Populated
      value_format:
      value_format_name:
      calculation_type: group_by
      dimension: is_async_runtime_value_populated
      args:
      - query_metrics.async_processing
      - - label: 'Yes'
          filter: ">0"
          __FILE: healthcheck-sa-dashboards/dashboards/google_pso__performance_metrics.dashboard.lookml
          __LINE_NUM: 1357
      - 'No'
      _kind_hint: dimension
      _type_hint: string
    - category: dimension
      description: ''
      label: Was Per User Throttling applied (Yes/No)
      value_format:
      value_format_name:
      calculation_type: group_by
      dimension: was_per_user_throttling_applied_yesno
      args:
      - query_metrics.per_user_throttler
      - - label: 'Yes'
          filter: ">0"
          __FILE: healthcheck-sa-dashboards/dashboards/google_pso__performance_metrics.dashboard.lookml
          __LINE_NUM: 1373
      - 'No'
      _kind_hint: dimension
      _type_hint: string
    - category: dimension
      expression: "${query_metrics.project_init}"
      label: project init
      value_format:
      value_format_name:
      dimension: project_init
      _kind_hint: dimension
      _type_hint: number
    - category: measure
      expression: ''
      label: Average of project init
      value_format:
      value_format_name: decimal_2
      based_on: project_init
      _kind_hint: measure
      measure: average_of_project_init
      type: average
      _type_hint: number
    - category: dimension
      expression: "${query_metrics.async_processing}-${query_metrics.execute_main_query}"
      label: Looker Processing Time
      value_format:
      value_format_name:
      dimension: looker_processing_time
      _kind_hint: dimension
      _type_hint: number
    - category: dimension
      expression: "${looker_processing_time}/${query_metrics.async_processing}"
      label: Looker Overhead
      value_format:
      value_format_name:
      dimension: looker_overhead
      _kind_hint: dimension
      _type_hint: number
    - category: measure
      expression: ''
      label: Average of Looker Overhead
      value_format:
      value_format_name: percent_2
      based_on: looker_overhead
      _kind_hint: measure
      measure: average_of_looker_overhead
      type: average
      _type_hint: number
    - measure: average_of_looker_processing_time
      based_on: looker_processing_time
      expression: ''
      label: Average of Looker Processing Time
      type: average
      _kind_hint: measure
      _type_hint: number
    - category: table_calculation
      expression: if((${average_of_async_processing}-${average_of_execute_main_query})/${average_of_async_processing}
        >0,(${average_of_async_processing}-${average_of_execute_main_query})/${average_of_async_processing},0)
      label: Looker Overhead
      value_format:
      value_format_name: percent_2
      _kind_hint: measure
      table_calculation: looker_overhead_1
      _type_hint: number
    - category: measure
      expression: ''
      label: Average of Async Processing
      based_on: query_metrics.async_processing
      _kind_hint: measure
      measure: average_of_async_processing
      type: average
      _type_hint: number
      filters:
        query_metrics.async_processing: not null
    - category: measure
      expression: ''
      label: Average of Execute Main Query
      based_on: query_metrics.execute_main_query
      _kind_hint: measure
      measure: average_of_execute_main_query
      type: average
      _type_hint: number
      filters:
        query_metrics.execute_main_query: not null
    - category: measure
      label: Filtered history.query_run_count_drill
      based_on: history.query_run_count_drill
      _kind_hint: measure
      measure: filtered_historyquery_run_count_drill
      type: count_distinct
      _type_hint: number
      filters: {}
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: !!null '', orientation: top, series: [{axisId: history.query_run_count_drill,
            id: history.query_run_count_drill, name: Query Run Count}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}, {label: '', orientation: bottom, series: [{axisId: looker_overhead_1,
            id: looker_overhead_1, name: Looker Overhead}], showLabels: true, showValues: true,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: Indicative Looker Overhead
    comparison_label: 'Model Init: From Cache'
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    defaults_version: 1
    hidden_pivots: {}
    value_labels: legend
    label_type: labPer
    show_null_points: true
    interpolation: linear
    truncate_column_names: false
    hidden_fields: [average_of_async_processing, average_of_execute_main_query]
    listen:
      Date: history.created_date
      Workspace ID: history.workspace_id
      Result Source: history.result_source
      Explore: query.view
      User: user.name
      Status: history.status
      Dashboard: dashboard.title
      Dialect: history.dialect
      Source: history.source
    row: 51
    col: 0
    width: 12
    height: 11
  - title: Looker Overhead By Dashboard
    name: Looker Overhead By Dashboard
    model: system__activity
    explore: query_metrics
    type: looker_bar
    fields: [history.query_run_count_drill, dashboard.title, average_of_async_processing,
      average_of_execute_main_query]
    filters:
      dashboard.title: "-NULL"
    sorts: [history.query_run_count_drill desc]
    limit: 15
    column_limit: 50
    dynamic_fields:
    - category: dimension
      description: ''
      label: Is Async Runtime Value Populated
      value_format:
      value_format_name:
      calculation_type: group_by
      dimension: is_async_runtime_value_populated
      args:
      - query_metrics.async_processing
      - - label: 'Yes'
          filter: ">0"
          __FILE: healthcheck-sa-dashboards/dashboards/google_pso__performance_metrics.dashboard.lookml
          __LINE_NUM: 1584
      - 'No'
      _kind_hint: dimension
      _type_hint: string
    - category: dimension
      description: ''
      label: Was Per User Throttling applied (Yes/No)
      value_format:
      value_format_name:
      calculation_type: group_by
      dimension: was_per_user_throttling_applied_yesno
      args:
      - query_metrics.per_user_throttler
      - - label: 'Yes'
          filter: ">0"
          __FILE: healthcheck-sa-dashboards/dashboards/google_pso__performance_metrics.dashboard.lookml
          __LINE_NUM: 1600
      - 'No'
      _kind_hint: dimension
      _type_hint: string
    - category: dimension
      expression: "${query_metrics.project_init}"
      label: project init
      value_format:
      value_format_name:
      dimension: project_init
      _kind_hint: dimension
      _type_hint: number
    - category: measure
      expression: ''
      label: Average of project init
      value_format:
      value_format_name: decimal_2
      based_on: project_init
      _kind_hint: measure
      measure: average_of_project_init
      type: average
      _type_hint: number
    - category: dimension
      expression: "${query_metrics.async_processing}-${query_metrics.execute_main_query}"
      label: Looker Processing Time
      value_format:
      value_format_name:
      dimension: looker_processing_time
      _kind_hint: dimension
      _type_hint: number
    - category: dimension
      expression: "${looker_processing_time}/${query_metrics.async_processing}"
      label: Looker Overhead
      value_format:
      value_format_name:
      dimension: looker_overhead
      _kind_hint: dimension
      _type_hint: number
    - category: measure
      expression: ''
      label: Average of Looker Overhead
      value_format:
      value_format_name: percent_2
      based_on: looker_overhead
      _kind_hint: measure
      measure: average_of_looker_overhead
      type: average
      _type_hint: number
    - measure: average_of_looker_processing_time
      based_on: looker_processing_time
      expression: ''
      label: Average of Looker Processing Time
      type: average
      _kind_hint: measure
      _type_hint: number
    - category: table_calculation
      expression: if((${average_of_async_processing}-${average_of_execute_main_query})/${average_of_async_processing}
        >0,(${average_of_async_processing}-${average_of_execute_main_query})/${average_of_async_processing},0)
      label: Looker Overhead
      value_format:
      value_format_name: percent_2
      _kind_hint: measure
      table_calculation: looker_overhead_1
      _type_hint: number
    - category: measure
      expression: ''
      label: Average of Async Processing
      based_on: query_metrics.async_processing
      _kind_hint: measure
      measure: average_of_async_processing
      type: average
      _type_hint: number
      filters:
        query_metrics.async_processing: not null
    - category: measure
      expression: ''
      label: Average of Execute Main Query
      based_on: query_metrics.execute_main_query
      _kind_hint: measure
      measure: average_of_execute_main_query
      type: average
      _type_hint: number
      filters:
        query_metrics.execute_main_query: not null
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: !!null '', orientation: top, series: [{axisId: history.query_run_count_drill,
            id: history.query_run_count_drill, name: Query Run Count}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}, {label: '', orientation: bottom, series: [{axisId: looker_overhead_1,
            id: looker_overhead_1, name: Looker Overhead}], showLabels: true, showValues: true,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: Indicative Looker Overhead
    comparison_label: 'Model Init: From Cache'
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    defaults_version: 1
    hidden_pivots: {}
    value_labels: legend
    label_type: labPer
    show_null_points: true
    interpolation: linear
    truncate_column_names: false
    hidden_fields: [average_of_execute_main_query, average_of_async_processing]
    listen:
      Date: history.created_date
      Workspace ID: history.workspace_id
      Result Source: history.result_source
      Model: query.model
      Explore: query.view
      User: user.name
      Status: history.status
      Dialect: history.dialect
      Source: history.source
    row: 62
    col: 0
    width: 12
    height: 11
  - title: Looker Overhead By Explore
    name: Looker Overhead By Explore
    model: system__activity
    explore: query_metrics
    type: looker_bar
    fields: [query.view, history.query_run_count_drill, average_of_execute_main_query,
      average_of_async_processing]
    filters:
      query.view: "-NULL"
    sorts: [history.query_run_count_drill desc]
    limit: 15
    column_limit: 50
    dynamic_fields:
    - category: table_calculation
      expression: if((${average_of_async_processing}-${average_of_execute_main_query})/${average_of_async_processing}
        >0,(${average_of_async_processing}-${average_of_execute_main_query})/${average_of_async_processing},0)
      label: Looker Overhead
      value_format:
      value_format_name: percent_2
      _kind_hint: measure
      table_calculation: looker_overhead_1
      _type_hint: number
    - category: dimension
      description: ''
      label: Is Async Runtime Value Populated
      value_format:
      value_format_name:
      calculation_type: group_by
      dimension: is_async_runtime_value_populated
      args:
      - query_metrics.async_processing
      - - label: 'Yes'
          filter: ">0"
          __FILE: healthcheck-sa-dashboards/dashboards/google_pso__performance_metrics.dashboard.lookml
          __LINE_NUM: 1812
      - 'No'
      _kind_hint: dimension
      _type_hint: string
    - category: dimension
      description: ''
      label: Was Per User Throttling applied (Yes/No)
      value_format:
      value_format_name:
      calculation_type: group_by
      dimension: was_per_user_throttling_applied_yesno
      args:
      - query_metrics.per_user_throttler
      - - label: 'Yes'
          filter: ">0"
          __FILE: healthcheck-sa-dashboards/dashboards/google_pso__performance_metrics.dashboard.lookml
          __LINE_NUM: 1828
      - 'No'
      _kind_hint: dimension
      _type_hint: string
    - category: dimension
      expression: "${query_metrics.project_init}"
      label: project init
      value_format:
      value_format_name:
      dimension: project_init
      _kind_hint: dimension
      _type_hint: number
    - category: measure
      expression: ''
      label: Average of project init
      value_format:
      value_format_name: decimal_2
      based_on: project_init
      _kind_hint: measure
      measure: average_of_project_init
      type: average
      _type_hint: number
    - category: dimension
      expression: "${query_metrics.async_processing}-${query_metrics.execute_main_query}"
      label: Looker Processing Time
      value_format:
      value_format_name:
      dimension: looker_processing_time
      _kind_hint: dimension
      _type_hint: number
    - category: dimension
      expression: "${looker_processing_time}/${query_metrics.async_processing}"
      label: Looker Overhead
      value_format:
      value_format_name:
      dimension: looker_overhead
      _kind_hint: dimension
      _type_hint: number
    - category: measure
      expression: ''
      label: Average of Looker Overhead
      value_format:
      value_format_name: percent_2
      based_on: looker_overhead
      _kind_hint: measure
      measure: average_of_looker_overhead
      type: average
      _type_hint: number
    - measure: average_of_looker_processing_time
      based_on: looker_processing_time
      expression: ''
      label: Average of Looker Processing Time
      type: average
      _kind_hint: measure
      _type_hint: number
    - category: measure
      expression: ''
      label: Average of Async Processing
      based_on: query_metrics.async_processing
      _kind_hint: measure
      measure: average_of_async_processing
      type: average
      _type_hint: number
      filters:
        query_metrics.async_processing: not null
    - category: measure
      expression: ''
      label: Average of Execute Main Query
      based_on: query_metrics.execute_main_query
      _kind_hint: measure
      measure: average_of_execute_main_query
      type: average
      _type_hint: number
      filters:
        query_metrics.execute_main_query: not null
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: !!null '', orientation: top, series: [{axisId: history.query_run_count_drill,
            id: history.query_run_count_drill, name: Query Run Count}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}, {label: '', orientation: bottom, series: [{axisId: looker_overhead_1,
            id: looker_overhead_1, name: Looker Overhead}], showLabels: true, showValues: true,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: Indicative Looker Overhead
    comparison_label: 'Model Init: From Cache'
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    defaults_version: 1
    hidden_pivots: {}
    value_labels: legend
    label_type: labPer
    show_null_points: true
    interpolation: linear
    truncate_column_names: false
    hidden_fields: [average_of_execute_main_query, average_of_async_processing]
    listen:
      Date: history.created_date
      Workspace ID: history.workspace_id
      Result Source: history.result_source
      Model: query.model
      User: user.name
      Status: history.status
      Dashboard: dashboard.title
      Dialect: history.dialect
      Source: history.source
    row: 51
    col: 12
    width: 12
    height: 11
  - title: Queries By Source
    name: Queries By Source
    model: system__activity
    explore: history
    type: looker_pie
    fields: [history.query_run_count, history.source]
    sorts: [history.query_run_count desc]
    limit: 500
    column_limit: 50
    value_labels: legend
    label_type: labPer
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    listen:
      Workspace ID: history.workspace_id
      Date: history.created_date
      Result Source: history.result_source
      Model: query.model
      Explore: query.view
      User: user.name
      Status: history.status
      Dashboard: dashboard.title
      Dialect: history.dialect
    row: 30
    col: 6
    width: 6
    height: 8
  - title: Looker Overhead By User
    name: Looker Overhead By User
    model: system__activity
    explore: query_metrics
    type: looker_bar
    fields: [history.query_run_count_drill, user.name, average_of_execute_main_query,
      average_of_async_processing]
    sorts: [history.query_run_count_drill desc]
    limit: 15
    column_limit: 50
    dynamic_fields:
    - category: dimension
      description: ''
      label: Is Async Runtime Value Populated
      value_format:
      value_format_name:
      calculation_type: group_by
      dimension: is_async_runtime_value_populated
      args:
      - query_metrics.async_processing
      - - label: 'Yes'
          filter: ">0"
          __FILE: healthcheck-sa-dashboards/dashboards/google_pso__performance_metrics.dashboard.lookml
          __LINE_NUM: 2073
      - 'No'
      _kind_hint: dimension
      _type_hint: string
    - category: dimension
      description: ''
      label: Was Per User Throttling applied (Yes/No)
      value_format:
      value_format_name:
      calculation_type: group_by
      dimension: was_per_user_throttling_applied_yesno
      args:
      - query_metrics.per_user_throttler
      - - label: 'Yes'
          filter: ">0"
          __FILE: healthcheck-sa-dashboards/dashboards/google_pso__performance_metrics.dashboard.lookml
          __LINE_NUM: 2089
      - 'No'
      _kind_hint: dimension
      _type_hint: string
    - category: dimension
      expression: "${query_metrics.project_init}"
      label: project init
      value_format:
      value_format_name:
      dimension: project_init
      _kind_hint: dimension
      _type_hint: number
    - category: measure
      expression: ''
      label: Average of project init
      value_format:
      value_format_name: decimal_2
      based_on: project_init
      _kind_hint: measure
      measure: average_of_project_init
      type: average
      _type_hint: number
    - category: dimension
      expression: "${query_metrics.async_processing}-${query_metrics.execute_main_query}"
      label: Looker Processing Time
      value_format:
      value_format_name:
      dimension: looker_processing_time
      _kind_hint: dimension
      _type_hint: number
    - category: dimension
      expression: "${looker_processing_time}/${query_metrics.async_processing}"
      label: Looker Overhead
      value_format:
      value_format_name:
      dimension: looker_overhead
      _kind_hint: dimension
      _type_hint: number
    - category: measure
      expression: ''
      label: Average of Looker Overhead
      value_format:
      value_format_name: percent_2
      based_on: looker_overhead
      _kind_hint: measure
      measure: average_of_looker_overhead
      type: average
      _type_hint: number
    - measure: average_of_looker_processing_time
      based_on: looker_processing_time
      expression: ''
      label: Average of Looker Processing Time
      type: average
      _kind_hint: measure
      _type_hint: number
    - category: table_calculation
      expression: if((${average_of_async_processing}-${average_of_execute_main_query})/${average_of_async_processing}
        >0,(${average_of_async_processing}-${average_of_execute_main_query})/${average_of_async_processing},0)
      label: Looker Overhead
      value_format:
      value_format_name: percent_2
      _kind_hint: measure
      table_calculation: looker_overhead_1
      _type_hint: number
    - category: measure
      expression: ''
      label: Average of Execute Main Query
      based_on: query_metrics.execute_main_query
      _kind_hint: measure
      measure: average_of_execute_main_query
      type: average
      _type_hint: number
      filters:
        query_metrics.execute_main_query: not null
    - category: measure
      expression: ''
      label: Average of Async Processing
      based_on: query_metrics.async_processing
      _kind_hint: measure
      measure: average_of_async_processing
      type: average
      _type_hint: number
      filters:
        query_metrics.async_processing: not null
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: !!null '', orientation: top, series: [{axisId: history.query_run_count_drill,
            id: history.query_run_count_drill, name: Query Run Count}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}, {label: '', orientation: bottom, series: [{axisId: looker_overhead_1,
            id: looker_overhead_1, name: Looker Overhead}], showLabels: true, showValues: true,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: Indicative Looker Overhead
    comparison_label: 'Model Init: From Cache'
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    defaults_version: 1
    hidden_pivots: {}
    value_labels: legend
    label_type: labPer
    show_null_points: true
    interpolation: linear
    truncate_column_names: false
    hidden_fields: [average_of_execute_main_query, average_of_async_processing]
    listen:
      Date: history.created_date
      Workspace ID: history.workspace_id
      Result Source: history.result_source
      Model: query.model
      Explore: query.view
      User: user.name
      Status: history.status
      Dashboard: dashboard.title
      Dialect: history.dialect
      Source: history.source
    row: 62
    col: 12
    width: 12
    height: 11
  - title: Model Init (Copy)
    name: Model Init (Copy)
    model: system__activity
    explore: query_metrics
    type: single_value
    fields: [query_metrics.model_init_cache_average, history.query_run_count_drill]
    filters:
      query_metrics.model_init_cache: ">0"
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: dimension
      description: ''
      label: Is Async Runtime Value Populated
      value_format:
      value_format_name:
      calculation_type: group_by
      dimension: is_async_runtime_value_populated
      args:
      - query_metrics.async_processing
      - - label: 'Yes'
          filter: ">0"
          __FILE: healthcheck-sa-dashboards/dashboards/google_pso__performance_metrics.dashboard.lookml
          __LINE_NUM: 2291
      - 'No'
      _kind_hint: dimension
      _type_hint: string
    - category: dimension
      description: ''
      label: Was Per User Throttling applied (Yes/No)
      value_format:
      value_format_name:
      calculation_type: group_by
      dimension: was_per_user_throttling_applied_yesno
      args:
      - query_metrics.per_user_throttler
      - - label: 'Yes'
          filter: ">0"
          __FILE: healthcheck-sa-dashboards/dashboards/google_pso__performance_metrics.dashboard.lookml
          __LINE_NUM: 2307
      - 'No'
      _kind_hint: dimension
      _type_hint: string
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: 'Model Init: Cache'
    comparison_label: Model Init Queries
    defaults_version: 1
    hidden_pivots: {}
    note_state: collapsed
    note_display: hover
    note_text: 'Time it takes in seconds to pull the model definition from cache.
      Includes time it takes to parse the model. '
    listen:
      Date: history.created_date
      Workspace ID: history.workspace_id
      Result Source: history.result_source
      Model: query.model
      Explore: query.view
      User: user.name
      Status: history.status
      Dashboard: dashboard.title
      Dialect: history.dialect
      Source: history.source
    row: 7
    col: 8
    width: 4
    height: 4
  - title: Explore Init (Copy)
    name: Explore Init (Copy)
    model: system__activity
    explore: query_metrics
    type: single_value
    fields: [query_metrics.marshalled_cache_load_average, history.query_run_count_drill]
    filters:
      query_metrics.marshalled_cache_load: ">0"
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: dimension
      description: ''
      label: Is Async Runtime Value Populated
      value_format:
      value_format_name:
      calculation_type: group_by
      dimension: is_async_runtime_value_populated
      args:
      - query_metrics.async_processing
      - - label: 'Yes'
          filter: ">0"
          __FILE: healthcheck-sa-dashboards/dashboards/google_pso__performance_metrics.dashboard.lookml
          __LINE_NUM: 2366
      - 'No'
      _kind_hint: dimension
      _type_hint: string
    - category: dimension
      description: ''
      label: Was Per User Throttling applied (Yes/No)
      value_format:
      value_format_name:
      calculation_type: group_by
      dimension: was_per_user_throttling_applied_yesno
      args:
      - query_metrics.per_user_throttler
      - - label: 'Yes'
          filter: ">0"
          __FILE: healthcheck-sa-dashboards/dashboards/google_pso__performance_metrics.dashboard.lookml
          __LINE_NUM: 2382
      - 'No'
      _kind_hint: dimension
      _type_hint: string
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: 'Explore Init: Cache'
    comparison_label: Explore Init Queries
    defaults_version: 1
    hidden_pivots: {}
    note_state: collapsed
    note_display: hover
    note_text: Time it takes in seconds to pull the Explore initialization from cache.
    listen:
      Date: history.created_date
      Workspace ID: history.workspace_id
      Result Source: history.result_source
      Model: query.model
      Explore: query.view
      User: user.name
      Status: history.status
      Dashboard: dashboard.title
      Dialect: history.dialect
      Source: history.source
    row: 7
    col: 16
    width: 4
    height: 4
  - title: Overhead & Query Count per Weekday
    name: Overhead & Query Count per Weekday
    model: system__activity
    explore: query_metrics
    type: looker_line
    fields: [average_of_execute_main_query, average_of_async_processing, history.query_run_count_drill,
      history.created_date]
    filters:
      history.created_day_of_week: "-Saturday,-Sunday"
    sorts: [history.created_date desc]
    limit: 5000
    column_limit: 50
    dynamic_fields:
    - category: dimension
      description: ''
      label: Is Async Runtime Value Populated
      value_format:
      value_format_name:
      calculation_type: group_by
      dimension: is_async_runtime_value_populated
      args:
      - query_metrics.async_processing
      - - label: 'Yes'
          filter: ">0"
          __FILE: healthcheck-sa-dashboards/dashboards/google_pso__performance_metrics.dashboard.lookml
          __LINE_NUM: 2442
      - 'No'
      _kind_hint: dimension
      _type_hint: string
    - category: dimension
      description: ''
      label: Was Per User Throttling applied (Yes/No)
      value_format:
      value_format_name:
      calculation_type: group_by
      dimension: was_per_user_throttling_applied_yesno
      args:
      - query_metrics.per_user_throttler
      - - label: 'Yes'
          filter: ">0"
          __FILE: healthcheck-sa-dashboards/dashboards/google_pso__performance_metrics.dashboard.lookml
          __LINE_NUM: 2458
      - 'No'
      _kind_hint: dimension
      _type_hint: string
    - category: dimension
      expression: "${query_metrics.project_init}"
      label: project init
      value_format:
      value_format_name:
      dimension: project_init
      _kind_hint: dimension
      _type_hint: number
    - category: measure
      expression: ''
      label: Average of project init
      value_format:
      value_format_name: decimal_2
      based_on: project_init
      _kind_hint: measure
      measure: average_of_project_init
      type: average
      _type_hint: number
    - category: dimension
      expression: "${query_metrics.async_processing}-${query_metrics.execute_main_query}"
      label: Looker Processing Time
      value_format:
      value_format_name:
      dimension: looker_processing_time
      _kind_hint: dimension
      _type_hint: number
    - category: dimension
      expression: "${looker_processing_time}/${query_metrics.async_processing}"
      label: Looker Overhead
      value_format:
      value_format_name:
      dimension: looker_overhead
      _kind_hint: dimension
      _type_hint: number
    - category: measure
      expression: ''
      label: Average of Looker Overhead
      value_format:
      value_format_name: percent_2
      based_on: looker_overhead
      _kind_hint: measure
      measure: average_of_looker_overhead
      type: average
      _type_hint: number
    - category: measure
      expression: ''
      label: Average of Looker Processing Time
      based_on: looker_processing_time
      _kind_hint: measure
      measure: average_of_looker_processing_time
      type: average
      _type_hint: number
      filters:
        is_async_runtime_value_populated: 'Yes'
    - category: table_calculation
      expression: "${query_metrics.execute_main_query_average}/${query_metrics.async_processing_average}"
      label: Looker Overhead
      value_format:
      value_format_name: percent_2
      _kind_hint: measure
      table_calculation: looker_overhead_1
      _type_hint: number
      is_disabled: true
    - category: dimension
      description: ''
      label: Main Query Metric is populated
      value_format:
      value_format_name:
      calculation_type: group_by
      dimension: main_query_metric_is_populated
      args:
      - query_metrics.execute_main_query
      - - label: 'Yes'
          filter: ">0"
          __FILE: healthcheck-sa-dashboards/dashboards/google_pso__performance_metrics.dashboard.lookml
          __LINE_NUM: 2553
      - 'No'
      _kind_hint: dimension
      _type_hint: string
    - category: measure
      expression: ''
      label: Average of Execute Main Query
      based_on: query_metrics.execute_main_query
      _kind_hint: measure
      measure: average_of_execute_main_query
      type: average
      _type_hint: number
      filters:
        main_query_metric_is_populated: 'Yes'
    - category: measure
      expression: ''
      label: Average of Async Processing
      based_on: query_metrics.async_processing
      _kind_hint: measure
      measure: average_of_async_processing
      type: average
      _type_hint: number
      filters:
        is_async_runtime_value_populated: 'Yes'
    - category: table_calculation
      expression: "((${average_of_execute_main_query}/${average_of_async_processing})-1)*(-1)"
      label: Looker Overhead
      value_format:
      value_format_name: percent_2
      _kind_hint: measure
      table_calculation: looker_overhead_2
      _type_hint: number
    - category: table_calculation
      expression: "${average_of_async_processing}-${average_of_execute_main_query}"
      label: Overhead Time
      value_format:
      value_format_name: decimal_2
      _kind_hint: measure
      table_calculation: overhead_time
      _type_hint: number
      is_disabled: true
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    y_axes: [{label: '', orientation: left, series: [{axisId: history.query_run_count_drill,
            id: history.query_run_count_drill, name: Query Run Count}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}, {label: !!null '', orientation: right, series: [{axisId: looker_overhead_2,
            id: looker_overhead_2, name: Looker Overhead}], showLabels: true, showValues: true,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: Indicative Looker Overhead
    comparison_label: Overhead Time
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    defaults_version: 1
    hidden_pivots: {}
    value_labels: legend
    label_type: labPer
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    truncate_column_names: false
    hidden_fields: [average_of_execute_main_query, average_of_async_processing]
    listen:
      Date: history.created_date
      Workspace ID: history.workspace_id
      Result Source: history.result_source
      Model: query.model
      Explore: query.view
      User: user.name
      Status: history.status
      Dashboard: dashboard.title
      Dialect: history.dialect
      Source: history.source
    row: 20
    col: 0
    width: 24
    height: 9
  - title: Queries By User
    name: Queries By User
    model: system__activity
    explore: history
    type: looker_pie
    fields: [history.query_run_count, user.name]
    filters: {}
    sorts: [history.query_run_count desc]
    limit: 50
    column_limit: 50
    dynamic_fields:
    - args:
      - history.query_run_count
      calculation_type: rank_of_column
      category: table_calculation
      based_on: history.query_run_count
      label: Rank of History Query Run Count
      source_field: history.query_run_count
      table_calculation: rank_of_history_query_run_count
      value_format:
      value_format_name:
      _kind_hint: measure
      _type_hint: number
      is_disabled: true
    value_labels: legend
    label_type: labPer
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    hidden_pivots: {}
    note_state: collapsed
    note_display: hover
    note_text: 'The top 20 overall users as a segment of total usage. '
    listen:
      Workspace ID: history.workspace_id
      Date: history.created_date
      Result Source: history.result_source
      Model: query.model
      Explore: query.view
      User: user.name
      Status: history.status
      Dashboard: dashboard.title
      Dialect: history.dialect
      Source: history.source
    row: 30
    col: 12
    width: 6
    height: 8
  - title: Grand Total Queries
    name: Grand Total Queries
    model: system__activity
    explore: query_metrics
    type: single_value
    fields: [average_of_execute_grand_totals_query, history.query_run_count_drill]
    filters:
      query_metrics.execute_grand_totals_query: ">0"
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: dimension
      description: ''
      label: Is Async Runtime Value Populated
      value_format:
      value_format_name:
      calculation_type: group_by
      dimension: is_async_runtime_value_populated
      args:
      - query_metrics.async_processing
      - - label: 'Yes'
          filter: ">0"
          __FILE: healthcheck-sa-dashboards/dashboards/google_pso__performance_metrics.dashboard.lookml
          __LINE_NUM: 2820
      - 'No'
      _kind_hint: dimension
      _type_hint: string
    - category: dimension
      description: ''
      label: Was Per User Throttling applied (Yes/No)
      value_format:
      value_format_name:
      calculation_type: group_by
      dimension: was_per_user_throttling_applied_yesno
      args:
      - query_metrics.per_user_throttler
      - - label: 'Yes'
          filter: ">0"
          __FILE: healthcheck-sa-dashboards/dashboards/google_pso__performance_metrics.dashboard.lookml
          __LINE_NUM: 2836
      - 'No'
      _kind_hint: dimension
      _type_hint: string
    - measure: average_of_execute_row_totals_query
      based_on: query_metrics.execute_row_totals_query
      expression: ''
      label: Average of Execute Row Totals Query
      type: average
      _kind_hint: measure
      _type_hint: number
    - measure: average_of_execute_grand_totals_query
      based_on: query_metrics.execute_grand_totals_query
      expression: ''
      label: Average of Execute Grand Totals Query
      type: average
      _kind_hint: measure
      _type_hint: number
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: Grand Totals Query Execution
    comparison_label: Queries
    defaults_version: 1
    hidden_pivots: {}
    note_state: collapsed
    note_display: hover
    note_text: 'The average time in seconds taken to run a grand total query. Grand
      total queries are optional and when reviewing a specific dashboard it can be
      useful to identify long running totals queries and if they can be removed or
      aggregated. '
    listen:
      Date: history.created_date
      Workspace ID: history.workspace_id
      Result Source: history.result_source
      Model: query.model
      Explore: query.view
      User: user.name
      Status: history.status
      Dashboard: dashboard.title
      Dialect: history.dialect
      Source: history.source
    row: 12
    col: 20
    width: 4
    height: 4
  - name: Initialisation Phase
    type: text
    title_text: Initialisation Phase
    body_text: ''
    row: 6
    col: 0
    width: 24
    height: 1
  - title: Totals Queries
    name: Totals Queries
    model: system__activity
    explore: query_metrics
    type: single_value
    fields: [average_of_execute_totals_query, history.query_run_count_drill]
    filters:
      query_metrics.execute_totals_query: ">0"
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: dimension
      description: ''
      label: Is Async Runtime Value Populated
      value_format:
      value_format_name:
      calculation_type: group_by
      dimension: is_async_runtime_value_populated
      args:
      - query_metrics.async_processing
      - - label: 'Yes'
          filter: ">0"
          __FILE: healthcheck-sa-dashboards/dashboards/google_pso__performance_metrics.dashboard.lookml
          __LINE_NUM: 2919
      - 'No'
      _kind_hint: dimension
      _type_hint: string
    - category: dimension
      description: ''
      label: Was Per User Throttling applied (Yes/No)
      value_format:
      value_format_name:
      calculation_type: group_by
      dimension: was_per_user_throttling_applied_yesno
      args:
      - query_metrics.per_user_throttler
      - - label: 'Yes'
          filter: ">0"
          __FILE: healthcheck-sa-dashboards/dashboards/google_pso__performance_metrics.dashboard.lookml
          __LINE_NUM: 2935
      - 'No'
      _kind_hint: dimension
      _type_hint: string
    - measure: average_of_execute_totals_query
      based_on: query_metrics.execute_totals_query
      expression: ''
      label: Average of Execute Totals Query
      type: average
      _kind_hint: measure
      _type_hint: number
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: Totals Query Execution
    comparison_label: Queries
    defaults_version: 1
    hidden_pivots: {}
    note_state: collapsed
    note_display: hover
    note_text: 'The average time in seconds taken to run a totals query. Total queries
      are optional and when reviewing a specific dashboard it can be useful to identify
      long running totals queries and if they can be removed or aggregated. '
    listen:
      Date: history.created_date
      Workspace ID: history.workspace_id
      Result Source: history.result_source
      Model: query.model
      Explore: query.view
      User: user.name
      Status: history.status
      Dashboard: dashboard.title
      Dialect: history.dialect
      Source: history.source
    row: 12
    col: 12
    width: 4
    height: 4
  - name: Query Execution Phase
    type: text
    title_text: Query Execution Phase
    body_text: ''
    row: 11
    col: 0
    width: 24
    height: 1
  - title: Row Total Queries
    name: Row Total Queries
    model: system__activity
    explore: query_metrics
    type: single_value
    fields: [average_of_execute_row_totals_query, history.query_run_count_drill]
    filters:
      query_metrics.execute_row_totals_query: ">0"
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: dimension
      description: ''
      label: Is Async Runtime Value Populated
      value_format:
      value_format_name:
      calculation_type: group_by
      dimension: is_async_runtime_value_populated
      args:
      - query_metrics.async_processing
      - - label: 'Yes'
          filter: ">0"
          __FILE: healthcheck-sa-dashboards/dashboards/google_pso__performance_metrics.dashboard.lookml
          __LINE_NUM: 3010
      - 'No'
      _kind_hint: dimension
      _type_hint: string
    - category: dimension
      description: ''
      label: Was Per User Throttling applied (Yes/No)
      value_format:
      value_format_name:
      calculation_type: group_by
      dimension: was_per_user_throttling_applied_yesno
      args:
      - query_metrics.per_user_throttler
      - - label: 'Yes'
          filter: ">0"
          __FILE: healthcheck-sa-dashboards/dashboards/google_pso__performance_metrics.dashboard.lookml
          __LINE_NUM: 3026
      - 'No'
      _kind_hint: dimension
      _type_hint: string
    - measure: average_of_execute_row_totals_query
      based_on: query_metrics.execute_row_totals_query
      expression: ''
      label: Average of Execute Row Totals Query
      type: average
      _kind_hint: measure
      _type_hint: number
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: Row Totals Query Execution
    comparison_label: Queries
    defaults_version: 1
    hidden_pivots: {}
    note_state: collapsed
    note_display: hover
    note_text: 'The average time in seconds taken to run a row totals query. Total
      queries are optional and when reviewing a specific dashboard it can be useful
      to identify long running totals queries and if they can be removed, aggregated
      or restructured. '
    listen:
      Date: history.created_date
      Workspace ID: history.workspace_id
      Result Source: history.result_source
      Model: query.model
      Explore: query.view
      User: user.name
      Status: history.status
      Dashboard: dashboard.title
      Dialect: history.dialect
      Source: history.source
    row: 12
    col: 16
    width: 4
    height: 4
  - name: Queries by Source
    type: text
    title_text: Queries by Source
    body_text: ''
    row: 29
    col: 0
    width: 24
    height: 1
  - name: ''
    type: text
    title_text: ''
    body_text: |-
      <nav style="font-size: 18px; padding: 5px 10px 0 10px; height: 60px">
      <a style="padding: 5px; border-top: solid 1px #4285F4; border-left: solid 1px #4285F4; border-right: solid 1px #4285F4; border-radius: 5px 5px 0 0; float: left; line-height: 40px; font-weight: bold;" href="/dashboards/healthcheck::google_pso__performance_metrics">
      Performance Metrics</a>
        <a style="padding: 5px; border-bottom: solid 1px #4285F4; float: left; line-height: 40px;" href="/dashboards/healthcheck::google_cloud__query_outliers">Performance Outliers</a>
        <a style="padding: 5px; border-bottom: solid 1px #4285F4; float: left; line-height: 40px;" href="/dashboards/healthcheck::google_pso__history_query_analysis">History Analysis</a>
        <a style="padding: 5px; border-bottom: solid 1px #4285F4; float: left; line-height: 40px;" href="/dashboards/healthcheck::google_pso__content_delivery">Schedule Analysis</a>
        <a style="padding: 5px; border-bottom: solid 1px #4285F4; float: left; line-height: 40px;" href="/dashboards/healthcheck::google_pso__merged_queries">Merged Queries</a>
        <a style="padding: 5px; border-bottom: solid 1px #4285F4; float: left; line-height: 40px;" href="/dashboards/healthcheck::google_pso__large_dashboards__query_count">Large Dashboards</a>
        <a style="padding: 5px; border-bottom: solid 1px #4285F4; float: left; line-height: 40px;" href="/healthcheck::google_pso__dashboard_optimisation_">Dashboard Optimisation</a>
      </nav>
    row: 0
    col: 0
    width: 24
    height: 2
  - title: Queries By Status
    name: Queries By Status
    model: system__activity
    explore: history
    type: looker_pie
    fields: [history.query_run_count, history.status]
    sorts: [history.query_run_count desc]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: dimension
      description: ''
      label: Queries by User
      value_format:
      value_format_name:
      calculation_type: group_by
      dimension: queries_by_user
      args:
      - user.name
      - - label: Looker Delivery
          filter: Looker Delivery
          __FILE: healthcheck-sa-dashboards/dashboards/google_pso__performance_metrics.dashboard.lookml
          __LINE_NUM: 3119
        - label: Salesforce Integration
          filter: Salesforce Integration
          __FILE: healthcheck-sa-dashboards/dashboards/google_pso__performance_metrics.dashboard.lookml
          __LINE_NUM: 3123
        - label: Looker Operation
          filter: Looker Operation
          __FILE: healthcheck-sa-dashboards/dashboards/google_pso__performance_metrics.dashboard.lookml
          __LINE_NUM: 3127
      - Everyone Else
      _kind_hint: dimension
      _type_hint: string
    value_labels: legend
    label_type: labPer
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    note_state: collapsed
    note_display: hover
    note_text: 'Did a query complete successfully, was it killed or did it encounter
      an error. When reviewing dashboards with high error rates, check initially if
      the dashboard has a required filter and loads on opening. Either change filter
      to not be required or turn off run on opening toggle in dashboard filters.  '
    listen:
      Workspace ID: history.workspace_id
      Date: history.created_date
      Result Source: history.result_source
      Model: query.model
      Explore: query.view
      User: user.name
      Dashboard: dashboard.title
      Dialect: history.dialect
      Source: history.source
    row: 30
    col: 18
    width: 6
    height: 8
  - title: Queries By User Role
    name: Queries By User Role
    model: system__activity
    explore: history
    type: looker_bar
    fields: [history.query_run_count, role.name]
    sorts: [history.query_run_count desc]
    limit: 20
    column_limit: 50
    dynamic_fields:
    - category: dimension
      description: ''
      label: Queries by User
      value_format:
      value_format_name:
      calculation_type: group_by
      dimension: queries_by_user
      args:
      - user.name
      - - label: Looker Delivery
          filter: Looker Delivery
          __FILE: healthcheck-sa-dashboards/dashboards/google_pso__performance_metrics.dashboard.lookml
          __LINE_NUM: 3203
        - label: Salesforce Integration
          filter: Salesforce Integration
          __FILE: healthcheck-sa-dashboards/dashboards/google_pso__performance_metrics.dashboard.lookml
          __LINE_NUM: 3207
        - label: Looker Operation
          filter: Looker Operation
          __FILE: healthcheck-sa-dashboards/dashboards/google_pso__performance_metrics.dashboard.lookml
          __LINE_NUM: 3211
        - label: Eray Kaşıkçı
          filter: Eray Kaşıkçı
          __FILE: healthcheck-sa-dashboards/dashboards/google_pso__performance_metrics.dashboard.lookml
          __LINE_NUM: 3215
      - Everyone Else
      _kind_hint: dimension
      _type_hint: string
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    value_labels: legend
    label_type: labPer
    defaults_version: 1
    listen:
      Workspace ID: history.workspace_id
      Date: history.created_date
      Result Source: history.result_source
      Model: query.model
      Explore: query.view
      User: user.name
      Dashboard: dashboard.title
      Dialect: history.dialect
      Source: history.source
    row: 38
    col: 0
    width: 24
    height: 13
  - title: 'Top 20 Queries '
    name: 'Top 20 Queries '
    model: system__activity
    explore: query_metrics
    type: looker_bar
    fields: [query.link, query_metrics.execute_main_query_average]
    filters:
      query_metrics.execute_main_query: NOT NULL
    sorts: [query_metrics.execute_main_query_average desc]
    limit: 20
    column_limit: 50
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    listen: {}
    row: 83
    col: 0
    width: 24
    height: 10
  filters:
  - name: Date
    title: Date
    type: field_filter
    default_value: 30 day
    allow_multiple_values: true
    required: false
    ui_config:
      type: relative_timeframes
      display: inline
      options: []
    model: system__activity
    explore: query_metrics
    listens_to_filters: []
    field: history.created_date
  - name: Model
    title: Model
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: system__activity
    explore: query_metrics
    listens_to_filters: [Dashboard, Explore, User]
    field: query.model
  - name: Explore
    title: Explore
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: system__activity
    explore: query_metrics
    listens_to_filters: [Dashboard, Model, User]
    field: query.view
  - name: Dashboard
    title: Dashboard
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: system__activity
    explore: query_metrics
    listens_to_filters: [Model, Explore, User]
    field: dashboard.title
  - name: Status
    title: Status
    type: field_filter
    default_value: complete
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: system__activity
    explore: query_metrics
    listens_to_filters: []
    field: history.status
  - name: Workspace ID
    title: Workspace ID
    type: field_filter
    default_value: production
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: system__activity
    explore: query_metrics
    listens_to_filters: []
    field: history.workspace_id
  - name: Source
    title: Source
    type: field_filter
    default_value: -"scheduled_task"
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: system__activity
    explore: query_metrics
    listens_to_filters: []
    field: history.source
  - name: User
    title: User
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: system__activity
    explore: query_metrics
    listens_to_filters: [Dashboard, Model, Explore]
    field: user.name
  - name: Result Source
    title: Result Source
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: system__activity
    explore: query_metrics
    listens_to_filters: []
    field: history.result_source
  - name: Dialect
    title: Dialect
    type: field_filter
    default_value: bigquery_standard_sql
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: system__activity
    explore: history
    listens_to_filters: []
    field: history.dialect
