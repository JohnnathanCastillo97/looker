view: zmold_catalogos_solicitudes {
  sql_table_name: bd_ic_cliente.ZMOLD_catalogos_solicitudes ;;

  dimension: almacen_sap {
    type: number
    sql: ${TABLE}.almacen_sap ;;
  }
  dimension: cantidad_solicitud {
    type: string
    sql: ${TABLE}.cantidad_solicitud ;;
  }
  dimension: centro_logistico_sap {
    type: number
    sql: ${TABLE}.centro_logistico_sap ;;
  }
  dimension: cod_catalogo {
    type: number
    sql: ${TABLE}.cod_catalogo ;;
  }
  dimension: cod_compra {
    type: number
    sql: ${TABLE}.cod_compra ;;
  }
  dimension: cod_grupo_solicitud {
    type: number
    sql: ${TABLE}.cod_grupo_solicitud ;;
  }
  dimension: cod_item {
    type: number
    sql: ${TABLE}.cod_item ;;
  }
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension_group: fecha_actualizacion {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_actualizacion ;;
  }
  dimension_group: fecha_creacion {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_creacion ;;
  }
  dimension_group: fecha_entrega_sap {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.fecha_entrega_sap ;;
  }
  dimension: grupo_compras_sap {
    type: number
    sql: ${TABLE}.grupo_compras_sap ;;
  }
  dimension: id_solicitud {
    type: number
    sql: ${TABLE}.id_solicitud ;;
  }
  dimension: imputacion_secundaria_sap {
    type: number
    sql: ${TABLE}.imputacion_secundaria_sap ;;
  }
  dimension: indicador_impuestos_sap {
    type: number
    sql: ${TABLE}.indicador_impuestos_sap ;;
  }
  dimension: region_sap {
    type: number
    sql: ${TABLE}.region_sap ;;
  }
  dimension: tipo_asignacion {
    type: string
    sql: ${TABLE}.tipo_asignacion ;;
  }
  dimension: tipo_imputacion_sap {
    type: number
    sql: ${TABLE}.tipo_imputacion_sap ;;
  }
  dimension: usuario_actualizacion {
    type: number
    sql: ${TABLE}.usuario_actualizacion ;;
  }
  dimension: usuario_creacion {
    type: number
    sql: ${TABLE}.usuario_creacion ;;
  }
  measure: count {
    type: count
  }
}
