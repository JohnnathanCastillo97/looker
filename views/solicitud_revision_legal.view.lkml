view: solicitud_revision_legal {
  sql_table_name: bd_ic_cliente.solicitud_revision_legal ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.created_at ;;
  }
  dimension: documento {
    type: string
    sql: ${TABLE}.documento ;;
  }
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension: id_solicitud {
    type: number
    sql: ${TABLE}.id_solicitud ;;
  }
  dimension: soporte {
    type: string
    sql: ${TABLE}.soporte ;;
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
  dimension: usuario_creador {
    type: number
    sql: ${TABLE}.usuario_creador ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
