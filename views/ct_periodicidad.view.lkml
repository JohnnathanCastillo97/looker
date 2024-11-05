view: ct_periodicidad {
  sql_table_name: bd_ic_cliente.ct_periodicidad ;;

  dimension: id_cliente {
    type: number
    sql: ${TABLE}.id_cliente ;;
  }
  dimension: id_periodicidad {
    type: number
    sql: ${TABLE}.id_periodicidad ;;
  }
  dimension: nombre_periodicidad {
    type: string
    sql: ${TABLE}.nombre_periodicidad ;;
  }
  measure: count {
    type: count
  }
}
