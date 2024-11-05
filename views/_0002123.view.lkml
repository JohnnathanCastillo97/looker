view: _0002123 {
  sql_table_name: bd_ic_cliente._0002123 ;;

  dimension: calevaxx {
    type: string
    sql: ${TABLE}.calevaxx ;;
  }
  dimension: conidxxx {
    type: number
    sql: ${TABLE}.conidxxx ;;
  }
  dimension: estevaxx {
    type: string
    sql: ${TABLE}.estevaxx ;;
  }
  dimension: evaidxxx {
    type: number
    sql: ${TABLE}.evaidxxx ;;
  }
  dimension_group: fecevaxx {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.fecevaxx ;;
  }
  dimension: obsevaxx {
    type: string
    sql: ${TABLE}.obsevaxx ;;
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
  dimension: rtaevaxx {
    type: string
    sql: ${TABLE}.rtaevaxx ;;
  }
  measure: count {
    type: count
  }
}
