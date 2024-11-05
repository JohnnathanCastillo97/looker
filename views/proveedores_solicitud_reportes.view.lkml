view: proveedores_solicitud_reportes {
  sql_table_name: bd_ic_cliente.proveedores_solicitud_reportes ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension_group: fecha_solicitud {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_solicitud ;;
  }
  dimension: id_cliente {
    type: number
    sql: ${TABLE}.id_cliente ;;
  }
  dimension: id_usuario_solicita {
    type: number
    sql: ${TABLE}.id_usuario_solicita ;;
  }
  dimension: tipo_reporte {
    type: string
    sql: ${TABLE}.tipo_reporte ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
