view: usuarios_delegaciones {
  sql_table_name: bd_ic_cliente.usuarios_delegaciones ;;

  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension_group: fecha_final {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_final ;;
  }
  dimension_group: fecha_inicio {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_inicio ;;
  }
  dimension_group: fecha_registro {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_registro ;;
  }
  dimension: id_cod_cliente {
    type: number
    sql: ${TABLE}.id_cod_cliente ;;
  }
  dimension: id_delegacion {
    type: number
    sql: ${TABLE}.id_delegacion ;;
  }
  dimension: id_usuario_actualizar {
    type: number
    sql: ${TABLE}.id_usuario_actualizar ;;
  }
  dimension: id_usuario_creador {
    type: number
    sql: ${TABLE}.id_usuario_creador ;;
  }
  dimension: id_usuario_delegado {
    type: number
    sql: ${TABLE}.id_usuario_delegado ;;
  }
  dimension: id_usuario_responsable {
    type: number
    sql: ${TABLE}.id_usuario_responsable ;;
  }
  dimension: observaciones {
    type: string
    sql: ${TABLE}.observaciones ;;
  }
  measure: count {
    type: count
  }
}
