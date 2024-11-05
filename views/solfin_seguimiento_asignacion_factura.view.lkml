view: solfin_seguimiento_asignacion_factura {
  sql_table_name: bd_ic_cliente.solfin_seguimiento_asignacion_factura ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension_group: fecha_aceptacion {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_aceptacion ;;
  }
  dimension_group: fehca_asignacion {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fehca_asignacion ;;
  }
  dimension: id_cliente {
    type: number
    sql: ${TABLE}.id_cliente ;;
  }
  dimension: id_factura {
    type: number
    sql: ${TABLE}.id_factura ;;
  }
  dimension: num_reasignacion {
    type: string
    sql: ${TABLE}.num_reasignacion ;;
  }
  dimension: usuario_asignado_email {
    type: string
    sql: ${TABLE}.usuario_asignado_email ;;
  }
  dimension: usuario_asignado_nomb {
    type: string
    sql: ${TABLE}.usuario_asignado_nomb ;;
  }
  dimension: usuario_creador {
    type: number
    sql: ${TABLE}.usuario_creador ;;
  }
  dimension: usuario_designado_email {
    type: string
    sql: ${TABLE}.usuario_designado_email ;;
  }
  dimension: usuario_designado_nomb {
    type: string
    sql: ${TABLE}.usuario_designado_nomb ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
