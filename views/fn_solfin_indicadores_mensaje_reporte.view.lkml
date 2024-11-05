view: fn_solfin_indicadores_mensaje_reporte {
  sql_table_name: bd_ic_cliente.fn_solfin_indicadores_mensaje_reporte ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: acreedor {
    type: string
    sql: ${TABLE}.acreedor ;;
  }
  dimension: ans_escalamiento {
    type: string
    sql: ${TABLE}.ans_escalamiento ;;
  }
  dimension: ans_global {
    type: string
    sql: ${TABLE}.ans_global ;;
  }
  dimension: d_atencion {
    type: string
    sql: ${TABLE}.d_atencion ;;
  }
  dimension: d_escalamiento {
    type: string
    sql: ${TABLE}.d_escalamiento ;;
  }
  dimension: destinatario_responsable {
    type: string
    sql: ${TABLE}.destinatario_responsable ;;
  }
  dimension: destinatario_responsable_origin {
    type: string
    sql: ${TABLE}.destinatario_responsable_origin ;;
  }
  dimension: dias_total_gestion_c_rpt {
    type: string
    sql: ${TABLE}.dias_total_gestion_c_rpt ;;
  }
  dimension: dias_total_gestion_s_rpt {
    type: string
    sql: ${TABLE}.dias_total_gestion_s_rpt ;;
  }
  dimension: estado_caso {
    type: string
    sql: ${TABLE}.estado_caso ;;
  }
  dimension: fecha_escalamiento {
    type: string
    sql: ${TABLE}.fecha_Escalamiento ;;
  }
  dimension: fecha_esperada_respuesta_c_dvl {
    type: string
    sql: ${TABLE}.fecha_esperada_respuesta_c_dvl ;;
  }
  dimension: fecha_esperada_respuesta_c_esc {
    type: string
    sql: ${TABLE}.fecha_esperada_respuesta_c_esc ;;
  }
  dimension: fecha_esperada_respuesta_s_esc_dvl {
    type: string
    sql: ${TABLE}.fecha_esperada_respuesta_s_esc_dvl ;;
  }
  dimension: fecha_requerimiento {
    type: string
    sql: ${TABLE}.fecha_Requerimiento ;;
  }
  dimension: fecha_respuesta {
    type: string
    sql: ${TABLE}.fecha_respuesta ;;
  }
  dimension: fecha_solucion_escalamiento {
    type: string
    sql: ${TABLE}.fecha_solucion_escalamiento ;;
  }
  dimension: fecha_ult_respuesta {
    type: string
    sql: ${TABLE}.fecha_ult_respuesta ;;
  }
  dimension: historial_fecha_devolucion {
    type: string
    sql: ${TABLE}.historial_fecha_devolucion ;;
  }
  dimension: id_mensaje {
    type: number
    sql: ${TABLE}.id_mensaje ;;
  }
  dimension: n_devolucion {
    type: string
    sql: ${TABLE}.n_devolucion ;;
  }
  dimension: n_escalamientos {
    type: string
    sql: ${TABLE}.n_escalamientos ;;
  }
  dimension: n_facturas_gestionadas {
    type: string
    sql: ${TABLE}.n_facturas_gestionadas ;;
  }
  dimension: pqr_mensaje {
    type: string
    sql: ${TABLE}.pqr_mensaje ;;
  }
  dimension: razonxxx {
    type: string
    sql: ${TABLE}.razonxxx ;;
  }
  dimension: sociedad {
    type: string
    sql: ${TABLE}.sociedad ;;
  }
  dimension: sociedad_init {
    type: string
    sql: ${TABLE}.sociedad_init ;;
  }
  dimension: titulo_formato {
    type: string
    sql: ${TABLE}.titulo_formato ;;
  }
  dimension: usuario_atencion {
    type: string
    sql: ${TABLE}.usuario_atencion ;;
  }
  dimension: usuario_escalamiento {
    type: string
    sql: ${TABLE}.usuario_escalamiento ;;
  }
  dimension: usuario_registro {
    type: string
    sql: ${TABLE}.usuario_registro ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
