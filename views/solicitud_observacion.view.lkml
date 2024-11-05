view: solicitud_observacion {
  sql_table_name: bd_ic_cliente.solicitud_observacion ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: encargado_abastecimiento {
    type: number
    sql: ${TABLE}.encargado_abastecimiento ;;
  }
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension: estado_anterior {
    type: string
    sql: ${TABLE}.estado_anterior ;;
  }
  dimension_group: fecha_creacion {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_creacion ;;
  }
  dimension: id_solicitud {
    type: number
    sql: ${TABLE}.id_solicitud ;;
  }
  dimension: is_campo {
    type: string
    sql: ${TABLE}.isCampo ;;
  }
  dimension: motivo_reasignacion {
    type: string
    sql: ${TABLE}.motivo_reasignacion ;;
  }
  dimension: observaciones {
    type: string
    sql: ${TABLE}.observaciones ;;
  }
  dimension: tipo {
    type: string
    sql: ${TABLE}.tipo ;;
  }
  dimension: tipo_historial {
    type: string
    sql: ${TABLE}.tipo_historial ;;
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
