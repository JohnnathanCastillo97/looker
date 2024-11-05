view: solicitud_listas_nombres {
  sql_table_name: bd_ic_cliente.solicitud_listas_nombres ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: elegido {
    type: string
    sql: ${TABLE}.elegido ;;
  }
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension: id_cliente {
    type: number
    sql: ${TABLE}.id_cliente ;;
  }
  dimension: id_solicitud_listas_restrictivas_diligenciamiento {
    type: number
    sql: ${TABLE}.id_solicitud_listas_restrictivas_diligenciamiento ;;
  }
  dimension: nombre_razon_social {
    type: string
    sql: ${TABLE}.nombre_razon_social ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
