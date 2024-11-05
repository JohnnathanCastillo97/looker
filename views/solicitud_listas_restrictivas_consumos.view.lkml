view: solicitud_listas_restrictivas_consumos {
  sql_table_name: bd_ic_cliente.solicitud_listas_restrictivas_consumos ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: check_id {
    type: string
    sql: ${TABLE}.check_id ;;
  }
  dimension: descripcion {
    type: string
    sql: ${TABLE}.descripcion ;;
  }
  dimension_group: fecha {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha ;;
  }
  dimension: id_solicitud_listas_restrictivas_diligenciamiento {
    type: number
    sql: ${TABLE}.idSolicitudListasRestrictivasDiligenciamiento ;;
  }
  dimension: modo {
    type: string
    sql: ${TABLE}.modo ;;
  }
  dimension: respuesta {
    type: string
    sql: ${TABLE}.respuesta ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
