view: paa_linea_plan_accion {
  sql_table_name: bd_ic_cliente.paa_linea_plan_accion ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: comentario {
    type: string
    sql: ${TABLE}.comentario ;;
  }
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension_group: fecha_creacion {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_creacion ;;
  }
  dimension: id_etapa_ans {
    type: number
    sql: ${TABLE}.id_etapa_ans ;;
  }
  dimension: id_paa_linea {
    type: number
    sql: ${TABLE}.id_paa_linea ;;
  }
  dimension: usuario_creacion {
    type: number
    sql: ${TABLE}.usuario_creacion ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
