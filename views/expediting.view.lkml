view: expediting {
  sql_table_name: bd_ic_cliente.expediting ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: aceptacion_prov {
    type: string
    sql: ${TABLE}.aceptacion_prov ;;
  }
  dimension: area {
    type: number
    sql: ${TABLE}.area ;;
  }
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension: fabricacion {
    type: string
    sql: ${TABLE}.fabricacion ;;
  }
  dimension_group: fecha_actualizacion {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_actualizacion ;;
  }
  dimension_group: fecha_creacion {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_creacion ;;
  }
  dimension: id_cliente {
    type: number
    sql: ${TABLE}.id_cliente ;;
  }
  dimension: moneda {
    type: string
    sql: ${TABLE}.moneda ;;
  }
  dimension: objeto {
    type: string
    sql: ${TABLE}.objeto ;;
  }
  dimension: origen {
    type: string
    sql: ${TABLE}.origen ;;
  }
  dimension: profesional_abastecimiento_id {
    type: number
    sql: ${TABLE}.profesional_abastecimiento_id ;;
  }
  dimension: proveedor_id {
    type: number
    sql: ${TABLE}.proveedor_id ;;
  }
  dimension: responsable_id {
    type: number
    sql: ${TABLE}.responsable_id ;;
  }
  dimension: seq_id {
    type: string
    sql: ${TABLE}.seq_id ;;
  }
  dimension: usuario_actualizacion {
    type: number
    sql: ${TABLE}.usuario_actualizacion ;;
  }
  dimension: usuario_aprobador {
    type: number
    sql: ${TABLE}.usuario_aprobador ;;
  }
  dimension: usuario_creacion {
    type: number
    sql: ${TABLE}.usuario_creacion ;;
  }
  dimension: valor {
    type: number
    sql: ${TABLE}.valor ;;
  }
  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
	id,
	expediting_anexos.count,
	expediting_corona_anexos.count,
	expediting_corona_hitos.count,
	expediting_corona_hitos_general.count,
	expediting_hitos.count,
	expediting_hitos_general.count
	]
  }

}
