view: proveedor_vinculacion_corona {
  sql_table_name: bd_ic_cliente.proveedor_vinculacion_corona ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: adjunto_informe_proveedor {
    type: string
    sql: ${TABLE}.adjunto_informe_proveedor ;;
  }
  dimension: aprobacion_exc_politica {
    type: string
    sql: ${TABLE}.aprobacion_exc_politica ;;
  }
  dimension: aprobacion_registro {
    type: string
    sql: ${TABLE}.aprobacion_registro ;;
  }
  dimension: aprobacion_registro_chino {
    type: string
    sql: ${TABLE}.aprobacion_registro_chino ;;
  }
  dimension: banco_propio {
    type: string
    sql: ${TABLE}.banco_propio ;;
  }
  dimension: compannia_integrada {
    type: string
    sql: ${TABLE}.compannia_integrada ;;
  }
  dimension: comparativo_ofertas {
    type: string
    sql: ${TABLE}.comparativo_ofertas ;;
  }
  dimension: cumplimiento_politica_pago {
    type: string
    sql: ${TABLE}.cumplimiento_politica_pago ;;
  }
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension_group: fecha_aprobacion_reg_prov_chino {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_aprobacion_reg_prov_chino ;;
  }
  dimension_group: fecha_aprobacion_registro {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_aprobacion_registro ;;
  }
  dimension_group: fecha_modifica {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_modifica ;;
  }
  dimension_group: fecha_registro {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_registro ;;
  }
  dimension_group: fecha_registro_exc_politica {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_registro_exc_politica ;;
  }
  dimension: funcion {
    type: string
    sql: ${TABLE}.funcion ;;
  }
  dimension: genera_vinculacion_sap {
    type: string
    sql: ${TABLE}.genera_vinculacion_sap ;;
  }
  dimension: id_cliente {
    type: number
    sql: ${TABLE}.id_cliente ;;
  }
  dimension: id_descripcion_compra {
    type: number
    sql: ${TABLE}.id_descripcion_compra ;;
  }
  dimension: id_indicador_minorias {
    type: number
    sql: ${TABLE}.id_indicador_minorias ;;
  }
  dimension: id_proveedor {
    type: number
    sql: ${TABLE}.id_proveedor ;;
  }
  dimension: id_region {
    type: number
    sql: ${TABLE}.id_region ;;
  }
  dimension: id_region_cliente {
    type: number
    sql: ${TABLE}.id_region_cliente ;;
  }
  dimension: justificacion_excepcion {
    type: string
    sql: ${TABLE}.justificacion_excepcion ;;
  }
  dimension: migradet {
    type: number
    sql: ${TABLE}.migradet ;;
  }
  dimension: mrko {
    type: number
    sql: ${TABLE}.Mrko ;;
  }
  dimension: numero_proceso {
    type: string
    sql: ${TABLE}.numero_proceso ;;
  }
  dimension: proceso_suplos {
    type: string
    sql: ${TABLE}.proceso_suplos ;;
  }
  dimension: ramo {
    type: string
    sql: ${TABLE}.ramo ;;
  }
  dimension: ramo_mst {
    type: number
    sql: ${TABLE}.ramo_mst ;;
  }
  dimension: termino_pago_mst {
    type: number
    sql: ${TABLE}.termino_pago_mst ;;
  }
  dimension: termino_pago_mst_compania_no_integrada {
    type: number
    sql: ${TABLE}.termino_pago_mst_compania_no_integrada ;;
  }
  dimension: usuario_aprobador_exc_politica {
    type: number
    sql: ${TABLE}.usuario_aprobador_exc_politica ;;
  }
  dimension: usuario_aprobador_registro {
    type: number
    sql: ${TABLE}.usuario_aprobador_registro ;;
  }
  dimension: usuario_aprobador_registro_chino {
    type: number
    sql: ${TABLE}.usuario_aprobador_registro_chino ;;
  }
  dimension: usuario_aprobador_sap {
    type: number
    sql: ${TABLE}.usuario_aprobador_sap ;;
  }
  dimension: usuario_modifica {
    type: number
    sql: ${TABLE}.usuario_modifica ;;
  }
  dimension: usuario_registra {
    type: number
    sql: ${TABLE}.usuario_registra ;;
  }
  dimension: usuario_registra_aprob_prov_chino {
    type: number
    sql: ${TABLE}.usuario_registra_aprob_prov_chino ;;
  }
  dimension: usuario_registra_aprobacion_registro {
    type: number
    sql: ${TABLE}.usuario_registra_aprobacion_registro ;;
  }
  dimension: usuario_registra_exc_politica {
    type: number
    sql: ${TABLE}.usuario_registra_exc_politica ;;
  }
  dimension: verif_fra_dupl {
    type: string
    sql: ${TABLE}.verif_fra_dupl ;;
  }
  dimension: via_pago {
    type: string
    sql: ${TABLE}.via_pago ;;
  }
  dimension: vinculacion {
    type: string
    sql: ${TABLE}.vinculacion ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
