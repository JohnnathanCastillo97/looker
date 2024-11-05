view: zmold_catalogos {
  sql_table_name: bd_ic_cliente.ZMOLD_catalogos ;;

  dimension: acceso_rapido {
    type: string
    sql: ${TABLE}.acceso_rapido ;;
  }
  dimension: asignacion_maestra {
    type: string
    sql: ${TABLE}.asignacion_maestra ;;
  }
  dimension: cod_proveedor {
    type: string
    sql: ${TABLE}.cod_proveedor ;;
  }
  dimension: cod_proveedor_sap {
    type: number
    sql: ${TABLE}.cod_proveedor_sap ;;
  }
  dimension: cod_sap {
    type: string
    sql: ${TABLE}.cod_sap ;;
  }
  dimension: descripcion_catalogo {
    type: string
    sql: ${TABLE}.descripcion_catalogo ;;
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
  dimension: id_catalogo {
    type: number
    sql: ${TABLE}.id_catalogo ;;
  }
  dimension: id_empresa {
    type: number
    sql: ${TABLE}.id_empresa ;;
  }
  dimension: imagen_catalogo {
    type: string
    sql: ${TABLE}.imagen_catalogo ;;
  }
  dimension: moneda_catalogo {
    type: string
    sql: ${TABLE}.moneda_catalogo ;;
  }
  dimension: nombre_catalogo {
    type: string
    sql: ${TABLE}.nombre_catalogo ;;
  }
  dimension: seq_catalogo {
    type: number
    sql: ${TABLE}.seq_catalogo ;;
  }
  dimension: solicitud_adjuntos {
    type: string
    sql: ${TABLE}.solicitud_adjuntos ;;
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
