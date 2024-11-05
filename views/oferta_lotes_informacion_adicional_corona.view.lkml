view: oferta_lotes_informacion_adicional_corona {
  sql_table_name: bd_ic_cliente.oferta_lotes_informacion_adicional_corona ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: centro {
    type: string
    sql: ${TABLE}.centro ;;
  }
  dimension: cod_lote {
    type: string
    sql: ${TABLE}.cod_lote ;;
  }
  dimension: integracion {
    type: yesno
    sql: ${TABLE}.integracion ;;
  }
  dimension: organizacion_compras {
    type: string
    sql: ${TABLE}.organizacion_compras ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
