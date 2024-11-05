view: _0002185 {
  sql_table_name: bd_ic_cliente._0002185 ;;

  dimension: contactx {
    type: string
    sql: ${TABLE}.contactx ;;
  }
  dimension: facmulxx {
    type: string
    sql: ${TABLE}.facmulxx ;;
  }
  dimension: mailxxxx {
    type: string
    sql: ${TABLE}.mailxxxx ;;
  }
  dimension: obserxxx {
    type: string
    sql: ${TABLE}.obserxxx ;;
  }
  dimension: origenxx {
    type: string
    sql: ${TABLE}.origenxx ;;
  }
  dimension: porfacxx {
    type: number
    sql: ${TABLE}.porfacxx ;;
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
  dimension: seqidxxx {
    type: number
    sql: ${TABLE}.seqidxxx ;;
  }
  dimension: subidxxx {
    type: number
    sql: ${TABLE}.subidxxx ;;
  }
  dimension: usuariox {
    type: string
    sql: ${TABLE}.usuariox ;;
  }
  measure: count {
    type: count
  }
}
