view: comunicaciones_proveedor_cliente_lecturas {
  sql_table_name: bd_ic_cliente.comunicacionesProveedorCliente_lecturas ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension_group: fecha_apertura {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_apertura ;;
  }
  dimension_group: fecha_confirmacion_lectura {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_confirmacion_lectura ;;
  }
  dimension: id_documento {
    type: number
    sql: ${TABLE}.id_documento ;;
  }
  dimension: id_usuario {
    type: number
    sql: ${TABLE}.id_usuario ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
