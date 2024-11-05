view: mst_perspectiva {
  sql_table_name: bd_ic_cliente.mst_perspectiva ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: codigo {
    type: number
    sql: ${TABLE}.codigo ;;
  }
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension: id_cliente {
    type: number
    sql: ${TABLE}.id_cliente ;;
  }
  dimension: perspectiva {
    type: string
    sql: ${TABLE}.perspectiva ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
