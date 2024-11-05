view: ofertas_contratos_en_ejecucion {
  sql_table_name: bd_ic_cliente.ofertas_contratos_en_ejecucion ;;

  dimension: cod_oferta {
    type: number
    sql: ${TABLE}.cod_oferta ;;
  }
  dimension: consorcio {
    type: string
    sql: ${TABLE}.consorcio ;;
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
  dimension_group: fecha_fin {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.fecha_fin ;;
  }
  dimension_group: fecha_inicio {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.fecha_inicio ;;
  }
  dimension: id_contrato {
    type: number
    sql: ${TABLE}.id_contrato ;;
  }
  dimension: nit {
    type: string
    sql: ${TABLE}.nit ;;
  }
  dimension: porcentaje_consorcio {
    type: yesno
    sql: ${TABLE}.porcentaje_consorcio ;;
  }
  dimension: razon_social {
    type: string
    sql: ${TABLE}.razon_social ;;
  }
  dimension: usuario_actualizacion {
    type: number
    sql: ${TABLE}.usuario_actualizacion ;;
  }
  dimension: usuario_creacion {
    type: number
    sql: ${TABLE}.usuario_creacion ;;
  }
  dimension: valor {
    type: number
    sql: ${TABLE}.valor ;;
  }
  measure: count {
    type: count
  }
}
