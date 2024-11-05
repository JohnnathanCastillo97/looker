view: solicitud_ocensa_info_adicional {
  sql_table_name: bd_ic_cliente.solicitud_ocensa_info_adicional ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: categoria {
    type: string
    sql: ${TABLE}.categoria ;;
  }
  dimension_group: created {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.created_at ;;
  }
  dimension: datos {
    type: string
    sql: ${TABLE}.datos ;;
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
  dimension: usuario_creacion {
    type: number
    sql: ${TABLE}.usuario_creacion ;;
  }
  dimension: usuarios_actualizacion {
    type: number
    sql: ${TABLE}.usuarios_actualizacion ;;
  }
  measure: count {
    type: count
    drill_fields: [id, solicitud.id]
  }
}
