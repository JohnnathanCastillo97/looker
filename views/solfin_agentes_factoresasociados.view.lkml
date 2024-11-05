view: solfin_agentes_factoresasociados {
  sql_table_name: bd_ic_cliente.solfin_agentes_factoresasociados ;;
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
  dimension: id_factor {
    type: string
    sql: ${TABLE}.id_factor ;;
  }
  dimension: id_pagador {
    type: string
    sql: ${TABLE}.id_pagador ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
