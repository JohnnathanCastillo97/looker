view: solfin_notificacion_correos {
  sql_table_name: bd_ic_cliente.solfin_notificacion_correos ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: correos_a_enviar {
    type: string
    sql: ${TABLE}.correos_a_enviar ;;
  }
  dimension: distinatario {
    type: string
    sql: ${TABLE}.distinatario ;;
  }
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension: id_cliente {
    type: number
    sql: ${TABLE}.id_cliente ;;
  }
  dimension: tipo_notificacion {
    type: string
    sql: ${TABLE}.tipo_notificacion ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
