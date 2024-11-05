view: tb_precalificacion_informacion_adicional_odl_odc {
  sql_table_name: bd_ic_cliente.tb_precalificacion_informacion_adicional_odl_odc ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: bienes {
    type: string
    sql: ${TABLE}.bienes ;;
  }
  dimension: cod_precalificacion {
    type: number
    sql: ${TABLE}.cod_precalificacion ;;
  }
  dimension: duracion_contrato {
    type: number
    sql: ${TABLE}.duracion_contrato ;;
  }
  dimension_group: fecha_finalizacion {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.fecha_finalizacion ;;
  }
  dimension: lineas_pcc {
    type: string
    sql: ${TABLE}.lineas_pcc ;;
  }
  dimension: planeador_id {
    type: number
    sql: ${TABLE}.planeador_id ;;
  }
  dimension: riesgo {
    type: string
    sql: ${TABLE}.riesgo ;;
  }
  dimension: sociedad {
    type: string
    sql: ${TABLE}.sociedad ;;
  }
  dimension: subcategoria {
    type: string
    sql: ${TABLE}.subcategoria ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
