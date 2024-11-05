view: comite {
  sql_table_name: bd_ic_cliente.comite ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: acta_asistencia {
    type: string
    sql: ${TABLE}.acta_asistencia ;;
  }
  dimension: acta_firmada {
    type: string
    sql: ${TABLE}.acta_firmada ;;
  }
  dimension: clase_comite {
    type: string
    sql: ${TABLE}.clase_comite ;;
  }
  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.created_at ;;
  }
  dimension: descripcion_general {
    type: string
    sql: ${TABLE}.descripcion_general ;;
  }
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension_group: fecha_acta_firmada {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_acta_firmada ;;
  }
  dimension_group: fecha_comite {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_comite ;;
  }
  dimension_group: fecha_convocacion {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_convocacion ;;
  }
  dimension_group: fecha_fin_comite {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_fin_comite ;;
  }
  dimension_group: fecha_fin_sesion {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_fin_sesion ;;
  }
  dimension_group: fecha_inicio_sesion {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_inicio_sesion ;;
  }
  dimension: id_cliente {
    type: number
    sql: ${TABLE}.id_cliente ;;
  }
  dimension: id_usuario_creador {
    type: number
    sql: ${TABLE}.id_usuario_creador ;;
  }
  dimension: lugar {
    type: string
    sql: ${TABLE}.lugar ;;
  }
  dimension: modalidad {
    type: string
    sql: ${TABLE}.modalidad ;;
  }
  dimension: orden_dia {
    type: string
    sql: ${TABLE}.orden_dia ;;
  }
  dimension: otros_asistentes {
    type: string
    sql: ${TABLE}.otros_asistentes ;;
  }
  dimension: seq_id {
    type: string
    sql: ${TABLE}.seq_id ;;
  }
  dimension: tipo_comite {
    type: string
    sql: ${TABLE}.tipo_comite ;;
  }
  dimension: tipo_tema {
    type: string
    sql: ${TABLE}.tipo_tema ;;
  }
  dimension_group: updated {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.updated_at ;;
  }
  dimension: user_updated {
    type: number
    sql: ${TABLE}.user_updated ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
