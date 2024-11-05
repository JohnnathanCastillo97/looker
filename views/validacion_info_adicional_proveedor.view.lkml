view: validacion_info_adicional_proveedor {
  sql_table_name: bd_ic_cliente.validacion_info_adicional_proveedor ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: aprobacion {
    type: string
    sql: ${TABLE}.aprobacion ;;
  }
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension_group: fecha_registro {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_registro ;;
  }
  dimension: id_cabecera {
    type: number
    sql: ${TABLE}.id_cabecera ;;
  }
  dimension: id_proveedor {
    type: number
    sql: ${TABLE}.id_proveedor ;;
  }
  dimension: id_region_cliente {
    type: number
    sql: ${TABLE}.id_region_cliente ;;
  }
  dimension: id_usuario_registra {
    type: number
    sql: ${TABLE}.id_usuario_registra ;;
  }
  dimension: observacion {
    type: string
    sql: ${TABLE}.observacion ;;
  }
  dimension: tipo_validacion {
    type: string
    sql: ${TABLE}.tipo_validacion ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
