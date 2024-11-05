view: contratos_requisicion {
  sql_table_name: bd_ic_cliente.contratos_requisicion ;;

  dimension: contratos_adendos_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.contratos_adendos_id ;;
  }
  dimension: id_contratos_requisicion {
    type: number
    sql: ${TABLE}.id_contratos_requisicion ;;
  }
  dimension: requisiciones_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.requisiciones_id ;;
  }
  measure: count {
    type: count
    drill_fields: [requisiciones.id, contratos_adendos.id]
  }
}
