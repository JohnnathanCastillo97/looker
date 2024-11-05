view: _0002132 {
  sql_table_name: bd_ic_cliente._0002132 ;;

  dimension: corantxx {
    type: number
    sql: ${TABLE}.corantxx ;;
  }
  dimension: cornuexx {
    type: number
    sql: ${TABLE}.cornuexx ;;
  }
  dimension: ctoantxx {
    type: number
    sql: ${TABLE}.ctoantxx ;;
  }
  dimension: ctonuexx {
    type: number
    sql: ${TABLE}.ctonuexx ;;
  }
  dimension_group: fecupoxx {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.fecupoxx ;;
  }
  dimension: idcupoxx {
    type: number
    sql: ${TABLE}.idcupoxx ;;
  }
  dimension: idpagxxx {
    type: number
    sql: ${TABLE}.idpagxxx ;;
  }
  dimension: idtraxxx {
    type: number
    sql: ${TABLE}.idtraxxx ;;
  }
  dimension: regestxx {
    type: string
    sql: ${TABLE}.regestxx ;;
  }
  dimension_group: regfecxx {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.regfecxx ;;
  }
  dimension_group: reghorxx {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.reghorxx ;;
  }
  dimension_group: regmfecx {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.regmfecx ;;
  }
  dimension_group: regmhorx {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.regmhorx ;;
  }
  dimension: regmusrx {
    type: string
    sql: ${TABLE}.regmusrx ;;
  }
  dimension: regusrxx {
    type: string
    sql: ${TABLE}.regusrxx ;;
  }
  dimension: tipotrax {
    type: string
    sql: ${TABLE}.tipotrax ;;
  }
  dimension: valpagxx {
    type: number
    sql: ${TABLE}.valpagxx ;;
  }
  dimension: valtraxx {
    type: number
    sql: ${TABLE}.valtraxx ;;
  }
  measure: count {
    type: count
  }
}
