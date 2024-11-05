view: informacion_plantillas_vanti {
  sql_table_name: bd_ic_cliente.informacion_plantillas_vanti ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: calificacion_accidentalidad {
    type: number
    sql: ${TABLE}.calificacion_accidentalidad ;;
  }
  dimension: calificacion_avisos_calidad {
    type: number
    sql: ${TABLE}.calificacion_avisos_calidad ;;
  }
  dimension: calificacion_cumplimiento_cantidad {
    type: number
    sql: ${TABLE}.calificacion_cumplimiento_cantidad ;;
  }
  dimension: calificacion_cumplimiento_fecha {
    type: number
    sql: ${TABLE}.calificacion_cumplimiento_fecha ;;
  }
  dimension: calificacion_hse {
    type: number
    sql: ${TABLE}.calificacion_HSE ;;
  }
  dimension: calificacion_laboral {
    type: number
    sql: ${TABLE}.calificacion_laboral ;;
  }
  dimension: calificacion_sanciones {
    type: number
    sql: ${TABLE}.calificacion_sanciones ;;
  }
  dimension: cantidad {
    type: number
    sql: ${TABLE}.cantidad ;;
  }
  dimension: cantidad_grave {
    type: number
    sql: ${TABLE}.cantidad_grave ;;
  }
  dimension: cantidad_high_risk {
    type: number
    sql: ${TABLE}.cantidad_high_risk ;;
  }
  dimension: cantidad_leve {
    type: number
    sql: ${TABLE}.cantidad_leve ;;
  }
  dimension: cantidad_low_risk {
    type: number
    sql: ${TABLE}.cantidad_low_risk ;;
  }
  dimension: cantidad_medium_risk {
    type: number
    sql: ${TABLE}.cantidad_medium_risk ;;
  }
  dimension: cantidad_moderada {
    type: number
    sql: ${TABLE}.cantidad_moderada ;;
  }
  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.created_at ;;
  }
  dimension: cumplimiento_laboral {
    type: number
    sql: ${TABLE}.cumplimiento_laboral ;;
  }
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension_group: fecha_del_reporte {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.fecha_del_reporte ;;
  }
  dimension: identificacion_proveedor {
    type: string
    sql: ${TABLE}.identificacion_proveedor ;;
  }
  dimension: tipo {
    type: string
    sql: ${TABLE}.tipo ;;
  }
  dimension_group: updated {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.updated_at ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
