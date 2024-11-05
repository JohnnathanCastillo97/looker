view: requisiciones_moneda {
  sql_table_name: bd_ic_cliente.requisiciones_moneda ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: contrato {
    type: number
    sql: ${TABLE}.contrato ;;
  }
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension_group: fecha_actualizacion {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_actualizacion ;;
  }
  dimension_group: fecha_creacion {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_creacion ;;
  }
  dimension: id_requisicion {
    type: number
    sql: ${TABLE}.id_requisicion ;;
  }
  dimension: moneda {
    type: string
    sql: ${TABLE}.moneda ;;
  }
  dimension: trm {
    type: number
    sql: ${TABLE}.trm ;;
  }
  dimension: usuario_actualizacion {
    type: number
    sql: ${TABLE}.usuario_actualizacion ;;
  }
  dimension: usuario_creacion {
    type: number
    sql: ${TABLE}.usuario_creacion ;;
  }
  dimension: valorcon {
    type: number
    sql: ${TABLE}.valorcon ;;
  }
  dimension: valoriva {
    type: number
    sql: ${TABLE}.valoriva ;;
  }
  dimension: valorsin {
    type: number
    sql: ${TABLE}.valorsin ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
