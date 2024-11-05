view: mst_iconos_personalizados {
  sql_table_name: bd_ic_cliente.mst_iconos_personalizados ;;

  dimension: clave {
    type: string
    sql: ${TABLE}.clave ;;
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
  dimension: id_icono {
    type: number
    sql: ${TABLE}.id_icono ;;
  }
  dimension: nombre_icono {
    type: string
    sql: ${TABLE}.nombre_icono ;;
  }
  measure: count {
    type: count
  }
}
