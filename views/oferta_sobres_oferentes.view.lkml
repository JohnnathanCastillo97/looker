view: oferta_sobres_oferentes {
  sql_table_name: bd_ic_cliente.oferta_sobres_oferentes ;;
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
  dimension_group: fecha_actualizacion {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_actualizacion ;;
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
  dimension: id_proveedor {
    type: number
    sql: ${TABLE}.id_proveedor ;;
  }
  dimension: id_sobre {
    type: number
    sql: ${TABLE}.id_sobre ;;
  }
  dimension: usuario_calificacion {
    type: number
    sql: ${TABLE}.usuario_calificacion ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
