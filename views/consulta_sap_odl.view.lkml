view: consulta_sap_odl {
  sql_table_name: bd_ic_cliente.consulta_sap_odl ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: administrador {
    type: string
    sql: ${TABLE}.administrador ;;
  }
  dimension: aiu {
    type: number
    sql: ${TABLE}.AIU ;;
  }
  dimension: compania {
    type: string
    sql: ${TABLE}.compania ;;
  }
  dimension: contribucion_obra_publica {
    type: string
    sql: ${TABLE}.contribucionObraPublica ;;
  }
  dimension: designacion_administrador {
    type: yesno
    sql: ${TABLE}.designacionAdministrador ;;
  }
  dimension: direccion {
    type: string
    sql: ${TABLE}.direccion ;;
  }
  dimension: encargado_abastecimiento {
    type: string
    sql: ${TABLE}.encargadoAbastecimiento ;;
  }
  dimension: estambilla_unal {
    type: string
    sql: ${TABLE}.estambillaUNal ;;
  }
  dimension_group: fecha_de_creacion {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fechaDeCreacion ;;
  }
  dimension_group: fecha_de_liberacion {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fechaDeLiberacion ;;
  }
  dimension: liberacion {
    type: yesno
    sql: ${TABLE}.liberacion ;;
  }
  dimension: moneda {
    type: string
    sql: ${TABLE}.moneda ;;
  }
  dimension: numero_contrato {
    type: number
    sql: ${TABLE}.numeroContrato ;;
  }
  dimension: objeto {
    type: string
    sql: ${TABLE}.objeto ;;
  }
  dimension: plazo_contrato_dias {
    type: number
    sql: ${TABLE}.plazoContratoDias ;;
  }
  dimension: porcentaje_contribucion_obra_publica {
    type: number
    sql: ${TABLE}.porcentajeContribucionObraPublica ;;
  }
  dimension: porcentaje_estambilla_unal {
    type: number
    sql: ${TABLE}.porcentajeEstambillaUNal ;;
  }
  dimension: requiere_liquidacion {
    type: string
    sql: ${TABLE}.requiereLiquidacion ;;
  }
  dimension: retencion_garantia {
    type: number
    sql: ${TABLE}.retencionGarantia ;;
  }
  dimension: sac {
    type: string
    sql: ${TABLE}.SAC ;;
  }
  dimension: tipo_busqueda {
    type: string
    sql: ${TABLE}.tipoBusqueda ;;
  }
  dimension: tipo_contrato {
    type: number
    sql: ${TABLE}.tipoContrato ;;
  }
  dimension: valor_administracion_gastos_reembolsables {
    type: number
    sql: ${TABLE}.valorAdministracionGastosReembolsables ;;
  }
  dimension: valor_anticipo {
    type: number
    sql: ${TABLE}.valorAnticipo ;;
  }
  dimension: valor_gastos_reembolsables {
    type: number
    sql: ${TABLE}.valorGastosReembolsables ;;
  }
  dimension: valor_indeterminado {
    type: number
    sql: ${TABLE}.valorIndeterminado ;;
  }
  dimension: valor_sin_iva {
    type: number
    sql: ${TABLE}.valorSinIva ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
