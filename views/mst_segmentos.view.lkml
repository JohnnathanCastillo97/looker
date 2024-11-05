view: mst_segmentos {
  sql_table_name: bd_ic_cliente.mst_segmentos ;;

  dimension: cod_empresa {
    type: number
    sql: ${TABLE}.cod_empresa ;;
  }
  dimension: id_segmento {
    type: number
    sql: ${TABLE}.id_segmento ;;
  }
  dimension: segmento {
    type: string
    sql: ${TABLE}.segmento ;;
  }
  measure: count {
    type: count
  }
}
