view: flujos_aprobacion_perfil_vs_usuario {
  sql_table_name: bd_ic_cliente.flujos_aprobacion_perfil_vs_usuario ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: aprobacion_id {
    type: number
    sql: ${TABLE}.aprobacion_id ;;
  }
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension_group: fecha_actualizacion {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_actualizacion ;;
  }
  dimension: id_cliente {
    type: number
    sql: ${TABLE}.id_cliente ;;
  }
  dimension: id_modulo {
    type: number
    sql: ${TABLE}.id_modulo ;;
  }
  dimension: id_objeto {
    type: number
    sql: ${TABLE}.id_objeto ;;
  }
  dimension: id_paso {
    type: number
    sql: ${TABLE}.id_paso ;;
  }
  dimension: id_perfil {
    type: number
    sql: ${TABLE}.id_perfil ;;
  }
  dimension: id_usuario {
    type: number
    sql: ${TABLE}.id_usuario ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
