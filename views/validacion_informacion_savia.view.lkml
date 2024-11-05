view: validacion_informacion_savia {
  sql_table_name: bd_ic_cliente.validacion_informacion_savia ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: cod_empresa {
    type: number
    sql: ${TABLE}.cod_empresa ;;
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
  dimension: id_creador {
    type: string
    sql: ${TABLE}.id_creador ;;
  }
  dimension: ruta_precalificacion_financiera {
    type: string
    sql: ${TABLE}.ruta_precalificacion_financiera ;;
  }
  dimension: ruta_reporte_sentinel {
    type: string
    sql: ${TABLE}.ruta_reporte_sentinel ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
