view: mst_estacion {
  sql_table_name: bd_ic_cliente.mst_estacion ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: bodega {
    type: string
    sql: ${TABLE}.bodega ;;
  }
  dimension: centro {
    type: string
    sql: ${TABLE}.centro ;;
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
