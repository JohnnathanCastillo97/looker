view: solfin_seguimiento_documento_almacen {
  sql_table_name: bd_ic_cliente.solfin_seguimiento_documento_almacen ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: accion {
    type: string
    sql: ${TABLE}.accion ;;
  }
  dimension: comentario {
    type: string
    sql: ${TABLE}.comentario ;;
  }
  dimension: dirigido_a {
    type: string
    sql: ${TABLE}.dirigido_a ;;
  }
  dimension_group: fecha_actualizacion {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_actualizacion ;;
  }
  dimension_group: fecha_creacion {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_creacion ;;
  }
  dimension: id_almacen {
    type: number
    sql: ${TABLE}.id_almacen ;;
  }
  dimension: id_cliente {
    type: number
    sql: ${TABLE}.id_cliente ;;
  }
  dimension: tipo {
    type: string
    sql: ${TABLE}.tipo ;;
  }
  dimension: usuario_creador_email {
    type: string
    sql: ${TABLE}.usuario_creador_email ;;
  }
  dimension: usuario_creador_nomb {
    type: string
    sql: ${TABLE}.usuario_creador_nomb ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
