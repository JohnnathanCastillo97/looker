view: subastas_datos_adicionales_petroperu {
  sql_table_name: bd_ic_cliente.subastas_datos_adicionales_petroperu ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: anio_proceso {
    type: number
    sql: ${TABLE}.anio_proceso ;;
  }
  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.created_at ;;
  }
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension: id_oferta {
    type: number
    sql: ${TABLE}.id_oferta ;;
  }
  dimension: id_subasta {
    type: number
    sql: ${TABLE}.id_subasta ;;
  }
  dimension: monto_reservado {
    type: string
    sql: ${TABLE}.monto_reservado ;;
  }
  dimension: num_convocatoria {
    type: string
    sql: ${TABLE}.num_convocatoria ;;
  }
  dimension: num_correlativo {
    type: string
    sql: ${TABLE}.num_correlativo ;;
  }
  dimension: num_items {
    type: number
    sql: ${TABLE}.num_items ;;
  }
  dimension: num_proceso {
    type: string
    sql: ${TABLE}.num_proceso ;;
  }
  dimension: numero_pacc {
    type: string
    sql: ${TABLE}.numero_pacc ;;
  }
  dimension: numero_solped {
    type: string
    sql: ${TABLE}.numero_solped ;;
  }
  dimension: objeto {
    type: string
    sql: ${TABLE}.objeto ;;
  }
  dimension: organizacion_compras {
    type: string
    sql: ${TABLE}.organizacion_compras ;;
  }
  dimension: solicitante {
    type: string
    sql: ${TABLE}.solicitante ;;
  }
  dimension: subasta_prueba {
    type: string
    sql: ${TABLE}.subasta_prueba ;;
  }
  dimension_group: updated {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.updated_at ;;
  }
  dimension: usuario_actualizacion {
    type: number
    sql: ${TABLE}.usuario_actualizacion ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
