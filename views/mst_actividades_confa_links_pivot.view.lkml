view: mst_actividades_confa_links_pivot {
  sql_table_name: bd_ic_cliente.mst_actividades_confa_links_pivot ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: mst_actividades_confa_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.mst_actividades_confa_id ;;
  }
  dimension: mst_links_id {
    type: number
    sql: ${TABLE}.mst_links_id ;;
  }
  measure: count {
    type: count
    drill_fields: [id, mst_actividades_confa.id]
  }
}
