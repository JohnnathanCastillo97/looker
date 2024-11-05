view: corona_transporte_maquila_respuesta {
  sql_table_name: bd_ic_cliente.corona_transporte_maquila_respuesta ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: cantidad {
    type: string
    sql: ${TABLE}.cantidad ;;
  }
  dimension_group: fecha {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.fecha ;;
  }
  dimension: id_transporte {
    type: number
    sql: ${TABLE}.id_transporte ;;
  }
  dimension: observaciones {
    type: string
    sql: ${TABLE}.observaciones ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
