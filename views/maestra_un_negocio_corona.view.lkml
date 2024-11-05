view: maestra_un_negocio_corona {
  sql_table_name: bd_ic_cliente.Maestra_un_negocio_corona ;;
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
  dimension: cod_cliente {
    type: string
    sql: ${TABLE}.cod_cliente ;;
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
