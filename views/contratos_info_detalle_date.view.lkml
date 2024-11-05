view: contratos_info_detalle_date {
  sql_table_name: bd_ic_cliente.contratos_info_detalle_date ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: contratos_datos_add_date {
    type: number
    sql: ${TABLE}.contratos_datos_add_date ;;
  }
  dimension_group: datos_date_detalle {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.datos_date_detalle ;;
  }
  dimension: id_contratos {
    type: number
    sql: ${TABLE}.id_contratos ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
