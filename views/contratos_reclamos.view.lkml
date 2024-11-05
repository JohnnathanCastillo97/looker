view: contratos_reclamos {
  sql_table_name: bd_ic_cliente.contratos_reclamos ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: descripcion {
    type: string
    sql: ${TABLE}.descripcion ;;
  }
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension_group: fecha_registro {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_registro ;;
  }
  dimension: id_contrato {
    type: number
    sql: ${TABLE}.id_contrato ;;
  }
  dimension: padre_id {
    type: number
    sql: ${TABLE}.padre_id ;;
  }
  dimension: tipo_reclamo {
    type: string
    sql: ${TABLE}.tipo_reclamo ;;
  }
  dimension: usuario_registro {
    type: number
    sql: ${TABLE}.usuario_registro ;;
  }
  measure: count {
    type: count
    drill_fields: [id, contratos_observaciones_seguimiento_reclamo.count]
  }
}
