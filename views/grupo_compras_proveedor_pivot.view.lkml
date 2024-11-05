view: grupo_compras_proveedor_pivot {
  sql_table_name: bd_ic_cliente.grupo_compras_proveedor_pivot ;;
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
  dimension: id_grupo_compras {
    type: number
    sql: ${TABLE}.id_grupo_compras ;;
  }
  dimension: id_proveedor {
    type: number
    sql: ${TABLE}.id_proveedor ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
