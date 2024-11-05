view: ct_mst_cuentas {
  sql_table_name: bd_ic_cliente.ct_mst_cuentas ;;

  dimension: cuenta {
    type: string
    sql: ${TABLE}.cuenta ;;
  }
  dimension: estado {
    type: yesno
    sql: ${TABLE}.estado ;;
  }
  dimension: id_cliente {
    type: number
    sql: ${TABLE}.id_cliente ;;
  }
  dimension: id_cuenta {
    type: number
    sql: ${TABLE}.id_cuenta ;;
  }
  dimension: indice {
    type: string
    sql: ${TABLE}.indice ;;
  }
  dimension: municipio {
    type: string
    sql: ${TABLE}.municipio ;;
  }
  dimension: nombre {
    type: string
    sql: ${TABLE}.nombre ;;
  }
  dimension: tipo_dato {
    type: string
    sql: ${TABLE}.tipo_dato ;;
  }
  measure: count {
    type: count
  }
}
