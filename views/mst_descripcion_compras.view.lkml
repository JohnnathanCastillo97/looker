view: mst_descripcion_compras {
  sql_table_name: bd_ic_cliente.mst_descripcion_compras ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: clave {
    type: string
    sql: ${TABLE}.clave ;;
  }
  dimension: descripcion_compra {
    type: string
    sql: ${TABLE}.descripcion_compra ;;
  }
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension: id_cliente {
    type: number
    sql: ${TABLE}.id_cliente ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
