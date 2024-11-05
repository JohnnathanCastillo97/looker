view: contratos_otros_adjuntos {
  sql_table_name: bd_ic_cliente.contratos_otros_adjuntos ;;

  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension: id_co_otros_adj {
    type: number
    sql: ${TABLE}.id_co_otros_adj ;;
  }
  dimension: id_vinculacion {
    type: number
    sql: ${TABLE}.id_vinculacion ;;
  }
  dimension: nombre {
    type: string
    sql: ${TABLE}.nombre ;;
  }
  dimension: ruta {
    type: string
    sql: ${TABLE}.ruta ;;
  }
  dimension: tipo_co_otros_adj {
    type: string
    sql: ${TABLE}.tipo_co_otros_adj ;;
  }
  measure: count {
    type: count
  }
}
