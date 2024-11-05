view: solfin_eventos_dian_masivo {
  sql_table_name: bd_ic_cliente.solfin_eventos_dian_masivo ;;
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
  dimension: fecha_envio {
    type: string
    sql: ${TABLE}.fecha_envio ;;
  }
  dimension_group: fecha_evento {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_evento ;;
  }
  dimension: id_cliente {
    type: number
    sql: ${TABLE}.id_cliente ;;
  }
  dimension: id_factura {
    type: number
    sql: ${TABLE}.id_factura ;;
  }
  dimension: tipo_evento {
    type: string
    sql: ${TABLE}.tipo_evento ;;
  }
  dimension: usuario_registro {
    type: number
    sql: ${TABLE}.usuario_registro ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
