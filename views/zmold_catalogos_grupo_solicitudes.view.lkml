view: zmold_catalogos_grupo_solicitudes {
  sql_table_name: bd_ic_cliente.ZMOLD_catalogos_grupo_solicitudes ;;

  dimension: cod_catalogo {
    type: number
    sql: ${TABLE}.cod_catalogo ;;
  }
  dimension: cod_compra {
    type: number
    sql: ${TABLE}.cod_compra ;;
  }
  dimension: cod_empresa {
    type: number
    sql: ${TABLE}.cod_empresa ;;
  }
  dimension: cod_usuario_proveedor {
    type: number
    sql: ${TABLE}.cod_usuario_proveedor ;;
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
  dimension: grupo_compras {
    type: number
    sql: ${TABLE}.grupo_compras ;;
  }
  dimension: id_grupo_solicitud {
    type: number
    sql: ${TABLE}.id_grupo_solicitud ;;
  }
  dimension: numero_compra {
    type: string
    sql: ${TABLE}.numero_compra ;;
  }
  dimension: observaciones {
    type: string
    sql: ${TABLE}.observaciones ;;
  }
  dimension: region {
    type: number
    sql: ${TABLE}.region ;;
  }
  dimension: tipo_asignacion {
    type: string
    sql: ${TABLE}.tipo_asignacion ;;
  }
  dimension: usuario_actualizacion {
    type: number
    sql: ${TABLE}.usuario_actualizacion ;;
  }
  dimension: usuario_aprobacion {
    type: number
    sql: ${TABLE}.usuario_aprobacion ;;
  }
  dimension: usuario_creacion {
    type: number
    sql: ${TABLE}.usuario_creacion ;;
  }
  measure: count {
    type: count
  }
}
