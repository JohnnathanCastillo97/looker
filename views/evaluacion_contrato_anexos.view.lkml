view: evaluacion_contrato_anexos {
  sql_table_name: bd_ic_cliente.evaluacion_contrato_anexos ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension: evaluacion_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.evaluacion_id ;;
  }
  dimension_group: fecha_registro {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_registro ;;
  }
  dimension: ruta {
    type: string
    sql: ${TABLE}.ruta ;;
  }
  dimension: tipo {
    type: string
    sql: ${TABLE}.tipo ;;
  }
  dimension: titulo {
    type: string
    sql: ${TABLE}.titulo ;;
  }
  dimension: usuario_registro {
    type: number
    sql: ${TABLE}.usuario_registro ;;
  }
  measure: count {
    type: count
    drill_fields: [id, evaluacion.id]
  }
}
