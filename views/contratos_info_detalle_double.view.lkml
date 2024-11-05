view: contratos_info_detalle_double {
  sql_table_name: bd_ic_cliente.contratos_info_detalle_double ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: contratos_datos_add_double {
    type: number
    sql: ${TABLE}.contratos_datos_add_double ;;
  }
  dimension: datos_double_detalle {
    type: number
    sql: ${TABLE}.datos_double_detalle ;;
  }
  dimension: id_contratos {
    type: number
    sql: ${TABLE}.id_contratos ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
