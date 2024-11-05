view: tb_precalificacion_empresa_relacionamiento {
  sql_table_name: bd_ic_cliente.tb_precalificacion_empresa_relacionamiento ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: cod_precalificacion_empresa {
    type: number
    sql: ${TABLE}.cod_precalificacion_empresa ;;
  }
  dimension: cod_relacionamiento {
    type: number
    sql: ${TABLE}.cod_relacionamiento ;;
  }
  dimension: demandado {
    type: string
    sql: ${TABLE}.demandado ;;
  }
  dimension: desempeno {
    type: number
    sql: ${TABLE}.desempeno ;;
  }
  dimension_group: fecha_creacion {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_creacion ;;
  }
  dimension_group: fecha_modificacion {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_modificacion ;;
  }
  dimension: id_usuario_creacion {
    type: number
    sql: ${TABLE}.id_usuario_creacion ;;
  }
  dimension: id_usuario_modificacion {
    type: number
    sql: ${TABLE}.id_usuario_modificacion ;;
  }
  dimension: incumplimientos {
    type: string
    sql: ${TABLE}.incumplimientos ;;
  }
  dimension: medidas_apremio {
    type: string
    sql: ${TABLE}.medidas_apremio ;;
  }
  dimension: proveedor_potencial {
    type: string
    sql: ${TABLE}.proveedor_potencial ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
