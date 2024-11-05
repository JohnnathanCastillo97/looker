view: ct_origen_docs {
  sql_table_name: bd_ic_cliente.ct_origen_docs ;;

  dimension: id_origen {
    type: number
    sql: ${TABLE}.id_origen ;;
  }
  dimension: nombre_origen {
    type: string
    sql: ${TABLE}.nombre_origen ;;
  }
  measure: count {
    type: count
  }
}
