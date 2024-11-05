view: solfin_facturas_mensajes {
  sql_table_name: bd_ic_cliente.solfin_facturas_mensajes ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: asunto {
    type: string
    sql: ${TABLE}.asunto ;;
  }
  dimension: destinatario_area {
    type: string
    sql: ${TABLE}.destinatario_area ;;
  }
  dimension: destinatario_responsable {
    type: string
    sql: ${TABLE}.destinatario_responsable ;;
  }
  dimension: empresa {
    type: string
    sql: ${TABLE}.empresa ;;
  }
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension: estado_fact_publi {
    type: string
    sql: ${TABLE}.estado_fact_publi ;;
  }
  dimension: facturas {
    type: string
    sql: ${TABLE}.facturas ;;
  }
  dimension: fecha_actualizacion {
    type: string
    sql: ${TABLE}.fecha_actualizacion ;;
  }
  dimension: fecha_prim_respuesta {
    type: string
    sql: ${TABLE}.fecha_prim_respuesta ;;
  }
  dimension: fecha_registro {
    type: string
    sql: ${TABLE}.fecha_registro ;;
  }
  dimension: fecha_ult_respuesta {
    type: string
    sql: ${TABLE}.fecha_ult_respuesta ;;
  }
  dimension: id_cliente {
    type: number
    sql: ${TABLE}.id_cliente ;;
  }
  dimension: mensaje {
    type: string
    sql: ${TABLE}.mensaje ;;
  }
  dimension: num_mensajes {
    type: number
    sql: ${TABLE}.num_mensajes ;;
  }
  dimension: origen {
    type: string
    sql: ${TABLE}.origen ;;
  }
  dimension: origen_mensaje {
    type: string
    sql: ${TABLE}.origen_mensaje ;;
  }
  dimension: pagador {
    type: string
    sql: ${TABLE}.pagador ;;
  }
  dimension: pqr_id {
    type: string
    sql: ${TABLE}.pqr_id ;;
  }
  dimension: seq_id {
    type: number
    sql: ${TABLE}.seq_id ;;
  }
  dimension: tipo_mensaje {
    type: string
    sql: ${TABLE}.tipo_mensaje ;;
  }
  dimension: usuario_registro {
    type: string
    sql: ${TABLE}.usuario_registro ;;
  }
  dimension: usuario_ult_respuesta {
    type: string
    sql: ${TABLE}.usuario_ult_respuesta ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
