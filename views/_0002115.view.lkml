view: _0002115 {
  sql_table_name: bd_ic_cliente._0002115 ;;

  dimension: actidxxx {
    type: number
    sql: ${TABLE}.actidxxx ;;
  }
  dimension: activixx {
    type: string
    sql: ${TABLE}.activixx ;;
  }
  dimension: conidxxx {
    type: number
    sql: ${TABLE}.conidxxx ;;
  }
  dimension: cride1xx {
    type: string
    sql: ${TABLE}.cride1xx ;;
  }
  dimension: cride2xx {
    type: string
    sql: ${TABLE}.cride2xx ;;
  }
  dimension: estadoxx {
    type: string
    sql: ${TABLE}.estadoxx ;;
  }
  dimension_group: fecfinxx {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.fecfinxx ;;
  }
  dimension_group: fecfirxx {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.fecfirxx ;;
  }
  dimension_group: feciybxx {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.feciybxx ;;
  }
  dimension_group: fecliqxx {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.fecliqxx ;;
  }
  dimension: linidxxx {
    type: number
    sql: ${TABLE}.linidxxx ;;
  }
  dimension: lnplanxx {
    type: string
    sql: ${TABLE}.lnplanxx ;;
  }
  dimension: monedaxx {
    type: string
    sql: ${TABLE}.monedaxx ;;
  }
  dimension: ncontxxx {
    type: string
    sql: ${TABLE}.ncontxxx ;;
  }
  dimension: nomproxx {
    type: string
    sql: ${TABLE}.nomproxx ;;
  }
  dimension: objetoxx {
    type: string
    sql: ${TABLE}.objetoxx ;;
  }
  dimension: obsliqxx {
    type: string
    sql: ${TABLE}.obsliqxx ;;
  }
  dimension: obspolxx {
    type: string
    sql: ${TABLE}.obspolxx ;;
  }
  dimension: ofeidxxx {
    type: string
    sql: ${TABLE}.ofeidxxx ;;
  }
  dimension: porivaxx {
    type: number
    sql: ${TABLE}.porivaxx ;;
  }
  dimension: providxx {
    type: number
    sql: ${TABLE}.providxx ;;
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
  dimension: rtaainix {
    type: string
    sql: ${TABLE}.rtaainix ;;
  }
  dimension: rtaconxx {
    type: string
    sql: ${TABLE}.rtaconxx ;;
  }
  dimension: rtaliqxx {
    type: string
    sql: ${TABLE}.rtaliqxx ;;
  }
  dimension: valfinxx {
    type: number
    sql: ${TABLE}.valfinxx ;;
  }
  dimension: valorxxx {
    type: number
    sql: ${TABLE}.valorxxx ;;
  }
  dimension: valsivax {
    type: number
    sql: ${TABLE}.valsivax ;;
  }
  dimension: vigenxxx {
    type: number
    sql: ${TABLE}.vigenxxx ;;
  }
  measure: count {
    type: count
  }
}
