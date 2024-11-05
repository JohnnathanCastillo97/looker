view: tg_contratos {
  sql_table_name: bd_ic_cliente.tg_contratos ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: accion {
    type: string
    sql: ${TABLE}.accion ;;
  }
  dimension: actividad {
    type: string
    sql: ${TABLE}.actividad ;;
  }
  dimension: arrendamiento {
    type: string
    sql: ${TABLE}.arrendamiento ;;
  }
  dimension: arrendamiento_metros {
    type: number
    sql: ${TABLE}.arrendamiento_metros ;;
  }
  dimension: clausula_penalidad {
    type: string
    sql: ${TABLE}.clausula_penalidad ;;
  }
  dimension: cod_contrato {
    type: number
    sql: ${TABLE}.cod_contrato ;;
  }
  dimension: cod_empresa {
    type: number
    sql: ${TABLE}.cod_empresa ;;
  }
  dimension: cod_forma_pago {
    type: number
    sql: ${TABLE}.cod_forma_pago ;;
  }
  dimension: contrato_preliminar {
    type: string
    sql: ${TABLE}.contrato_preliminar ;;
  }
  dimension: convenio {
    type: number
    sql: ${TABLE}.convenio ;;
  }
  dimension: cual_eva {
    type: string
    sql: ${TABLE}.cual_eva ;;
  }
  dimension: cuantas_evas {
    type: number
    sql: ${TABLE}.cuantas_evas ;;
  }
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension: estado_contrato_proveedor {
    type: string
    sql: ${TABLE}.estado_contrato_proveedor ;;
  }
  dimension_group: fecha_actualizacion {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_actualizacion ;;
  }
  dimension_group: fecha_aprobacion {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_aprobacion ;;
  }
  dimension_group: fecha_creacion {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_creacion ;;
  }
  dimension_group: fecha_modificacion {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_modificacion ;;
  }
  dimension_group: firma_contrato {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.firma_contrato ;;
  }
  dimension: id_cliente {
    type: string
    sql: ${TABLE}.id_cliente ;;
  }
  dimension: id_usuario {
    type: number
    sql: ${TABLE}.id_usuario ;;
  }
  dimension: iva {
    type: string
    sql: ${TABLE}.iva ;;
  }
  dimension: maestra1 {
    type: string
    sql: ${TABLE}.maestra1 ;;
  }
  dimension: maestra2 {
    type: string
    sql: ${TABLE}.maestra2 ;;
  }
  dimension: minuta {
    type: string
    sql: ${TABLE}.minuta ;;
  }
  dimension: moneda {
    type: string
    sql: ${TABLE}.moneda ;;
  }
  dimension: nombre_actividad {
    type: string
    sql: ${TABLE}.nombre_actividad ;;
  }
  dimension: nombre_proveedor {
    type: string
    sql: ${TABLE}.nombre_proveedor ;;
  }
  dimension: numero_contrato {
    type: string
    sql: ${TABLE}.numero_contrato ;;
  }
  dimension: numero_convenio {
    type: string
    sql: ${TABLE}.numero_convenio ;;
  }
  dimension: objeto {
    type: string
    sql: ${TABLE}.objeto ;;
  }
  dimension: oferta_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.oferta_id ;;
  }
  dimension: preaviso_terminacion {
    type: string
    sql: ${TABLE}.preaviso_terminacion ;;
  }
  dimension: proveedor_id {
    type: string
    sql: ${TABLE}.proveedor_id ;;
  }
  dimension: proveedor_nit {
    type: string
    sql: ${TABLE}.proveedor_nit ;;
  }
  dimension_group: registro_contrato_preliminar {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.registro_contrato_preliminar ;;
  }
  dimension_group: registro_usuario_proveedor {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.registro_usuario_proveedor ;;
  }
  dimension: ruta_contrato {
    type: string
    sql: ${TABLE}.ruta_contrato ;;
  }
  dimension: tipo {
    type: yesno
    sql: ${TABLE}.tipo ;;
  }
  dimension: tipo_eva {
    type: string
    sql: ${TABLE}.tipo_eva ;;
  }
  dimension: ubicacion_contrato {
    type: string
    sql: ${TABLE}.ubicacion_contrato ;;
  }
  dimension: uniontemp {
    type: string
    sql: ${TABLE}.uniontemp ;;
  }
  dimension: usuario_actualizacion {
    type: string
    sql: ${TABLE}.usuario_actualizacion ;;
  }
  dimension: usuario_aprobacion {
    type: number
    sql: ${TABLE}.usuario_aprobacion ;;
  }
  dimension: usuario_compras {
    type: string
    sql: ${TABLE}.usuario_compras ;;
  }
  dimension: usuario_creacion {
    type: number
    sql: ${TABLE}.usuario_creacion ;;
  }
  dimension: usuario_responsable_final {
    type: string
    sql: ${TABLE}.usuario_responsable_final ;;
  }
  dimension: valor_con_iva {
    type: number
    sql: ${TABLE}.valor_con_iva ;;
  }
  dimension: valor_indefinido {
    type: string
    sql: ${TABLE}.valor_indefinido ;;
  }
  dimension: valor_sin_iva {
    type: number
    sql: ${TABLE}.valor_sin_iva ;;
  }
  dimension: vigencia {
    type: string
    sql: ${TABLE}.vigencia ;;
  }
  dimension: vigencia_indefinida {
    type: string
    sql: ${TABLE}.vigencia_indefinida ;;
  }
  measure: count {
    type: count
    drill_fields: [id, ofertas.id]
  }
}
