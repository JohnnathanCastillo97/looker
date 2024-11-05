view: paa_proyectos_cliente {
  sql_table_name: bd_ic_cliente.paa_proyectos_cliente ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: id_cliente {
    type: number
    sql: ${TABLE}.id_cliente ;;
  }
  dimension: nombre_pro {
    type: string
    sql: ${TABLE}.nombre_pro ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
