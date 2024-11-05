view: plan_accion_respuesta {
  sql_table_name: bd_ic_cliente.plan_accion_respuesta ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: accion {
    type: string
    sql: ${TABLE}.accion ;;
  }
  dimension: causa {
    type: string
    sql: ${TABLE}.causa ;;
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
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension_group: fecha_implementacion {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.fecha_implementacion ;;
  }
  dimension: id_plan_accion {
    type: number
    sql: ${TABLE}.id_plan_accion ;;
  }
  dimension: no_conformidad {
    type: string
    sql: ${TABLE}.no_conformidad ;;
  }
  dimension: responsable {
    type: string
    sql: ${TABLE}.responsable ;;
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
