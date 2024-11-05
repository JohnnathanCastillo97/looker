view: solicitud_ecopetrol_gestion_campos_adicionales {
  sql_table_name: bd_ic_cliente.solicitud_ecopetrol_gestion_campos_adicionales ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: campo {
    type: string
    sql: ${TABLE}.campo ;;
  }
  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.created_at ;;
  }
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension: gestion_id {
    type: number
    sql: ${TABLE}.gestion_id ;;
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
  dimension: valor {
    type: string
    sql: ${TABLE}.valor ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
