view: oferta_items_informacion_adicional_corona {
  sql_table_name: bd_ic_cliente.oferta_items_informacion_adicional_corona ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: cod_item {
    type: string
    sql: ${TABLE}.cod_item ;;
  }
  dimension: codigo {
    type: string
    sql: ${TABLE}.codigo ;;
  }
  dimension: marca {
    type: string
    sql: ${TABLE}.marca ;;
  }
  dimension: precio_historico {
    type: string
    sql: ${TABLE}.precio_historico ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
