view: view_datos_adicionales_contratos_mdm {
  sql_table_name: bd_ic_cliente.view_datos_adicionales_contratos_mdm ;;

  dimension: id_contrato {
    type: number
    sql: ${TABLE}.id_contrato ;;
  }
  dimension: nombre_campo {
    type: string
    sql: ${TABLE}.nombre_campo ;;
  }
  dimension: valor {
    type: string
    sql: ${TABLE}.valor ;;
  }
  measure: count {
    type: count
  }
}
