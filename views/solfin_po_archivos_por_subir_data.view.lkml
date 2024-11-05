view: solfin_po_archivos_por_subir_data {
  sql_table_name: bd_ic_cliente.solfin_po_archivos_por_subir_data ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: centro_costo {
    type: string
    sql: ${TABLE}.centro_costo ;;
  }
  dimension: cod_nitprv {
    type: string
    sql: ${TABLE}.cod_nitprv ;;
  }
  dimension: codigo_empresa {
    type: string
    sql: ${TABLE}.codigo_empresa ;;
  }
  dimension: condicion_pago {
    type: string
    sql: ${TABLE}.condicion_pago ;;
  }
  dimension: contrato_co {
    type: string
    sql: ${TABLE}.contrato_co ;;
  }
  dimension: creado_por {
    type: string
    sql: ${TABLE}.creado_por ;;
  }
  dimension: data_registro {
    type: string
    sql: ${TABLE}.data_registro ;;
  }
  dimension: dias_pago {
    type: string
    sql: ${TABLE}.dias_pago ;;
  }
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension: fecha_actualizacion {
    type: string
    sql: ${TABLE}.fecha_actualizacion ;;
  }
  dimension_group: fecha_auditoria {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_auditoria ;;
  }
  dimension: fecha_orden {
    type: string
    sql: ${TABLE}.fecha_orden ;;
  }
  dimension: fecha_orden_creacion {
    type: string
    sql: ${TABLE}.fecha_orden_creacion ;;
  }
  dimension: fecha_registro {
    type: string
    sql: ${TABLE}.fecha_registro ;;
  }
  dimension: id_po {
    type: string
    sql: ${TABLE}.id_po ;;
  }
  dimension: id_por_subir {
    type: number
    sql: ${TABLE}.id_por_subir ;;
  }
  dimension: id_sap_prv {
    type: string
    sql: ${TABLE}.id_sap_prv ;;
  }
  dimension: nitprv {
    type: string
    sql: ${TABLE}.nitprv ;;
  }
  dimension: proyecto {
    type: string
    sql: ${TABLE}.proyecto ;;
  }
  dimension: prv_razon_social {
    type: string
    sql: ${TABLE}.prv_Razon_Social ;;
  }
  dimension: tipo_proceso {
    type: string
    sql: ${TABLE}.tipo_proceso ;;
  }
  dimension: usuario_actualizacion {
    type: string
    sql: ${TABLE}.usuario_actualizacion ;;
  }
  dimension: valor_entrega {
    type: string
    sql: ${TABLE}.valor_entrega ;;
  }
  dimension: valor_factura {
    type: string
    sql: ${TABLE}.valor_factura ;;
  }
  dimension: valor_neto {
    type: string
    sql: ${TABLE}.valor_neto ;;
  }
  dimension: valor_po {
    type: string
    sql: ${TABLE}.valor_po ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
