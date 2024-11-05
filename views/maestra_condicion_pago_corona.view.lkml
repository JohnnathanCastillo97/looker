view: maestra_condicion_pago_corona {
  sql_table_name: bd_ic_cliente.Maestra_condicion_pago_corona ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: clave_table1 {
    type: string
    sql: ${TABLE}.Clave_table1 ;;
  }
  dimension: cod_cliente {
    type: string
    sql: ${TABLE}.cod_cliente ;;
  }
  dimension: description1 {
    type: string
    sql: ${TABLE}.Description1 ;;
  }
  dimension: description2 {
    type: string
    sql: ${TABLE}.Description2 ;;
  }
  dimension: estado {
    type: number
    sql: ${TABLE}.Estado ;;
  }
  dimension: migradet {
    type: number
    sql: ${TABLE}.migradet ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
