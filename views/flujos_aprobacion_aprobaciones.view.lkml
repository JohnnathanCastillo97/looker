view: flujos_aprobacion_aprobaciones {
  sql_table_name: bd_ic_cliente.flujos_aprobacion_aprobaciones ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: bool {
    type: yesno
    sql: ${TABLE}.bool ;;
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
  dimension: id_flujo {
    type: number
    sql: ${TABLE}.id_flujo ;;
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
  dimension: id_perfil_flujo {
    type: number
    sql: ${TABLE}.id_perfil_flujo ;;
  }
  dimension: id_usuario {
    type: number
    sql: ${TABLE}.id_usuario ;;
  }
  dimension: observacion {
    type: string
    sql: ${TABLE}.observacion ;;
  }
  dimension: requisito {
    type: string
    sql: ${TABLE}.requisito ;;
  }
  dimension: usuario_creacion {
    type: number
    sql: ${TABLE}.usuario_creacion ;;
  }
  dimension: usuario_delegacion {
    type: number
    sql: ${TABLE}.usuario_delegacion ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
