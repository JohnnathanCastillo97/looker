view: tb_precalificacion_empresa_estado_financiero_contratos_mansarova {
  sql_table_name: bd_ic_cliente.tb_precalificacion_empresa_estado_financiero_contratos_mansarova ;;
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
  dimension: id_preca_estado_financiero_mansarovar {
    type: number
    sql: ${TABLE}.id_preca_estado_financiero_mansarovar ;;
  }
  dimension: razon_social {
    type: string
    sql: ${TABLE}.razon_social ;;
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
