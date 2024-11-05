view: maestra_tipo_mat {
  sql_table_name: bd_ic_cliente.Maestra_tipo_mat ;;
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
  dimension: estado {
    type: number
    sql: ${TABLE}.Estado ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}