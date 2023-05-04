# If necessary, uncomment the line below to include explore_source.
view: salesforce_campaing {
  derived_table: {
    explore_source: order_items {
      column: id { field: users.id }
      column: name { field: users.name }
      column: gender { field: users.gender }
      column: email { field: users.email }
      column: total_sale_price {}
      column: total_gross_margin {}
      filters: {
        field: order_items.total_gross_margin
        value: ">700"
      }
    }
  }
  dimension: id {
    description: ""
    tags: ["user_id", "sfdc_contact_id", "sfdc_lead_id"]
    type: number
  }
  dimension: name {
    description: ""
  }
  dimension: gender {
    description: ""
  }
  dimension: email {
    description: ""
  }
  dimension: total_sale_price {
    description: ""
    value_format: "$#,##0.00"
    type: number
  }
  dimension: total_gross_margin {
    description: ""
    value_format: "$#,##0.00"
    type: number
  }
}

# }
