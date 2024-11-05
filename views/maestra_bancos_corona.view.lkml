view: maestra_bancos_corona {
  sql_table_name: bd_ic_cliente.Maestra_bancos_corona ;;
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
  dimension: clave_table2 {
    type: string
    sql: ${TABLE}.Clave_table2 ;;
  }
  dimension: db {
    type: number
    sql: ${TABLE}.DB ;;
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
  dimension: mrko {
    type: number
    sql: ${TABLE}.Mrko ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}