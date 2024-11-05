view: prequalification_companies_financial_confa {
  sql_table_name: bd_ic_cliente.prequalification_companies_financial_confa ;;

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
  dimension: anio {
    type: string
    sql: ${TABLE}.anio ;;
  }
  dimension: capital_neto {
    type: string
    sql: ${TABLE}.capital_neto ;;
  }
  dimension: cobertura_intereses {
    type: string
    sql: ${TABLE}.cobertura_intereses ;;
  }
  dimension: cod_precalificacion {
    type: number
    sql: ${TABLE}.cod_precalificacion ;;
  }
  dimension: codigo_empresa_precalificacion {
    type: number
    sql: ${TABLE}.codigo_empresa_precalificacion ;;
  }
  dimension: depreciacion_amortizacion {
    type: number
    sql: ${TABLE}.depreciacion_amortizacion ;;
  }
  dimension: dtf {
    type: number
    sql: ${TABLE}.DTF ;;
  }
  dimension: endeudamiento_total {
    type: string
    sql: ${TABLE}.endeudamiento_total ;;
  }
  dimension: gastos_intereses {
    type: number
    sql: ${TABLE}.gastos_intereses ;;
  }
  dimension: id_empresa {
    type: number
    sql: ${TABLE}.id_empresa ;;
  }
  dimension: id_estado_financiero {
    type: number
    sql: ${TABLE}.id_estado_financiero ;;
  }
  dimension: ingresos_operacionales {
    type: number
    sql: ${TABLE}.ingresos_operacionales ;;
  }
  dimension: inventario {
    type: number
    sql: ${TABLE}.inventario ;;
  }
  dimension: moneda {
    type: string
    sql: ${TABLE}.moneda ;;
  }
  dimension: nit {
    type: string
    sql: ${TABLE}.nit ;;
  }
  dimension: obligaciones_financieras {
    type: number
    sql: ${TABLE}.obligaciones_financieras ;;
  }
  dimension: observaciones {
    type: string
    sql: ${TABLE}.observaciones ;;
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
    type: string
    sql: ${TABLE}.patrimonio ;;
  }
  dimension: razon {
    type: string
    sql: ${TABLE}.razon ;;
  }
  dimension: rentabilidad_activo {
    type: string
    sql: ${TABLE}.rentabilidad_activo ;;
  }
  dimension: solvencia {
    type: string
    sql: ${TABLE}.solvencia ;;
  }
  dimension: utilidad_neta {
    type: number
    sql: ${TABLE}.utilidad_neta ;;
  }
  dimension: utilidades_operacionales {
    type: number
    sql: ${TABLE}.utilidades_operacionales ;;
  }
  dimension: utilidades_retenidas {
    type: number
    sql: ${TABLE}.utilidades_retenidas ;;
  }
  dimension: valor_capital_neto {
    type: number
    sql: ${TABLE}.valor_capital_neto ;;
  }
  dimension: valor_cobertura_intereses {
    type: number
    sql: ${TABLE}.valor_cobertura_intereses ;;
  }
  dimension: valor_endeudamiento_total {
    type: number
    sql: ${TABLE}.valor_endeudamiento_total ;;
  }
  dimension: valor_patrimonio {
    type: string
    sql: ${TABLE}.valor_patrimonio ;;
  }
  dimension: valor_rentabilidad_activo {
    type: number
    sql: ${TABLE}.valor_rentabilidad_activo ;;
  }
  dimension: valor_solvencia {
    type: number
    sql: ${TABLE}.valor_solvencia ;;
  }
  measure: count {
    type: count
  }
}
