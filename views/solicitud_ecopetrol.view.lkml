view: solicitud_ecopetrol {
  sql_table_name: bd_ic_cliente.solicitud_ecopetrol ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: analista_excelencia_operativa_asignado {
    type: number
    sql: ${TABLE}.analista_excelencia_operativa_asignado ;;
  }
  dimension: analista_excelencia_operativa_asignado_equipo {
    type: number
    sql: ${TABLE}.analista_excelencia_operativa_asignado_equipo ;;
  }
  dimension: analista_secop {
    type: number
    sql: ${TABLE}.analista_secop ;;
  }
  dimension: cargue_masivo {
    type: string
    sql: ${TABLE}.cargue_masivo ;;
  }
  dimension: cliente_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.cliente_id ;;
  }
  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.created_at ;;
  }
  dimension: departamento_id {
    type: number
    sql: ${TABLE}.departamento_id ;;
  }
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension: estado_anterior {
    type: string
    sql: ${TABLE}.estado_anterior ;;
  }
  dimension_group: fecha_en_firme {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_en_firme ;;
  }
  dimension_group: fecha_en_firme_real {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_en_firme_real ;;
  }
  dimension_group: fecha_firme_asignacion {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_firme_asignacion ;;
  }
  dimension_group: fecha_firme_real_asignacion {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_firme_real_asignacion ;;
  }
  dimension: gestor_asignado {
    type: number
    sql: ${TABLE}.gestor_asignado ;;
  }
  dimension: gestor_asignado_backup {
    type: number
    sql: ${TABLE}.gestor_asignado_backup ;;
  }
  dimension: id_anterior {
    type: string
    sql: ${TABLE}.id_anterior ;;
  }
  dimension: imputacion_presupuesto {
    type: string
    sql: ${TABLE}.imputacion_presupuesto ;;
  }
  dimension: modalidad {
    type: string
    sql: ${TABLE}.modalidad ;;
  }
  dimension: numero_contrato {
    type: string
    sql: ${TABLE}.numero_contrato ;;
  }
  dimension: numero_solicitud {
    type: string
    sql: ${TABLE}.numero_solicitud ;;
  }
  dimension: sociedad_id {
    type: string
    sql: ${TABLE}.sociedad_id ;;
  }
  dimension: tipo_proceso {
    type: string
    sql: ${TABLE}.tipo_proceso ;;
  }
  dimension: tipo_solicitud {
    type: string
    sql: ${TABLE}.tipo_solicitud ;;
  }
  dimension_group: updated {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.updated_at ;;
  }
  dimension: usuario_actualizacion {
    type: number
    sql: ${TABLE}.usuario_actualizacion ;;
  }
  dimension: usuario_creacion {
    type: number
    sql: ${TABLE}.usuario_creacion ;;
  }
  dimension: vicepresidencia_id {
    type: number
    sql: ${TABLE}.vicepresidencia_id ;;
  }
  measure: count {
    type: count
    drill_fields: [id, clientes.id]
  }
}
