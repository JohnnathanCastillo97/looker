view: subasta_participantes {
  sql_table_name: bd_ic_cliente.subasta_participantes ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: email_usuario {
    type: string
    sql: ${TABLE}.email_usuario ;;
  }
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension: estado_participacion {
    type: string
    sql: ${TABLE}.estado_participacion ;;
  }
  dimension: factor_multiplicador {
    type: string
    sql: ${TABLE}.factor_multiplicador ;;
  }
  dimension_group: fecha_actualizacion {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_actualizacion ;;
  }
  dimension_group: fecharegistro {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecharegistro ;;
  }
  dimension: id_subasta {
    type: number
    sql: ${TABLE}.id_subasta ;;
  }
  dimension: id_usuario {
    type: number
    sql: ${TABLE}.id_usuario ;;
  }
  dimension: observacion_factor {
    type: string
    sql: ${TABLE}.observacion_factor ;;
  }
  dimension: old_id {
    type: number
    sql: ${TABLE}.old_id ;;
  }
  dimension: porcentaje_factor {
    type: number
    sql: ${TABLE}.porcentaje_factor ;;
  }
  dimension: seq_id {
    type: number
    sql: ${TABLE}.seq_id ;;
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
