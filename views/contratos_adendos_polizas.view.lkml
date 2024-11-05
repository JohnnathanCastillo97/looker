view: contratos_adendos_polizas {
  sql_table_name: bd_ic_cliente.contratos_adendos_polizas ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: id_contratos_adendos {
    type: number
    sql: ${TABLE}.id_contratos_adendos ;;
  }
  dimension: id_contratos_polizas {
    type: number
    sql: ${TABLE}.id_contratos_polizas ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
