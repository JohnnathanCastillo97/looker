view: cumple_doc_proveedor {
  sql_table_name: bd_ic_cliente.cumple_doc_proveedor ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: cumple {
    type: yesno
    sql: ${TABLE}.cumple ;;
  }
  dimension: doc_id {
    type: number
    sql: ${TABLE}.doc_id ;;
  }
  dimension_group: fecha_creacion {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_creacion ;;
  }
  dimension: id_oferta {
    type: number
    sql: ${TABLE}.id_oferta ;;
  }
  dimension: id_usuario {
    type: number
    sql: ${TABLE}.id_usuario ;;
  }
  dimension: usuario_actualizacion {
    type: number
    sql: ${TABLE}.usuario_actualizacion ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
