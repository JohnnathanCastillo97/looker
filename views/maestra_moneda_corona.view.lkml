view: maestra_moneda_corona {
  sql_table_name: bd_ic_cliente.Maestra_moneda_corona ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: abreviacion {
    type: string
    sql: ${TABLE}.abreviacion ;;
  }
  dimension: clave {
    type: string
    sql: ${TABLE}.Clave ;;
  }
  dimension: cod_cliente {
    type: number
    sql: ${TABLE}.Cod_cliente ;;
  }
  dimension: description {
    type: string
    sql: ${TABLE}.Description ;;
  }
  dimension: estado {
    type: number
    sql: ${TABLE}.Estado ;;
  }
  dimension: migradet {
    type: number
    sql: ${TABLE}.migradet ;;
  }
  dimension: mrko {
    type: number
    sql: ${TABLE}.Mrko ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
