view: mst_familias {
  sql_table_name: bd_ic_cliente.mst_familias ;;

  dimension: cod_segmento {
    type: number
    sql: ${TABLE}.cod_segmento ;;
  }
  dimension: familia {
    type: string
    sql: ${TABLE}.familia ;;
  }
  dimension: id_familia {
    type: number
    sql: ${TABLE}.id_familia ;;
  }
  measure: count {
    type: count
  }
}
