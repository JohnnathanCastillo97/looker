view: _0002118 {
  sql_table_name: bd_ic_cliente._0002118 ;;

  dimension: conidxxx {
    type: number
    sql: ${TABLE}.conidxxx ;;
  }
  dimension: estadoxx {
    type: string
    sql: ${TABLE}.estadoxx ;;
  }
  dimension: fijoxxxx {
    type: number
    sql: ${TABLE}.fijoxxxx ;;
  }
  dimension: polidxxx {
    type: number
    sql: ${TABLE}.polidxxx ;;
  }
  dimension: porcenxx {
    type: number
    sql: ${TABLE}.porcenxx ;;
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
  dimension: rtapolxx {
    type: string
    sql: ${TABLE}.rtapolxx ;;
  }
  dimension_group: valhasxx {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.valhasxx ;;
  }
  measure: count {
    type: count
  }
}
