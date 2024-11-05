view: mst_subarea {
  sql_table_name: bd_ic_cliente.mst_subarea ;;
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
  dimension: id_cliente {
    type: number
    sql: ${TABLE}.id_cliente ;;
  }
  dimension: subarea {
    type: string
    sql: ${TABLE}.subarea ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
