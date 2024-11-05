view: mstcentrocostopostobon_ws_johnnathan {
  sql_table_name: bd_ic_cliente.mstcentrocostopostobon_ws_johnnathan ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: bloqueo {
    type: string
    sql: ${TABLE}.Bloqueo ;;
  }
  dimension: centro_costo {
    type: string
    sql: ${TABLE}.CentroCosto ;;
  }
  dimension: centro_logistico {
    type: string
    sql: ${TABLE}.CentroLogistico ;;
  }
  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.created_at ;;
  }
  dimension: denom_ce_co {
    type: string
    sql: ${TABLE}.DenomCeCo ;;
  }
  dimension: des_centro_logistico {
    type: string
    sql: ${TABLE}.DesCentroLogistico ;;
  }
  dimension: estado {
    type: number
    sql: ${TABLE}.estado ;;
  }
  dimension_group: fecha_fin_validez {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.FechaFinValidez ;;
  }
  dimension_group: fecha_inicio_validez {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.FechaInicioValidez ;;
  }
  dimension: sociedad_co {
    type: string
    sql: ${TABLE}.SociedadCO ;;
  }
  dimension: sociedad_fi {
    type: string
    sql: ${TABLE}.SociedadFI ;;
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
