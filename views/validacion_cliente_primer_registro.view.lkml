view: validacion_cliente_primer_registro {
  sql_table_name: bd_ic_cliente.validacion_cliente_primer_registro ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: cod_empresa {
    type: number
    sql: ${TABLE}.cod_empresa ;;
  }
  dimension_group: fecha_de_creacion {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_de_creacion ;;
  }
  dimension: id_cliente {
    type: number
    sql: ${TABLE}.id_cliente ;;
  }
  dimension: pais_validacion {
    type: number
    sql: ${TABLE}.pais_validacion ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
