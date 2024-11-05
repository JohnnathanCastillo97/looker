view: solicitud_listas_restrictivas_bases {
  sql_table_name: bd_ic_cliente.solicitud_listas_restrictivas_bases ;;
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
  dimension: id_base {
    type: string
    sql: ${TABLE}.idBase ;;
  }
  dimension: nombre_base {
    type: string
    sql: ${TABLE}.nombreBase ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
