view: observaciones_proveedores_solicitud {
  sql_table_name: bd_ic_cliente.observaciones_proveedores_solicitud ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: adjunto {
    type: string
    sql: ${TABLE}.adjunto ;;
  }
  dimension_group: fecha_creacion {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_creacion ;;
  }
  dimension: observacion {
    type: string
    sql: ${TABLE}.observacion ;;
  }
  dimension: proveedores_solicitud_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.proveedores_solicitud_id ;;
  }
  dimension: tipo_observacion {
    type: string
    sql: ${TABLE}.tipo_observacion ;;
  }
  dimension: usuario_creacion {
    type: number
    sql: ${TABLE}.usuario_creacion ;;
  }
  measure: count {
    type: count
    drill_fields: [id, proveedores_solicitud.id]
  }
}
