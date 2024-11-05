view: zmold_catalogos_compras {
  sql_table_name: bd_ic_cliente.ZMOLD_catalogos_compras ;;

  dimension: cod_cliente {
    type: number
    sql: ${TABLE}.cod_cliente ;;
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
  dimension: id_compra {
    type: number
    sql: ${TABLE}.id_compra ;;
  }
  dimension: llave_solicitud {
    type: string
    sql: ${TABLE}.llave_solicitud ;;
  }
  dimension: organizacion_compras {
    type: string
    sql: ${TABLE}.organizacion_compras ;;
  }
  dimension: seq_compra {
    type: number
    sql: ${TABLE}.seq_compra ;;
  }
  dimension: sociedad_sap {
    type: string
    sql: ${TABLE}.sociedad_sap ;;
  }
  dimension: solicitudes {
    type: string
    sql: ${TABLE}.solicitudes ;;
  }
  dimension: usuario_actualizacion {
    type: number
    sql: ${TABLE}.usuario_actualizacion ;;
  }
  dimension: usuario_creador {
    type: number
    sql: ${TABLE}.usuario_creador ;;
  }
  measure: count {
    type: count
  }
}
