view: expediting_hitos_general {
  sql_table_name: bd_ic_cliente.expediting_hitos_general ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: alcance {
    type: string
    sql: ${TABLE}.alcance ;;
  }
  dimension: expediting_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.expediting_id ;;
  }
  measure: count {
    type: count
    drill_fields: [id, expediting.id]
  }
}
