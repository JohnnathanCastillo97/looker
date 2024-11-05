view: corte_integracion {
  sql_table_name: bd_ic_cliente.corte_integracion ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension_group: fecha {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.fecha ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
