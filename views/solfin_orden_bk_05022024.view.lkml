view: solfin_orden_bk_05022024 {
  sql_table_name: bd_ic_cliente.solfin_orden_BK_05022024 ;;
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
  dimension: cod_empresa_masa {
    type: string
    sql: ${TABLE}.cod_empresa_masa ;;
  }
  dimension: cod_proveedor_int {
    type: string
    sql: ${TABLE}.cod_proveedor_int ;;
  }
  dimension: condiciones_pago {
    type: string
    sql: ${TABLE}.condiciones_pago ;;
  }
  dimension: contrato_co {
    type: string
    sql: ${TABLE}.contrato_co ;;
  }
  dimension: creador_orden {
    type: string
    sql: ${TABLE}.creador_orden ;;
  }
  dimension: descripcion_orden {
    type: string
    sql: ${TABLE}.descripcion_orden ;;
  }
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension: fecha_actualizacion {
    type: string
    sql: ${TABLE}.fecha_actualizacion ;;
  }
  dimension: fecha_creacion_pedido {
    type: string
    sql: ${TABLE}.fecha_creacion_pedido ;;
  }
  dimension: fecha_orden {
    type: string
    sql: ${TABLE}.fecha_orden ;;
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
  dimension: id_orden_compra {
    type: string
    sql: ${TABLE}.id_orden_compra ;;
  }
  dimension: id_sap_proveedor {
    type: string
    sql: ${TABLE}.id_sap_proveedor ;;
  }
  dimension: nit_proveedor {
    type: string
    sql: ${TABLE}.nit_proveedor ;;
  }
  dimension: no_dias_pago {
    type: string
    sql: ${TABLE}.no_dias_pago ;;
  }
  dimension: nom_proveedor {
    type: string
    sql: ${TABLE}.nom_proveedor ;;
  }
  dimension: proyecto {
    type: string
    sql: ${TABLE}.proyecto ;;
  }
  dimension: tipo_proceso {
    type: string
    sql: ${TABLE}.tipo_proceso ;;
  }
  dimension: usuario_actualizacion {
    type: string
    sql: ${TABLE}.usuario_actualizacion ;;
  }
  dimension: usuario_registro {
    type: string
    sql: ${TABLE}.usuario_registro ;;
  }
  dimension: validado_update {
    type: string
    sql: ${TABLE}.validado_update ;;
  }
  dimension: valor_abierto_po {
    type: string
    sql: ${TABLE}.valor_abierto_po ;;
  }
  dimension: valor_entregado {
    type: string
    sql: ${TABLE}.valor_entregado ;;
  }
  dimension: valor_facturado {
    type: string
    sql: ${TABLE}.valor_facturado ;;
  }
  dimension: valor_neto {
    type: string
    sql: ${TABLE}.valor_neto ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
