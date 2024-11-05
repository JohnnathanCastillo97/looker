view: catalogos_biblioteca_parametros_sap {
  sql_table_name: bd_ic_cliente.catalogos_biblioteca_parametros_sap ;;

  dimension: cod_almacen {
    type: number
    sql: ${TABLE}.cod_almacen ;;
  }
  dimension: cod_centrol_logistico {
    type: number
    sql: ${TABLE}.cod_centrol_logistico ;;
  }
  dimension: cod_contacto {
    type: number
    sql: ${TABLE}.cod_contacto ;;
  }
  dimension: cod_empresa {
    type: number
    sql: ${TABLE}.cod_empresa ;;
  }
  dimension: cod_grupo_compras {
    type: number
    sql: ${TABLE}.cod_grupo_compras ;;
  }
  dimension: cod_imputacion {
    type: number
    sql: ${TABLE}.cod_imputacion ;;
  }
  dimension: cod_imputacion_secundaria {
    type: number
    sql: ${TABLE}.cod_imputacion_secundaria ;;
  }
  dimension: cod_indicador {
    type: number
    sql: ${TABLE}.cod_indicador ;;
  }
  dimension: cod_region {
    type: number
    sql: ${TABLE}.cod_region ;;
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
  dimension: id_regla {
    type: number
    sql: ${TABLE}.id_regla ;;
  }
  dimension: nombre_regla {
    type: string
    sql: ${TABLE}.nombre_regla ;;
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
