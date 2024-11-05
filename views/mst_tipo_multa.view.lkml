view: mst_tipo_multa {
  sql_table_name: bd_ic_cliente.mst_tipo_multa ;;

  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension: id_empresa {
    type: number
    sql: ${TABLE}.id_empresa ;;
  }
  dimension: id_tipo_multa {
    type: number
    sql: ${TABLE}.id_tipo_multa ;;
  }
  dimension: nombre {
    type: string
    sql: ${TABLE}.nombre ;;
  }
  measure: count {
    type: count
  }
}
