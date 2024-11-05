view: solicitud_soporte {
  sql_table_name: bd_ic_cliente.solicitud_soporte ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: ajuste_ruta_adicional {
    type: string
    sql: ${TABLE}.ajusteRutaAdicional ;;
  }
  dimension: categoria {
    type: string
    sql: ${TABLE}.categoria ;;
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
  dimension_group: fecha_revision {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fechaRevision ;;
  }
  dimension: id_cliente {
    type: number
    sql: ${TABLE}.id_cliente ;;
  }
  dimension: id_observacion {
    type: number
    sql: ${TABLE}.id_observacion ;;
  }
  dimension: id_solicitud {
    type: number
    sql: ${TABLE}.id_solicitud ;;
  }
  dimension: is_aprobacion {
    type: string
    sql: ${TABLE}.isAprobacion ;;
  }
  dimension: is_poliza {
    type: string
    sql: ${TABLE}.isPoliza ;;
  }
  dimension: is_revision {
    type: string
    sql: ${TABLE}.isRevision ;;
  }
  dimension: nombre {
    type: string
    sql: ${TABLE}.nombre ;;
  }
  dimension: observacion_revision {
    type: string
    sql: ${TABLE}.observacion_revision ;;
  }
  dimension: revision_aprobacion {
    type: string
    sql: ${TABLE}.revision_aprobacion ;;
  }
  dimension: ruta {
    type: string
    sql: ${TABLE}.ruta ;;
  }
  dimension: ruta_adicional {
    type: string
    sql: ${TABLE}.ruta_adicional ;;
  }
  dimension: tipo {
    type: string
    sql: ${TABLE}.tipo ;;
  }
  dimension: tipo_revision {
    type: string
    sql: ${TABLE}.tipo_revision ;;
  }
  dimension_group: updated {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.updated_at ;;
  }
  dimension: usuario_revision {
    type: number
    sql: ${TABLE}.usuarioRevision ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
