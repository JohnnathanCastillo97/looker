view: _0002120 {
  sql_table_name: bd_ic_cliente._0002120 ;;

  dimension: alcdesxx {
    type: string
    sql: ${TABLE}.alcdesxx ;;
  }
  dimension: conidxxx {
    type: number
    sql: ${TABLE}.conidxxx ;;
  }
  dimension: monedaxx {
    type: string
    sql: ${TABLE}.monedaxx ;;
  }
  dimension: obtiemxx {
    type: string
    sql: ${TABLE}.obtiemxx ;;
  }
  dimension: obvalxxx {
    type: string
    sql: ${TABLE}.obvalxxx ;;
  }
  dimension: otrsiidx {
    type: number
    sql: ${TABLE}.otrsiidx ;;
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
  dimension: tiempoxx {
    type: number
    sql: ${TABLE}.tiempoxx ;;
  }
  dimension: valorxxx {
    type: number
    sql: ${TABLE}.valorxxx ;;
  }
  measure: count {
    type: count
  }
}
