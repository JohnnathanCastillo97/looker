view: mst_contratos_alcanos {
  sql_table_name: bd_ic_cliente.mst_contratos_alcanos ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: administracion_valor {
    type: number
    sql: ${TABLE}.administracion_valor ;;
  }
  dimension: cod_cliente {
    type: number
    sql: ${TABLE}.cod_cliente ;;
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
  dimension: imprevistos_valor {
    type: number
    sql: ${TABLE}.imprevistos_valor ;;
  }
  dimension: iva_total_proyecto_certificacion {
    type: number
    sql: ${TABLE}.iva_total_proyecto_certificacion ;;
  }
  dimension: iva_total_proyecto_derecho_conexion {
    type: number
    sql: ${TABLE}.iva_total_proyecto_derecho_conexion ;;
  }
  dimension: iva_total_proyecto_instalacion_interna {
    type: number
    sql: ${TABLE}.iva_total_proyecto_instalacion_interna ;;
  }
  dimension: iva_unitario_certificacion {
    type: number
    sql: ${TABLE}.iva_unitario_certificacion ;;
  }
  dimension: iva_unitario_derecho_conexion {
    type: number
    sql: ${TABLE}.iva_unitario_derecho_conexion ;;
  }
  dimension: iva_unitario_instalacion_interna {
    type: number
    sql: ${TABLE}.iva_unitario_instalacion_interna ;;
  }
  dimension: iva_valor {
    type: number
    sql: ${TABLE}.iva_valor ;;
  }
  dimension: nombre_tabla {
    type: string
    sql: ${TABLE}.nombre_tabla ;;
  }
  dimension_group: updated {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.updated_at ;;
  }
  dimension: usuario_actualizacion {
    type: number
    sql: ${TABLE}.usuario_actualizacion ;;
  }
  dimension: usuario_creacion {
    type: number
    sql: ${TABLE}.usuario_creacion ;;
  }
  dimension: utilidad_certificacion {
    type: number
    sql: ${TABLE}.utilidad_certificacion ;;
  }
  dimension: utilidad_derecho_conexion {
    type: number
    sql: ${TABLE}.utilidad_derecho_conexion ;;
  }
  dimension: utilidad_instalacion_interna {
    type: number
    sql: ${TABLE}.utilidad_instalacion_interna ;;
  }
  dimension: utilidad_valor {
    type: number
    sql: ${TABLE}.utilidad_valor ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
