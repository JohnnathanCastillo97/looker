view: expediting_despacho {
  sql_table_name: bd_ic_cliente.expediting_despacho ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: alcance {
    type: string
    sql: ${TABLE}.alcance ;;
  }
  dimension: create_user {
    type: number
    sql: ${TABLE}.create_user ;;
  }
  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.created_at ;;
  }
  dimension: documento_transporte {
    type: string
    sql: ${TABLE}.documento_transporte ;;
  }
  dimension_group: fecha_despacho {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.fecha_despacho ;;
  }
  dimension_group: fecha_factura_agente_carga {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.fecha_factura_agente_carga ;;
  }
  dimension_group: fecha_ingreso_bodega {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.fecha_ingreso_bodega ;;
  }
  dimension_group: fecha_instruccion_despacho {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.fecha_instruccion_despacho ;;
  }
  dimension_group: fecha_liberacion_documento {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.fecha_liberacion_documento ;;
  }
  dimension_group: fecha_llegada_destino {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.fecha_llegada_destino ;;
  }
  dimension_group: fecha_prealerta {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.fecha_prealerta ;;
  }
  dimension_group: fecha_real_salida {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.fecha_real_salida ;;
  }
  dimension_group: fecha_recogida {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.fecha_recogida ;;
  }
  dimension: gr_asociada {
    type: string
    sql: ${TABLE}.gr_asociada ;;
  }
  dimension: id_puerto_destino {
    type: number
    sql: ${TABLE}.id_puerto_destino ;;
  }
  dimension: id_puerto_origen {
    type: number
    sql: ${TABLE}.id_puerto_origen ;;
  }
  dimension: incoterm {
    type: string
    sql: ${TABLE}.incoterm ;;
  }
  dimension: medio_transporte {
    type: string
    sql: ${TABLE}.medio_transporte ;;
  }
  dimension: observacion {
    type: string
    sql: ${TABLE}.observacion ;;
  }
  dimension: precintos {
    type: string
    sql: ${TABLE}.precintos ;;
  }
  dimension: tipo_despacho {
    type: string
    sql: ${TABLE}.tipo_despacho ;;
  }
  dimension: tipo_puerto_destino {
    type: string
    sql: ${TABLE}.tipo_puerto_destino ;;
  }
  dimension: tipo_puerto_origen {
    type: string
    sql: ${TABLE}.tipo_puerto_origen ;;
  }
  dimension: update_user {
    type: number
    sql: ${TABLE}.update_user ;;
  }
  dimension_group: updated {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.updated_at ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
