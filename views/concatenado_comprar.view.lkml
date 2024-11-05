view: concatenado_comprar {
  sql_table_name: bd_ic_cliente.concatenado_comprar ;;

  dimension: concatenado {
    type: string
    sql: ${TABLE}.concatenado ;;
  }
  dimension: id_tabla_consignacion {
    type: number
    sql: ${TABLE}.id_tabla_consignacion ;;
  }
  measure: count {
    type: count
  }
}
