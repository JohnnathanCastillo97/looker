view: subclientes_info_corona {
  sql_table_name: bd_ic_cliente.subclientes_info_corona ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: fieldname2 {
    type: string
    sql: ${TABLE}.fieldname2 ;;
  }
  dimension: id_subcliente {
    type: number
    sql: ${TABLE}.id_subcliente ;;
  }
  dimension: migradet {
    type: number
    sql: ${TABLE}.migradet ;;
  }
  dimension: mrko {
    type: number
    sql: ${TABLE}.Mrko ;;
  }
  dimension: text1 {
    type: string
    sql: ${TABLE}.text1 ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
