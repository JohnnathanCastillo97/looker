view: catalogos_reporte_compras {
  sql_table_name: bd_ic_cliente.catalogos_reporte_compras ;;

  dimension: cantidad_recibida {
    type: number
    sql: ${TABLE}.cantidad_recibida ;;
  }
  dimension: cantidad_solicitada_item_compra {
    type: number
    sql: ${TABLE}.cantidad_solicitada_item_compra ;;
  }
  dimension: centro_costo_seleccionado_compra {
    type: string
    sql: ${TABLE}.centro_costo_seleccionado_compra ;;
  }
  dimension: centro_entrega {
    type: string
    sql: ${TABLE}.centro_entrega ;;
  }
  dimension: cod_empresa {
    type: number
    sql: ${TABLE}.cod_empresa ;;
  }
  dimension: cod_homologacion {
    type: string
    sql: ${TABLE}.cod_homologacion ;;
  }
  dimension: codigo_cabecera_compra {
    type: number
    sql: ${TABLE}.codigo_cabecera_compra ;;
  }
  dimension: codigo_catalogo {
    type: number
    sql: ${TABLE}.codigo_catalogo ;;
  }
  dimension: correo_usuario_creador_compra {
    type: string
    sql: ${TABLE}.correo_usuario_creador_compra ;;
  }
  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.created_at ;;
  }
  dimension: descripcion {
    type: string
    sql: ${TABLE}.descripcion ;;
  }
  dimension: dias_entrega_solicitada_item_compra {
    type: number
    sql: ${TABLE}.dias_entrega_solicitada_item_compra ;;
  }
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension: estado_compra_final {
    type: string
    sql: ${TABLE}.estado_compra_final ;;
  }
  dimension: estado_item_compra {
    type: string
    sql: ${TABLE}.estado_item_compra ;;
  }
  dimension: estado_sap {
    type: string
    sql: ${TABLE}.estadoSAP ;;
  }
  dimension: fecha_aprobacion_comprador {
    type: string
    sql: ${TABLE}.fecha_aprobacion_comprador ;;
  }
  dimension: fecha_aprobacion_proveedor {
    type: string
    sql: ${TABLE}.fecha_aprobacion_proveedor ;;
  }
  dimension_group: fecha_creacion_compra {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_creacion_compra ;;
  }
  dimension_group: fecha_entrega_estimada {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.fecha_entrega_estimada ;;
  }
  dimension_group: fecha_recibido {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_recibido ;;
  }
  dimension: iva {
    type: yesno
    sql: ${TABLE}.iva ;;
  }
  dimension: moneda_catalogo {
    type: string
    sql: ${TABLE}.moneda_catalogo ;;
  }
  dimension: nit {
    type: string
    sql: ${TABLE}.nit ;;
  }
  dimension: numero_compra {
    type: string
    sql: ${TABLE}.numero_compra ;;
  }
  dimension: numero_compra_intelcost {
    type: number
    sql: ${TABLE}.numero_compra_intelcost ;;
  }
  dimension: numero_contrato_catalogo {
    type: string
    sql: ${TABLE}.numero_contrato_catalogo ;;
  }
  dimension: numero_material_item_compra {
    type: string
    sql: ${TABLE}.numero_material_item_compra ;;
  }
  dimension: observacion_entrega {
    type: string
    sql: ${TABLE}.observacion_entrega ;;
  }
  dimension: observaciones {
    type: string
    sql: ${TABLE}.observaciones ;;
  }
  dimension: parametro_carga {
    type: string
    sql: ${TABLE}.parametro_carga ;;
  }
  dimension: posicion_item_compra {
    type: number
    sql: ${TABLE}.posicion_item_compra ;;
  }
  dimension: razon {
    type: string
    sql: ${TABLE}.razon ;;
  }
  dimension: titulo_catalogo {
    type: string
    sql: ${TABLE}.titulo_catalogo ;;
  }
  dimension: titulo_material_item_compra {
    type: string
    sql: ${TABLE}.titulo_material_item_compra ;;
  }
  dimension: usuario_creador_compra {
    type: string
    sql: ${TABLE}.usuario_creador_compra ;;
  }
  dimension: valor_solicitada_item_compra {
    type: number
    sql: ${TABLE}.valor_solicitada_item_compra ;;
  }
  measure: count {
    type: count
  }
}
