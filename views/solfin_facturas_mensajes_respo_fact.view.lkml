view: solfin_facturas_mensajes_respo_fact {
  sql_table_name: bd_ic_cliente.solfin_facturas_mensajes_respo_fact ;;
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
  dimension: fecha_lectura_pgd {
    type: string
    sql: ${TABLE}.fecha_lectura_pgd ;;
  }
  dimension: fecha_lectura_prv {
    type: string
    sql: ${TABLE}.fecha_lectura_prv ;;
  }
  dimension: fecha_registro {
    type: string
    sql: ${TABLE}.fecha_registro ;;
  }
  dimension: fecha_respuesta {
    type: string
    sql: ${TABLE}.fecha_respuesta ;;
  }
  dimension: id_cliente {
    type: number
    sql: ${TABLE}.id_cliente ;;
  }
  dimension: id_facturas {
    type: string
    sql: ${TABLE}.id_facturas ;;
  }
  dimension: id_mensaje {
    type: number
    sql: ${TABLE}.id_mensaje ;;
  }
  dimension: id_mensaje_respo {
    type: number
    sql: ${TABLE}.id_mensaje_respo ;;
  }
  dimension: mensaje {
    type: string
    sql: ${TABLE}.mensaje ;;
  }
  dimension: num_facturas {
    type: string
    sql: ${TABLE}.num_facturas ;;
  }
  dimension: origen_envio {
    type: string
    sql: ${TABLE}.origen_envio ;;
  }
  dimension: plantilla_mensaje {
    type: string
    sql: ${TABLE}.plantilla_mensaje ;;
  }
  dimension: usuario_lectura_pgd {
    type: string
    sql: ${TABLE}.usuario_lectura_pgd ;;
  }
  dimension: usuario_lectura_prv {
    type: string
    sql: ${TABLE}.usuario_lectura_prv ;;
  }
  dimension: usuario_registro {
    type: string
    sql: ${TABLE}.usuario_registro ;;
  }
  dimension: usuario_respuesta {
    type: string
    sql: ${TABLE}.usuario_respuesta ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
