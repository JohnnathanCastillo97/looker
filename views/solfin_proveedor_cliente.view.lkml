view: solfin_proveedor_cliente {
  sql_table_name: bd_ic_cliente.solfin_proveedor_cliente ;;
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
  dimension: id_cliente {
    type: number
    sql: ${TABLE}.id_cliente ;;
  }
  dimension: id_empresa {
    type: number
    sql: ${TABLE}.id_empresa ;;
  }
  dimension: tipo_proveedor {
    type: string
    sql: ${TABLE}.tipo_proveedor ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
