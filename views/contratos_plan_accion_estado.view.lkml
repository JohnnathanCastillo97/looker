view: contratos_plan_accion_estado {
  sql_table_name: bd_ic_cliente.contratos_plan_accion_estado ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: comentarios {
    type: string
    sql: ${TABLE}.comentarios ;;
  }
  dimension: estado_plan {
    type: string
    sql: ${TABLE}.estado_plan ;;
  }
  dimension_group: fecha_creacion {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_creacion ;;
  }
  dimension: id_contrato {
    type: number
    sql: ${TABLE}.id_contrato ;;
  }
  dimension: id_plan_accion {
    type: number
    sql: ${TABLE}.id_plan_accion ;;
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
