view: _0002113 {
  sql_table_name: bd_ic_cliente._0002113 ;;

  dimension: actidxxx {
    type: string
    sql: ${TABLE}.actidxxx ;;
  }
  dimension: adjudica {
    type: string
    sql: ${TABLE}.adjudica ;;
  }
  dimension: cri1xxxx {
    type: string
    sql: ${TABLE}.cri1xxxx ;;
  }
  dimension: cri2xxxx {
    type: string
    sql: ${TABLE}.cri2xxxx ;;
  }
  dimension: estadocu {
    type: string
    sql: ${TABLE}.estadocu ;;
  }
  dimension: estrateg {
    type: string
    sql: ${TABLE}.estrateg ;;
  }
  dimension_group: fecestim {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.fecestim ;;
  }
  dimension_group: fecfinxx {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.fecfinxx ;;
  }
  dimension_group: fecinixx {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.fecinixx ;;
  }
  dimension: linidxxx {
    type: string
    sql: ${TABLE}.linidxxx ;;
  }
  dimension: monidxxx {
    type: string
    sql: ${TABLE}.monidxxx ;;
  }
  dimension: objetoxx {
    type: string
    sql: ${TABLE}.objetoxx ;;
  }
  dimension: ofeidxxx {
    type: string
    sql: ${TABLE}.ofeidxxx ;;
  }
  dimension: plaidxxx {
    type: string
    sql: ${TABLE}.plaidxxx ;;
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
  dimension: valorxxx {
    type: number
    sql: ${TABLE}.valorxxx ;;
  }
  measure: count {
    type: count
  }
}
