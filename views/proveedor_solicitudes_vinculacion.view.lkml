view: proveedor_solicitudes_vinculacion {
  sql_table_name: bd_ic_cliente.proveedor_solicitudes_vinculacion ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: activacion {
    type: string
    sql: ${TABLE}.activacion ;;
  }
  dimension: companies {
    type: string
    sql: ${TABLE}.companies ;;
  }
  dimension: consecutivo_vinculacion {
    type: string
    sql: ${TABLE}.consecutivo_vinculacion ;;
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
  dimension: id_cliente {
    type: number
    sql: ${TABLE}.id_cliente ;;
  }
  dimension: id_proveedor {
    type: number
    sql: ${TABLE}.id_proveedor ;;
  }
  dimension: id_reporte_calificacion {
    type: number
    sql: ${TABLE}.id_reporte_calificacion ;;
  }
  dimension: observaciones {
    type: string
    sql: ${TABLE}.observaciones ;;
  }
  dimension: observaciones_plan {
    type: string
    sql: ${TABLE}.observaciones_plan ;;
  }
  dimension: usuario_creacion {
    type: number
    sql: ${TABLE}.usuario_creacion ;;
  }
  dimension: vinculacion {
    type: string
    sql: ${TABLE}.vinculacion ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
