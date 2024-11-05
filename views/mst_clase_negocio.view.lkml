view: mst_clase_negocio {
  sql_table_name: bd_ic_cliente.mst_clase_negocio ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: clase_negocio {
    type: string
    sql: ${TABLE}.clase_negocio ;;
  }
  dimension: empresa_id {
    type: number
    sql: ${TABLE}.empresa_id ;;
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
  dimension: tipo_contrato {
    type: string
    sql: ${TABLE}.tipo_contrato ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
