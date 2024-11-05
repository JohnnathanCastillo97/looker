view: ordenes_salidas_entradas_mercancias_oxxo {
  sql_table_name: bd_ic_cliente.ordenes_salidas_entradas_mercancias_oxxo ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: archivo_url {
    type: string
    sql: ${TABLE}.archivoUrl ;;
  }
  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.created_at ;;
  }
  dimension: created_by {
    type: string
    sql: ${TABLE}.created_by ;;
  }
  dimension_group: deleted {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.deleted_at ;;
  }
  dimension: deleted_by {
    type: string
    sql: ${TABLE}.deleted_by ;;
  }
  dimension: error {
    type: string
    sql: ${TABLE}.error ;;
  }
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension: fecha_movimiento {
    type: string
    sql: ${TABLE}.fechaMovimiento ;;
  }
  dimension: orden_salida_id {
    type: number
    sql: ${TABLE}.ordenSalidaId ;;
  }
  dimension: prefijo {
    type: string
    sql: ${TABLE}.prefijo ;;
  }
  dimension: secuencia {
    type: string
    sql: ${TABLE}.secuencia ;;
  }
  dimension: tipo_guardado {
    type: string
    sql: ${TABLE}.tipoGuardado ;;
  }
  dimension: tipo_movimiento {
    type: string
    sql: ${TABLE}.tipoMovimiento ;;
  }
  dimension_group: updated {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.updated_at ;;
  }
  dimension: updated_by {
    type: string
    sql: ${TABLE}.updated_by ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
