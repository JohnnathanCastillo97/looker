view: tb_precalificacion_seguimiento {
  sql_table_name: bd_ic_cliente.tb_precalificacion_seguimiento ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension_group: fecha_observacion {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.fechaObservacion ;;
  }
  dimension: id_usuario_creador {
    type: number
    sql: ${TABLE}.idUsuarioCreador ;;
  }
  dimension: observacion {
    type: string
    sql: ${TABLE}.observacion ;;
  }
  dimension: precalificacion_id {
    type: number
    sql: ${TABLE}.precalificacionId ;;
  }
  dimension: subestado {
    type: string
    sql: ${TABLE}.subestado ;;
  }
  dimension: tipo {
    type: string
    sql: ${TABLE}.tipo ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
