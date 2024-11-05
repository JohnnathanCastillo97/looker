view: historico_acciones_ocensa_solicitudes {
  sql_table_name: bd_ic_cliente.historico_acciones_ocensa_solicitudes ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension_group: created {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.created_at ;;
  }
  dimension: solicitud_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.solicitud_id ;;
  }
  dimension: tipo {
    type: string
    sql: ${TABLE}.tipo ;;
  }
  dimension_group: updated {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.updated_at ;;
  }
  dimension: usuario {
    type: number
    sql: ${TABLE}.usuario ;;
  }
  dimension: usuario_nombre {
    type: string
    sql: ${TABLE}.usuario_nombre ;;
  }
  measure: count {
    type: count
    drill_fields: [id, solicitud.id]
  }
}
