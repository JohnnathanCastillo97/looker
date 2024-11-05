view: contratos_info_detalle_varchar {
  sql_table_name: bd_ic_cliente.contratos_info_detalle_varchar ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: contratos_datos_add_varchar {
    type: number
    sql: ${TABLE}.contratos_datos_add_varchar ;;
  }
  dimension: datos_varchar_detalle {
    type: string
    sql: ${TABLE}.datos_varchar_detalle ;;
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
