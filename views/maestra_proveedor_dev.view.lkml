view: maestra_proveedor_dev {
  sql_table_name: bd_ic_cliente.Maestra_proveedor_dev ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.Id ;;
  }
  dimension: clave_table1 {
    type: string
    sql: ${TABLE}.Clave_table1 ;;
  }
  dimension: clave_table2 {
    type: string
    sql: ${TABLE}.Clave_table2 ;;
  }
  dimension: clave_table3 {
    type: string
    sql: ${TABLE}.Clave_table3 ;;
  }
  dimension: description1 {
    type: string
    sql: ${TABLE}.Description1 ;;
  }
  dimension: description2 {
    type: string
    sql: ${TABLE}.Description2 ;;
  }
  dimension: description3 {
    type: string
    sql: ${TABLE}.Description3 ;;
  }
  dimension: description4 {
    type: string
    sql: ${TABLE}.Description4 ;;
  }
  dimension: table_name {
    type: string
    sql: ${TABLE}.Table_name ;;
  }
  measure: count {
    type: count
    drill_fields: [id, table_name]
  }
}
