view: fn_solfin_reporte_facturas_corona {
  sql_table_name: bd_ic_cliente.fn_solfin_reporte_facturas_corona ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: descripcion {
    type: string
    sql: ${TABLE}.descripcion ;;
  }
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension: f_id {
    type: string
    sql: ${TABLE}.f_id ;;
  }
  dimension: fecha_pago {
    type: string
    sql: ${TABLE}.fecha_pago ;;
  }
  dimension: fecha_radicacion {
    type: string
    sql: ${TABLE}.fecha_radicacion ;;
  }
  dimension_group: fecha_registro {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_registro ;;
  }
  dimension: id_cliente {
    type: number
    sql: ${TABLE}.id_cliente ;;
  }
  dimension: importe_compensacion_loc {
    type: number
    sql: ${TABLE}.importe_compensacion_loc ;;
  }
  dimension: importe_retencion_loc {
    type: number
    sql: ${TABLE}.importe_retencion_loc ;;
  }
  dimension: moneda {
    type: string
    sql: ${TABLE}.moneda ;;
  }
  dimension: nitempxx {
    type: string
    sql: ${TABLE}.nitempxx ;;
  }
  dimension: numero {
    type: string
    sql: ${TABLE}.numero ;;
  }
  dimension: numero_int_s21 {
    type: string
    sql: ${TABLE}.numero_int_s21 ;;
  }
  dimension: razon_social {
    type: string
    sql: ${TABLE}.razon_social ;;
  }
  dimension: razonxxx {
    type: string
    sql: ${TABLE}.razonxxx ;;
  }
  dimension: seq_id {
    type: number
    sql: ${TABLE}.seq_id ;;
  }
  dimension: tipo_documento {
    type: string
    sql: ${TABLE}.tipo_documento ;;
  }
  dimension: valor {
    type: number
    sql: ${TABLE}.valor ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
