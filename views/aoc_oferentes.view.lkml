view: aoc_oferentes {
  sql_table_name: bd_ic_cliente.aoc_oferentes ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension: id_aoc {
    type: number
    sql: ${TABLE}.id_aoc ;;
  }
  dimension: id_contacto {
    type: number
    sql: ${TABLE}.id_contacto ;;
  }
  dimension: id_oferente {
    type: number
    sql: ${TABLE}.id_oferente ;;
  }
  dimension: razon_tecnica {
    type: string
    sql: ${TABLE}.razon_tecnica ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
