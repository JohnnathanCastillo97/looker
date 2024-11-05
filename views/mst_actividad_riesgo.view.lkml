view: mst_actividad_riesgo {
  sql_table_name: bd_ic_cliente.mst_actividad_riesgo ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: actividad {
    type: string
    sql: ${TABLE}.actividad ;;
  }
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension_group: fecha_creacion {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_creacion ;;
  }
  dimension: id_cliente {
    type: number
    sql: ${TABLE}.id_cliente ;;
  }
  dimension: numero_actividad {
    type: string
    sql: ${TABLE}.numero_actividad ;;
  }
  dimension: polizas_aplicables {
    type: string
    sql: ${TABLE}.polizas_aplicables ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
