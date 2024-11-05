view: contratos_revision_supervisores {
  sql_table_name: bd_ic_cliente.contratos_revision_supervisores ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: acta_aceptacion {
    type: string
    sql: ${TABLE}.acta_aceptacion ;;
  }
  dimension: certificado_capacitacion {
    type: string
    sql: ${TABLE}.certificado_capacitacion ;;
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
  dimension: supervisor_id {
    type: number
    sql: ${TABLE}.supervisor_id ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
