view: ct_tipo_cert {
  sql_table_name: bd_ic_cliente.ct_tipo_cert ;;

  dimension: id_cliente {
    type: number
    sql: ${TABLE}.id_cliente ;;
  }
  dimension: id_periodicidad {
    type: number
    sql: ${TABLE}.id_periodicidad ;;
  }
  dimension: id_tipo_cert {
    type: number
    sql: ${TABLE}.id_tipo_cert ;;
  }
  dimension: nombre_tipo_cert {
    type: string
    sql: ${TABLE}.nombre_tipo_cert ;;
  }
  measure: count {
    type: count
  }
}
