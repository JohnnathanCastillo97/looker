view: solicitud_posicion_cargue {
  sql_table_name: bd_ic_cliente.solicitud_posicion_cargue ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: cantidad_registros {
    type: number
    sql: ${TABLE}.cantidadRegistros ;;
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
  dimension: id_solicitud {
    type: number
    sql: ${TABLE}.id_solicitud ;;
  }
  dimension: posicion_cantidad_registros {
    type: number
    sql: ${TABLE}.posicionCantidadRegistros ;;
  }
  dimension: servicio_cantidad_registros {
    type: number
    sql: ${TABLE}.servicioCantidadRegistros ;;
  }
  dimension_group: updated {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.updated_at ;;
  }
  dimension: url_aws {
    type: string
    sql: ${TABLE}.urlAws ;;
  }
  dimension: usuario_creador {
    type: number
    sql: ${TABLE}.usuarioCreador ;;
  }
  measure: count {
    type: count
    drill_fields: [id, solicitud_posicion.count]
  }
}
