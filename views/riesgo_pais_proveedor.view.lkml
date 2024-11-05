view: riesgo_pais_proveedor {
  sql_table_name: bd_ic_cliente.riesgo_pais_proveedor ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension: id_cliente {
    type: number
    sql: ${TABLE}.id_cliente ;;
  }
  dimension: idpais {
    type: number
    sql: ${TABLE}.idpais ;;
  }
  dimension: nivel_riesgo {
    type: number
    sql: ${TABLE}.nivel_riesgo ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
