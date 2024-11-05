view: reporte_solicitud_ecopetrol {
  sql_table_name: bd_ic_cliente.reporte_solicitud_ecopetrol ;;

  dimension: a_analista_excelencia_operativa_asignado {
    type: number
    sql: ${TABLE}.A_analista_excelencia_operativa_asignado ;;
  }
  dimension: a_cliente_id {
    type: number
    sql: ${TABLE}.A_cliente_id ;;
  }
  dimension_group: a_created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.A_created_at ;;
  }
  dimension: a_estado {
    type: string
    sql: ${TABLE}.A_estado ;;
  }
  dimension_group: a_fecha_en_firme {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.A_fecha_en_firme ;;
  }
  dimension_group: a_fecha_en_firme_real {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.A_fecha_en_firme_real ;;
  }
  dimension_group: a_fecha_firme_asignacion {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.A_fecha_firme_asignacion ;;
  }
  dimension_group: a_fecha_firme_real_asignacion {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.A_fecha_firme_real_asignacion ;;
  }
  dimension: a_id {
    type: number
    sql: ${TABLE}.A_id ;;
  }
  dimension: a_imputacion_presupuesto {
    type: string
    sql: ${TABLE}.A_imputacion_presupuesto ;;
  }
  dimension: a_modalidad {
    type: string
    sql: ${TABLE}.A_modalidad ;;
  }
  dimension: a_numero_contrato {
    type: string
    sql: ${TABLE}.A_numero_contrato ;;
  }
  dimension: a_numero_solicitud {
    type: string
    sql: ${TABLE}.A_numero_solicitud ;;
  }
  dimension: a_tipo_proceso {
    type: string
    sql: ${TABLE}.A_tipo_proceso ;;
  }
  dimension: a_tipo_solicitud {
    type: string
    sql: ${TABLE}.A_tipo_solicitud ;;
  }
  dimension: aa_estado_proveedor_siproe {
    type: string
    sql: ${TABLE}.AA_estado_proveedor_siproe ;;
  }
  dimension: aa_estado_secop {
    type: string
    sql: ${TABLE}.AA_estado_secop ;;
  }
  dimension_group: aa_fecha_registra_en_suplos_publicacion_secop {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.AA_fecha_registra_en_suplos_publicacion_secop ;;
  }
  dimension: aa_nit {
    type: string
    sql: ${TABLE}.AA_nit ;;
  }
  dimension: aa_nombre_razon_social {
    type: string
    sql: ${TABLE}.AA_nombre_razon_social ;;
  }
  dimension: aa_objeto {
    type: string
    sql: ${TABLE}.AA_objeto ;;
  }
  dimension: analista_secop_id {
    type: number
    sql: ${TABLE}.analista_secop_id ;;
  }
  dimension: analista_secop_username {
    type: string
    sql: ${TABLE}.analista_secop_username ;;
  }
  dimension: bb_campo {
    type: string
    sql: ${TABLE}.BB_campo ;;
  }
  dimension: bb_valor {
    type: string
    sql: ${TABLE}.BB_valor ;;
  }
  dimension: c_tipo_solicitud {
    type: string
    sql: ${TABLE}.C_tipo_solicitud ;;
  }
  dimension: cc_nombre {
    type: string
    sql: ${TABLE}.CC_nombre ;;
  }
  dimension: dd_nombre {
    type: string
    sql: ${TABLE}.DD_nombre ;;
  }
  dimension: ee_observacion {
    type: string
    sql: ${TABLE}.EE_observacion ;;
  }
  dimension: gestor_asignado_backup_id {
    type: number
    sql: ${TABLE}.gestor_asignado_backup_id ;;
  }
  dimension: gestor_asignado_backup_username {
    type: string
    sql: ${TABLE}.gestor_asignado_backup_username ;;
  }
  dimension: gestor_asignado_id {
    type: number
    sql: ${TABLE}.gestor_asignado_id ;;
  }
  dimension: gestor_asignado_username {
    type: string
    sql: ${TABLE}.gestor_asignado_username ;;
  }
  dimension: usuario_creacion_id {
    type: number
    sql: ${TABLE}.usuario_creacion_id ;;
  }
  dimension: usuario_creacion_username {
    type: string
    sql: ${TABLE}.usuario_creacion_username ;;
  }
  measure: count {
    type: count
    drill_fields: [usuario_creacion_username, analista_secop_username, gestor_asignado_username, gestor_asignado_backup_username]
  }
}
