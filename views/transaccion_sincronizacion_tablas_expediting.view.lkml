view: transaccion_sincronizacion_tablas_expediting {
  sql_table_name: bd_ic_cliente.TransaccionSincronizacionTablasExpediting ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: ebeln {
    type: string
    sql: ${TABLE}.Ebeln ;;
  }
  dimension: ebelp {
    type: string
    sql: ${TABLE}.Ebelp ;;
  }
  dimension_group: fecha {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha ;;
  }
  dimension: nombre_tabla {
    type: string
    sql: ${TABLE}.nombreTabla ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
