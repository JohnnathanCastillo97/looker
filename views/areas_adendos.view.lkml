view: areas_adendos {
  sql_table_name: bd_ic_cliente.areas_adendos ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: areas {
    type: string
    sql: ${TABLE}.areas ;;
  }
  dimension: id_adendo {
    type: number
    sql: ${TABLE}.id_adendo ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
