view: _0002129 {
  sql_table_name: bd_ic_cliente._0002129 ;;

  dimension_group: fecpagxx {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.fecpagxx ;;
  }
  dimension: monedaxx {
    type: string
    sql: ${TABLE}.monedaxx ;;
  }
  dimension: pagidxxx {
    type: number
    sql: ${TABLE}.pagidxxx ;;
  }
  dimension: pagseqxx {
    type: number
    sql: ${TABLE}.pagseqxx ;;
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
  dimension: rtapagxx {
    type: string
    sql: ${TABLE}.rtapagxx ;;
  }
  dimension: traidxxx {
    type: number
    sql: ${TABLE}.traidxxx ;;
  }
  dimension: valpagxx {
    type: number
    sql: ${TABLE}.valpagxx ;;
  }
  measure: count {
    type: count
  }
}
