view: tg_oferta_evaluacion_documento {
  sql_table_name: bd_ic_cliente.tg_oferta_evaluacion_documento ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: accion {
    type: string
    sql: ${TABLE}.accion ;;
  }
  dimension: cumple_no_cumple {
    type: string
    sql: ${TABLE}.cumpleNoCumple ;;
  }
  dimension: documento_id {
    type: number
    sql: ${TABLE}.documento_id ;;
  }
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension_group: fecha_creacion {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_creacion ;;
  }
  dimension_group: fecha_modificacion {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_modificacion ;;
  }
  dimension: file_url {
    type: string
    sql: ${TABLE}.file_url ;;
  }
  dimension: observaciones {
    type: string
    sql: ${TABLE}.observaciones ;;
  }
  dimension: oferta_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.oferta_id ;;
  }
  dimension: resultado_evaluacion {
    type: string
    sql: ${TABLE}.resultado_evaluacion ;;
  }
  dimension: subsanable {
    type: string
    sql: ${TABLE}.subsanable ;;
  }
  dimension: usuario_actualizacion {
    type: number
    sql: ${TABLE}.usuario_actualizacion ;;
  }
  dimension: usuario_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.usuario_id ;;
  }
  measure: count {
    type: count
    drill_fields: [id, usuarios.username, usuarios.id, ofertas.id]
  }
}
