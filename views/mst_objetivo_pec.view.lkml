view: mst_objetivo_pec {
  sql_table_name: bd_ic_cliente.mst_objetivo_pec ;;
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
  dimension: nombre {
    type: string
    sql: ${TABLE}.nombre ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
