view: usuario_solicitante_reporte_cenit {
  sql_table_name: bd_ic_cliente.usuario_solicitante_reporte_cenit ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: correo_usuario {
    type: string
    sql: ${TABLE}.correo_usuario ;;
  }
  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.created_at ;;
  }
  dimension: estado_solicitud {
    type: string
    sql: ${TABLE}.estado_solicitud ;;
  }
  dimension_group: updated {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.updated_at ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
