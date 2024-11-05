view: expediting_hitos_seguimientos_datos_adicionales_fabricacion {
  sql_table_name: bd_ic_cliente.expediting_hitos_seguimientos_datos_adicionales_fabricacion ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: porcentaje {
    type: string
    sql: ${TABLE}.porcentaje ;;
  }
  dimension: seguimiento_id {
    type: number
    sql: ${TABLE}.seguimiento_id ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
