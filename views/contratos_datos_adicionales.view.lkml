view: contratos_datos_adicionales {
  sql_table_name: bd_ic_cliente.contratos_datos_adicionales ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: comentario_campo {
    type: string
    sql: ${TABLE}.comentario_campo ;;
  }
  dimension: id_clientes {
    type: number
    sql: ${TABLE}.id_clientes ;;
  }
  dimension: id_contratos_tabla_control {
    type: number
    sql: ${TABLE}.id_contratos_tabla_control ;;
  }
  dimension: nombre_campo {
    type: string
    sql: ${TABLE}.nombre_campo ;;
  }
  dimension: tipo_campo {
    type: string
    sql: ${TABLE}.tipo_campo ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
