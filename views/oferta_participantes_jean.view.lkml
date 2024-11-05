view: oferta_participantes_jean {
  sql_table_name: bd_ic_cliente.oferta_participantes_jean ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: carta_invitacion {
    type: string
    sql: ${TABLE}.carta_invitacion ;;
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
  dimension: id_oferta {
    type: number
    sql: ${TABLE}.id_oferta ;;
  }
  dimension: id_proveedor {
    type: string
    sql: ${TABLE}.id_proveedor ;;
  }
  dimension: id_usuario {
    type: number
    sql: ${TABLE}.id_usuario ;;
  }
  dimension: nombre_contacto {
    type: string
    sql: ${TABLE}.nombre_contacto ;;
  }
  dimension: observaciones {
    type: string
    sql: ${TABLE}.observaciones ;;
  }
  dimension: old_id {
    type: number
    sql: ${TABLE}.old_id ;;
  }
  dimension: seq_id {
    type: number
    sql: ${TABLE}.seq_id ;;
  }
  dimension: usuario_actualizacion {
    type: number
    sql: ${TABLE}.usuario_actualizacion ;;
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
