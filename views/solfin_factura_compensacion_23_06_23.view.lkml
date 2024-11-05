view: solfin_factura_compensacion_23_06_23 {
  sql_table_name: bd_ic_cliente.solfin_factura_compensacion_23_06_23 ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: concat_fact {
    type: string
    sql: ${TABLE}.concat_fact ;;
  }
  dimension_group: fecha_compensacion {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_compensacion ;;
  }
  dimension: id_factura {
    type: number
    sql: ${TABLE}.id_factura ;;
  }
  dimension: importe_compensacion_doc {
    type: string
    sql: ${TABLE}.importe_compensacion_doc ;;
  }
  dimension: importe_compensacion_loc {
    type: string
    sql: ${TABLE}.importe_compensacion_loc ;;
  }
  dimension: num_doc_compensacion {
    type: string
    sql: ${TABLE}.num_doc_compensacion ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
