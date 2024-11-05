view: historial_evaluacion_mano_de_obra_acuacar {
  sql_table_name: bd_ic_cliente.historial_evaluacion_mano_de_obra_acuacar ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: archivo {
    type: string
    sql: ${TABLE}.archivo ;;
  }
  dimension: comentario {
    type: string
    sql: ${TABLE}.comentario ;;
  }
  dimension: criterio {
    type: yesno
    sql: ${TABLE}.criterio ;;
  }
  dimension: evaluacion_aprobacion {
    type: string
    sql: ${TABLE}.evaluacion_aprobacion ;;
  }
  dimension_group: fecha_registro {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_registro ;;
  }
  dimension: id_historial {
    type: number
    sql: ${TABLE}.id_historial ;;
  }
  dimension: pertenece_a {
    type: string
    sql: ${TABLE}.pertenece_a ;;
  }
  dimension: tipo {
    type: string
    sql: ${TABLE}.tipo ;;
  }
  dimension: usuario_evaluador {
    type: number
    sql: ${TABLE}.usuario_evaluador ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
