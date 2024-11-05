view: expediting_corona_hitos_seguimientos_datos_adicionales_alista {
  sql_table_name: bd_ic_cliente.expediting_corona_hitos_seguimientos_datos_adicionales_alista ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: documento_path {
    type: string
    sql: ${TABLE}.documento_path ;;
  }
  dimension_group: fecha {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.fecha ;;
  }
  dimension: observacion {
    type: string
    sql: ${TABLE}.observacion ;;
  }
  dimension: seguimiento_id {
    type: number
    sql: ${TABLE}.seguimiento_id ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
