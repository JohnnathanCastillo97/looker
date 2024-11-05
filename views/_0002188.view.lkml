view: _0002188 {
  sql_table_name: bd_ic_cliente._0002188 ;;

  dimension: itemidxx {
    type: number
    sql: ${TABLE}.itemidxx ;;
  }
  dimension: loteidxx {
    type: number
    sql: ${TABLE}.loteidxx ;;
  }
  dimension: preinixx {
    type: number
    sql: ${TABLE}.preinixx ;;
  }
  dimension: proidxxx {
    type: string
    sql: ${TABLE}.proidxxx ;;
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
  dimension: useridxx {
    type: number
    sql: ${TABLE}.useridxx ;;
  }
  measure: count {
    type: count
  }
}
