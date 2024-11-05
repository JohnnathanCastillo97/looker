view: mst_actividades_confa {
  sql_table_name: bd_ic_cliente.mst_actividades_confa ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.created_at ;;
  }
  dimension: estado {
    type: yesno
    sql: ${TABLE}.estado ;;
  }
  dimension: id_producto_actividad {
    type: string
    sql: ${TABLE}.idProductoActividad ;;
  }
  dimension: link {
    type: string
    sql: ${TABLE}.link ;;
  }
  dimension_group: updated {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.updated_at ;;
  }
  measure: count {
    type: count
    drill_fields: [id, mst_actividades_confa_links_pivot.count]
  }
}
