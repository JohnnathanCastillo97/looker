view: _0002183 {
  sql_table_name: bd_ic_cliente._0002183 ;;

  dimension: loteidxx {
    type: number
    sql: ${TABLE}.loteidxx ;;
  }
  dimension: objcanxx {
    type: number
    sql: ${TABLE}.objcanxx ;;
  }
  dimension: objetoxx {
    type: string
    sql: ${TABLE}.objetoxx ;;
  }
  dimension: pordecxx {
    type: yesno
    sql: ${TABLE}.pordecxx ;;
  }
  dimension: prepisox {
    type: number
    sql: ${TABLE}.prepisox ;;
  }
  dimension: pretechx {
    type: number
    sql: ${TABLE}.pretechx ;;
  }
  dimension: regdecxx {
    type: string
    sql: ${TABLE}.regdecxx ;;
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
  dimension: unimedxx {
    type: string
    sql: ${TABLE}.unimedxx ;;
  }
  measure: count {
    type: count
  }
}
