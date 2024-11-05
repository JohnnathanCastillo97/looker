view: resultado_informacion_financiera {
  sql_table_name: bd_ic_cliente.resultado_informacion_financiera ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: cod_proveedor {
    type: number
    sql: ${TABLE}.cod_proveedor ;;
  }
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension: evaluacion_adjunto {
    type: string
    sql: ${TABLE}.evaluacion_adjunto ;;
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
  dimension: id_usuario_actualizacion {
    type: number
    sql: ${TABLE}.id_usuario_actualizacion ;;
  }
  dimension: id_usuario_creacion {
    type: number
    sql: ${TABLE}.id_usuario_creacion ;;
  }
  dimension: obs {
    type: string
    sql: ${TABLE}.obs ;;
  }
  dimension: resultado_evaluacion {
    type: string
    sql: ${TABLE}.resultado_evaluacion ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
