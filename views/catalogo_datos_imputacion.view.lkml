view: catalogo_datos_imputacion {
  sql_table_name: bd_ic_cliente.catalogo_datos_imputacion ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: activo_fijo {
    type: string
    sql: ${TABLE}.activo_fijo ;;
  }
  dimension: cod_cabecera {
    type: number
    sql: ${TABLE}.cod_cabecera ;;
  }
  dimension: cod_centro_costos {
    type: number
    sql: ${TABLE}.cod_centro_costos ;;
  }
  dimension: cod_centro_logistico {
    type: number
    sql: ${TABLE}.cod_centro_logistico ;;
  }
  dimension: cod_planificador_necesidades {
    type: number
    sql: ${TABLE}.cod_planificador_necesidades ;;
  }
  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.created_at ;;
  }
  dimension_group: deleted {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.deleted_at ;;
  }
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension: numero_material {
    type: string
    sql: ${TABLE}.numero_material ;;
  }
  dimension: orden_co {
    type: string
    sql: ${TABLE}.orden_CO ;;
  }
  dimension: orden_pm {
    type: string
    sql: ${TABLE}.orden_PM ;;
  }
  dimension: solicitud_adjunto {
    type: string
    sql: ${TABLE}.solicitud_adjunto ;;
  }
  dimension: tipo_imputacion {
    type: string
    sql: ${TABLE}.tipo_imputacion ;;
  }
  dimension_group: updated {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.updated_at ;;
  }
  dimension: urgencia_necesidad {
    type: string
    sql: ${TABLE}.urgencia_necesidad ;;
  }
  dimension: usuario_solicitante {
    type: string
    sql: ${TABLE}.usuario_solicitante ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
