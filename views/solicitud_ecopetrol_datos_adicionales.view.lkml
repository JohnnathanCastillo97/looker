view: solicitud_ecopetrol_datos_adicionales {
  sql_table_name: bd_ic_cliente.solicitud_ecopetrol_datos_adicionales ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.created_at ;;
  }
  dimension: datos {
    type: string
    sql: ${TABLE}.datos ;;
  }
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension: orden_cambios {
    type: number
    sql: ${TABLE}.orden_cambios ;;
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
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.updated_at ;;
  }
  dimension: usuario_actualizacion {
    type: number
    sql: ${TABLE}.usuario_actualizacion ;;
  }
  dimension: usuario_creacion {
    type: number
    sql: ${TABLE}.usuario_creacion ;;
  }
  measure: count {
    type: count
    drill_fields: [id, solicitud.id]
  }
}
