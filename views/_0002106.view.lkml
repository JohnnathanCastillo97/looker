view: _0002106 {
  sql_table_name: bd_ic_cliente._0002106 ;;

  dimension: accesosx {
    type: string
    sql: ${TABLE}.accesosx ;;
  }
  dimension: ofeidxxx {
    type: string
    sql: ${TABLE}.ofeidxxx ;;
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
  dimension: seqidxxx {
    type: string
    sql: ${TABLE}.seqidxxx ;;
  }
  dimension: usridxxx {
    type: string
    sql: ${TABLE}.usridxxx ;;
  }
  measure: count {
    type: count
  }
}
