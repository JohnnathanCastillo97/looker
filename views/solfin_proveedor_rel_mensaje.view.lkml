view: solfin_proveedor_rel_mensaje {
  sql_table_name: bd_ic_cliente.solfin_proveedor_rel_mensaje ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: cod_proveedor {
    type: string
    sql: ${TABLE}.cod_proveedor ;;
  }
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension: id_mensaje {
    type: string
    sql: ${TABLE}.id_mensaje ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
