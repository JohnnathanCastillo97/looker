view: catalogos {
  sql_table_name: bd_ic_cliente.catalogos ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: centro_costo_id {
    type: string
    sql: ${TABLE}.centroCostoId ;;
  }
  dimension: cod_empresa {
    type: number
    sql: ${TABLE}.cod_empresa ;;
  }
  dimension: cod_proveedor {
    type: number
    sql: ${TABLE}.cod_proveedor ;;
  }
  dimension: contrato {
    type: string
    sql: ${TABLE}.contrato ;;
  }
  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.created_at ;;
  }
  dimension: decripcion_corta {
    type: string
    sql: ${TABLE}.decripcion_corta ;;
  }
  dimension_group: deleted {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.deleted_at ;;
  }
  dimension: descripcion_larga {
    type: string
    sql: ${TABLE}.descripcion_larga ;;
  }
  dimension: direccion_id {
    type: string
    sql: ${TABLE}.direccionId ;;
  }
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension: estado_notificado {
    type: string
    sql: ${TABLE}.estado_notificado ;;
  }
  dimension_group: fecha_fin {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.fecha_fin ;;
  }
  dimension_group: fecha_inicio {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.fecha_inicio ;;
  }
  dimension: flujo_aprobacion {
    type: string
    sql: ${TABLE}.flujo_aprobacion ;;
  }
  dimension: homologacion {
    type: string
    sql: ${TABLE}.homologacion ;;
  }
  dimension: moneda {
    type: string
    sql: ${TABLE}.moneda ;;
  }
  dimension: monto_aprobacion {
    type: number
    sql: ${TABLE}.monto_aprobacion ;;
  }
  dimension: monto_minimo_compra {
    type: number
    sql: ${TABLE}.monto_minimo_compra ;;
  }
  dimension: nombre {
    type: string
    sql: ${TABLE}.nombre ;;
  }
  dimension: objeto {
    type: string
    sql: ${TABLE}.objeto ;;
  }
  dimension: origen {
    type: string
    sql: ${TABLE}.origen ;;
  }
  dimension: registro_usuario {
    type: number
    sql: ${TABLE}.registro_usuario ;;
  }
  dimension: relacion_id {
    type: string
    sql: ${TABLE}.relacionId ;;
  }
  dimension: secuencia {
    type: string
    sql: ${TABLE}.secuencia ;;
  }
  dimension: solicitud_adjunto {
    type: string
    sql: ${TABLE}.solicitud_adjunto ;;
  }
  dimension_group: updated {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.updated_at ;;
  }
  dimension: valor {
    type: number
    sql: ${TABLE}.valor ;;
  }
  measure: count {
    type: count
    drill_fields: [id, catalogos_compras_cabecera_oxxo.count, catalogos_materiales_oxxo.count, catalogo_negociador.count, catalogo_posicion_postobon.count]
  }
}
