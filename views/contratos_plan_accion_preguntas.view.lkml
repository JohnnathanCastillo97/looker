view: contratos_plan_accion_preguntas {
  sql_table_name: bd_ic_cliente.contratos_plan_accion_preguntas ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension_group: fecha_creacion {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_creacion ;;
  }
  dimension_group: fecha_requerida {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.fecha_requerida ;;
  }
  dimension: id_plan {
    type: number
    sql: ${TABLE}.id_plan ;;
  }
  dimension: plan_accion_descripcion {
    type: string
    sql: ${TABLE}.plan_accion_descripcion ;;
  }
  dimension: plan_accion_nombre {
    type: string
    sql: ${TABLE}.plan_accion_nombre ;;
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
