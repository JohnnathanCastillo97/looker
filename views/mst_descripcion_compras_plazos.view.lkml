view: mst_descripcion_compras_plazos {
  sql_table_name: bd_ic_cliente.mst_descripcion_compras_plazos ;;
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
  dimension: id_descripcion_compra {
    type: number
    sql: ${TABLE}.id_descripcion_compra ;;
  }
  dimension: id_pais {
    type: number
    sql: ${TABLE}.id_pais ;;
  }
  dimension: plazo_dias {
    type: string
    sql: ${TABLE}.plazo_dias ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
