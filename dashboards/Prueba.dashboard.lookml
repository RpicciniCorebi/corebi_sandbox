- dashboard: prueba
  title: Prueba
  layout: newspaper
  preferred_viewer: dashboards-next
  tile_size: 100

  filters:

  elements:
    - name: hello_world
      model: thelook_partner
      explore: order_items
      type: single_value
      fields: [order_items.order_count]
      filters: {}
      sorts: [order_items.order_count desc]
      limit: 500
      query_timezone: America/Los_Angeles
      font_size: medium
      text_color: black
