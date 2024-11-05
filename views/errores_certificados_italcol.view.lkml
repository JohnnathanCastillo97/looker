view: errores_certificados_italcol {
  sql_table_name: bd_ic_cliente.errores_certificados_italcol ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: anio {
    type: number
    sql: ${TABLE}.anio ;;
  }
  dimension: certificado {
    type: string
    sql: ${TABLE}.certificado ;;
  }
  dimension: cia {
    type: number
    sql: ${TABLE}.cia ;;
  }
  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.created_at ;;
  }
  dimension: error {
    type: string
    sql: ${TABLE}.error ;;
  }
  dimension: nit {
    type: string
    sql: ${TABLE}.nit ;;
  }
  dimension: periodo_final {
    type: number
    sql: ${TABLE}.periodo_final ;;
  }
  dimension: periodo_inicial {
    type: number
    sql: ${TABLE}.periodo_inicial ;;
  }
  dimension: retencion {
    type: number
    sql: ${TABLE}.retencion ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
