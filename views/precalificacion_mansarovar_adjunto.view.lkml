view: precalificacion_mansarovar_adjunto {
  sql_table_name: bd_ic_cliente.precalificacion_mansarovar_adjunto ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: cod_empresa {
    type: string
    sql: ${TABLE}.cod_empresa ;;
  }
  dimension_group: fecha_creacion {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.fecha_creacion ;;
  }
  dimension_group: fecha_fin {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.fecha_fin ;;
  }
  dimension_group: fecha_fin_anio_fiscal {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.fecha_fin_anio_fiscal ;;
  }
  dimension_group: fecha_inicio {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.fecha_inicio ;;
  }
  dimension: razon_social {
    type: string
    sql: ${TABLE}.razon_social ;;
  }
  dimension: seq_id {
    type: number
    sql: ${TABLE}.seq_id ;;
  }
  dimension: usuario_creacion {
    type: number
    sql: ${TABLE}.usuario_creacion ;;
  }
  dimension: valor_contrato {
    type: number
    sql: ${TABLE}.valor_contrato ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
