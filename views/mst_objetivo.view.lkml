view: mst_objetivo {
  sql_table_name: bd_ic_cliente.mst_objetivo ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: codigo_objetivo {
    type: string
    sql: ${TABLE}.codigo_objetivo ;;
  }
  dimension: codigo_prespectiva {
    type: number
    sql: ${TABLE}.codigo_prespectiva ;;
  }
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension: id_cliente {
    type: number
    sql: ${TABLE}.id_cliente ;;
  }
  dimension: objetivo {
    type: string
    sql: ${TABLE}.objetivo ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
