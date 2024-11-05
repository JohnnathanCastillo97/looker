view: solfin_factura_soporte_mensaje {
  sql_table_name: bd_ic_cliente.solfin_factura_soporte_mensaje ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension_group: fecha_registro {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_registro ;;
  }
  dimension: id_mensaje {
    type: string
    sql: ${TABLE}.id_mensaje ;;
  }
  dimension: nombre_doc {
    type: string
    sql: ${TABLE}.nombre_doc ;;
  }
  dimension: url {
    type: string
    sql: ${TABLE}.url ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
