view: comite_solicitudes_usuarios {
  sql_table_name: bd_ic_cliente.comite_solicitudes_usuarios ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: asistencia {
    type: string
    sql: ${TABLE}.asistencia ;;
  }
  dimension: cargo_area_delegado {
    type: string
    sql: ${TABLE}.cargo_area_delegado ;;
  }
  dimension: cargo_usuario {
    type: string
    sql: ${TABLE}.cargo_usuario ;;
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
  dimension: estado_convocar {
    type: string
    sql: ${TABLE}.estado_convocar ;;
  }
  dimension: id_comite {
    type: number
    sql: ${TABLE}.id_comite ;;
  }
  dimension: id_solicitud {
    type: number
    sql: ${TABLE}.id_solicitud ;;
  }
  dimension: id_usuario {
    type: number
    sql: ${TABLE}.id_usuario ;;
  }
  dimension: id_usuario_delegado {
    type: number
    sql: ${TABLE}.id_usuario_delegado ;;
  }
  dimension: tipo_usuario {
    type: string
    sql: ${TABLE}.tipo_usuario ;;
  }
  dimension: tipo_usuario_temp {
    type: string
    sql: ${TABLE}.tipo_usuario_temp ;;
  }
  dimension_group: updated {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.updated_at ;;
  }
  dimension: voto {
    type: string
    sql: ${TABLE}.voto ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
