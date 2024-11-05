view: personal_cargado_por_proveedor_evaluacion_mensual_acuacar {
  sql_table_name: bd_ic_cliente.personal_cargado_por_proveedor_evaluacion_mensual_acuacar ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: archivo {
    type: string
    sql: ${TABLE}.archivo ;;
  }
  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.created_at ;;
  }
  dimension: created_by {
    type: number
    sql: ${TABLE}.created_by ;;
  }
  dimension_group: enviado {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.enviado_at ;;
  }
  dimension: enviado_by {
    type: number
    sql: ${TABLE}.enviado_by ;;
  }
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension: fecha_correspondiente {
    type: string
    sql: ${TABLE}.fecha_correspondiente ;;
  }
  dimension: personal_id {
    type: number
    sql: ${TABLE}.personal_id ;;
  }
  dimension_group: updated {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.updated_at ;;
  }
  dimension: updated_by {
    type: number
    sql: ${TABLE}.updated_by ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
