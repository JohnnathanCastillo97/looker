view: mst_categorias {
  sql_table_name: bd_ic_cliente.mst_categorias ;;

  dimension: categoria {
    type: string
    sql: ${TABLE}.categoria ;;
  }
  dimension: cod_familia {
    type: number
    sql: ${TABLE}.cod_familia ;;
  }
  dimension: id_categoria {
    type: number
    sql: ${TABLE}.id_categoria ;;
  }
  measure: count {
    type: count
  }
}
