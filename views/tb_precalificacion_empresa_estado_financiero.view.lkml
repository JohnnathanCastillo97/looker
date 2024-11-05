view: tb_precalificacion_empresa_estado_financiero {
  sql_table_name: bd_ic_cliente.tb_precalificacion_empresa_estado_financiero ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: activo_corriente {
    type: number
    sql: ${TABLE}.activo_corriente ;;
  }
  dimension: activo_total {
    type: number
    sql: ${TABLE}.activo_total ;;
  }
  dimension: adjunto {
    type: string
    sql: ${TABLE}.adjunto ;;
  }
  dimension_group: anio {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.anio ;;
  }
  dimension: cod_estado_financiero {
    type: number
    sql: ${TABLE}.cod_estado_financiero ;;
  }
  dimension: cod_precalificacion_empresa {
    type: number
    sql: ${TABLE}.cod_precalificacion_empresa ;;
  }
  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.created_at ;;
  }
  dimension: depreciacion_amortizacion {
    type: number
    sql: ${TABLE}.depreciacion_amortizacion ;;
  }
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension: gastos_intereses {
    type: number
    sql: ${TABLE}.gastos_intereses ;;
  }
  dimension: inventario {
    type: number
    sql: ${TABLE}.inventario ;;
  }
  dimension: moneda {
    type: string
    sql: ${TABLE}.moneda ;;
  }
  dimension: obligaciones_financieras {
    type: number
    sql: ${TABLE}.obligaciones_financieras ;;
  }
  dimension: observacion {
    type: string
    sql: ${TABLE}.observacion ;;
  }
  dimension: pasivo_corriente {
    type: number
    sql: ${TABLE}.pasivo_corriente ;;
  }
  dimension: pasivo_total {
    type: number
    sql: ${TABLE}.pasivo_total ;;
  }
  dimension: patrimonio {
    type: number
    sql: ${TABLE}.patrimonio ;;
  }
  dimension: registro_actualizacion {
    type: number
    sql: ${TABLE}.registro_actualizacion ;;
  }
  dimension: registro_creador {
    type: number
    sql: ${TABLE}.registro_creador ;;
  }
  dimension_group: updated {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.updated_at ;;
  }
  dimension: utilidad_neta {
    type: number
    sql: ${TABLE}.utilidad_neta ;;
  }
  dimension: utilidad_operacional {
    type: number
    sql: ${TABLE}.utilidad_operacional ;;
  }
  dimension: utilidad_retenida {
    type: number
    sql: ${TABLE}.utilidad_retenida ;;
  }
  dimension: ventas_operacionales {
    type: number
    sql: ${TABLE}.ventas_operacionales ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
