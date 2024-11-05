view: riesgo_cumplimiento_pais_proveedor {
  sql_table_name: bd_ic_cliente.riesgo_cumplimiento_pais_proveedor ;;
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
  dimension: ipc {
    type: number
    sql: ${TABLE}.ipc ;;
  }
  dimension: lista_no_coperantes {
    type: string
    sql: ${TABLE}.lista_no_coperantes ;;
  }
  dimension: nivel_riesgo_final {
    type: string
    sql: ${TABLE}.nivel_riesgo_final ;;
  }
  dimension: nivel_riesgo_vs_ipc {
    type: string
    sql: ${TABLE}.nivel_riesgo_vs_ipc ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
