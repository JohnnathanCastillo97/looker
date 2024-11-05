view: contratos_moneda {
  sql_table_name: bd_ic_cliente.contratos_moneda ;;
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
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension: id_contrato {
    type: number
    sql: ${TABLE}.id_contrato ;;
  }
  dimension: moneda {
    type: string
    sql: ${TABLE}.moneda ;;
  }
  dimension: trm {
    type: number
    sql: ${TABLE}.trm ;;
  }
  dimension_group: updated {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.updated_at ;;
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
