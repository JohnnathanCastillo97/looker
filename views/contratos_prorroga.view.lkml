view: contratos_prorroga {
  sql_table_name: bd_ic_cliente.contratos_prorroga ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: dias {
    type: number
    sql: ${TABLE}.dias ;;
  }
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension_group: fecha_registro {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_registro ;;
  }
  dimension: id_contrato_adendo {
    type: number
    sql: ${TABLE}.id_contrato_adendo ;;
  }
  dimension: monto {
    type: number
    sql: ${TABLE}.monto ;;
  }
  dimension: observaciones {
    type: string
    sql: ${TABLE}.observaciones ;;
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
