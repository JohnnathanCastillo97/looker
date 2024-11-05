view: oferta_participantes_registro_consorcio {
  sql_table_name: bd_ic_cliente.oferta_participantes_registro_consorcio ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: email_usuario_registra {
    type: string
    sql: ${TABLE}.email_usuario_registra ;;
  }
  dimension: empresas_consorcio {
    type: string
    sql: ${TABLE}.empresas_consorcio ;;
  }
  dimension: en_consorcio {
    type: string
    sql: ${TABLE}.en_consorcio ;;
  }
  dimension_group: fecha_registro {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_registro ;;
  }
  dimension: id_oferta {
    type: number
    sql: ${TABLE}.id_oferta ;;
  }
  dimension: id_usuario_registra {
    type: number
    sql: ${TABLE}.id_usuario_registra ;;
  }
  dimension: nombre_consorcio {
    type: string
    sql: ${TABLE}.nombre_consorcio ;;
  }
  dimension: nombre_usuario_registra {
    type: string
    sql: ${TABLE}.nombre_usuario_registra ;;
  }
  dimension: numero_documento {
    type: string
    sql: ${TABLE}.numero_documento ;;
  }
  dimension: tipo_documento {
    type: string
    sql: ${TABLE}.tipo_documento ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
