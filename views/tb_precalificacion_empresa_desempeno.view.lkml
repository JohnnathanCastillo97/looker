view: tb_precalificacion_empresa_desempeno {
  sql_table_name: bd_ic_cliente.tb_precalificacion_empresa_desempeno ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: cantidad_afiliados {
    type: string
    sql: ${TABLE}.cantidad_afiliados ;;
  }
  dimension: cod_precalificacion_empresa {
    type: number
    sql: ${TABLE}.cod_precalificacion_empresa ;;
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
  dimension: evaluacion {
    type: string
    sql: ${TABLE}.evaluacion ;;
  }
  dimension: porcentaje {
    type: number
    sql: ${TABLE}.porcentaje ;;
  }
  dimension: registro_creador {
    type: number
    sql: ${TABLE}.registro_creador ;;
  }
  dimension: sistema_aportes {
    type: string
    sql: ${TABLE}.sistema_aportes ;;
  }
  dimension_group: updated {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.updated_at ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}