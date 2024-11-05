view: _0002128 {
  sql_table_name: bd_ic_cliente._0002128 ;;

  dimension_group: fecaproxx {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.fecaproxx ;;
  }
  dimension_group: fecdesxx {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.fecdesxx ;;
  }
  dimension_group: fecpagxx {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.fecpagxx ;;
  }
  dimension: obstraxx {
    type: string
    sql: ${TABLE}.obstraxx ;;
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
  dimension: rtafirxx {
    type: string
    sql: ${TABLE}.rtafirxx ;;
  }
  dimension: traidxxx {
    type: number
    sql: ${TABLE}.traidxxx ;;
  }
  dimension: tratalxx {
    type: number
    sql: ${TABLE}.tratalxx ;;
  }
  dimension: trtaldxx {
    type: number
    sql: ${TABLE}.trtaldxx ;;
  }
  dimension: usridxxx {
    type: string
    sql: ${TABLE}.usridxxx ;;
  }
  measure: count {
    type: count
  }
}
