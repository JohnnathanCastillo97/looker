view: _0002187 {
  sql_table_name: bd_ic_cliente._0002187 ;;

  dimension: loteidxx {
    type: number
    sql: ${TABLE}.loteidxx ;;
  }
  dimension: ptotalxx {
    type: number
    sql: ${TABLE}.ptotalxx ;;
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
  dimension: subidxxx {
    type: number
    sql: ${TABLE}.subidxxx ;;
  }
  dimension: subposxx {
    type: yesno
    sql: ${TABLE}.subposxx ;;
  }
  dimension: totalfac {
    type: number
    sql: ${TABLE}.totalfac ;;
  }
  dimension: useridxx {
    type: number
    sql: ${TABLE}.useridxx ;;
  }
  dimension: username {
    type: string
    sql: ${TABLE}.username ;;
  }
  measure: count {
    type: count
    drill_fields: [username]
  }
}
