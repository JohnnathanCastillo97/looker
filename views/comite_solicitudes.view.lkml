view: comite_solicitudes {
  sql_table_name: bd_ic_cliente.comite_solicitudes ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: area {
    type: string
    sql: ${TABLE}.area ;;
  }
  dimension: comentarios_comite {
    type: string
    sql: ${TABLE}.comentarios_comite ;;
  }
  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.created_at ;;
  }
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension: frecuencia_actualizacion {
    type: string
    sql: ${TABLE}.frecuencia_actualizacion ;;
  }
  dimension: id_cliente {
    type: number
    sql: ${TABLE}.id_cliente ;;
  }
  dimension: id_pacc {
    type: string
    sql: ${TABLE}.id_pacc ;;
  }
  dimension: id_usuarios_creador {
    type: number
    sql: ${TABLE}.id_usuarios_creador ;;
  }
  dimension: invitar_proveedores {
    type: string
    sql: ${TABLE}.invitar_proveedores ;;
  }
  dimension: modalidad_seleccion {
    type: string
    sql: ${TABLE}.modalidad_seleccion ;;
  }
  dimension: numero_contrato {
    type: string
    sql: ${TABLE}.numero_contrato ;;
  }
  dimension: objeto {
    type: string
    sql: ${TABLE}.objeto ;;
  }
  dimension: objeto_adenda {
    type: string
    sql: ${TABLE}.objeto_adenda ;;
  }
  dimension: observaciones {
    type: string
    sql: ${TABLE}.observaciones ;;
  }
  dimension: plazo_ejecucion {
    type: number
    sql: ${TABLE}.plazo_ejecucion ;;
  }
  dimension: resumen_tema {
    type: string
    sql: ${TABLE}.resumen_tema ;;
  }
  dimension: ruta_acta_junta {
    type: string
    sql: ${TABLE}.ruta_acta_junta ;;
  }
  dimension: ruta_presentacion {
    type: string
    sql: ${TABLE}.ruta_presentacion ;;
  }
  dimension: seq_id {
    type: string
    sql: ${TABLE}.seq_id ;;
  }
  dimension: solicitud_comite {
    type: string
    sql: ${TABLE}.solicitud_comite ;;
  }
  dimension: tema {
    type: string
    sql: ${TABLE}.tema ;;
  }
  dimension: tiempo_presentacion {
    type: string
    sql: ${TABLE}.tiempo_presentacion ;;
  }
  dimension: tipo_adenda {
    type: string
    sql: ${TABLE}.tipo_adenda ;;
  }
  dimension: tipo_comite {
    type: string
    sql: ${TABLE}.tipo_comite ;;
  }
  dimension: tipo_modificacion {
    type: string
    sql: ${TABLE}.tipo_modificacion ;;
  }
  dimension: tipo_solicitud {
    type: string
    sql: ${TABLE}.tipo_solicitud ;;
  }
  dimension: unidad_tiempo_plazo {
    type: string
    sql: ${TABLE}.unidad_tiempo_plazo ;;
  }
  dimension_group: updated {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.updated_at ;;
  }
  dimension: vigencia_comite {
    type: string
    sql: ${TABLE}.vigencia_comite ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
