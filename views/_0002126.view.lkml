view: _0002126 {
  sql_table_name: bd_ic_cliente._0002126 ;;

  dimension: cutxmilx {
    type: number
    sql: ${TABLE}.cutxmilx ;;
  }
  dimension: diaemixx {
    type: string
    sql: ${TABLE}.diaemixx ;;
  }
  dimension: diapagxx {
    type: string
    sql: ${TABLE}.diapagxx ;;
  }
  dimension_group: fecdesxx {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.fecdesxx ;;
  }
  dimension_group: fecfacxx {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.fecfacxx ;;
  }
  dimension_group: fecpagxx {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.fecpagxx ;;
  }
  dimension: monedaxx {
    type: string
    sql: ${TABLE}.monedaxx ;;
  }
  dimension: nitclixx {
    type: string
    sql: ${TABLE}.nitclixx ;;
  }
  dimension: numordxx {
    type: string
    sql: ${TABLE}.numordxx ;;
  }
  dimension: obsordxx {
    type: string
    sql: ${TABLE}.obsordxx ;;
  }
  dimension: ordidxxx {
    type: number
    sql: ${TABLE}.ordidxxx ;;
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
  dimension: retfuexx {
    type: number
    sql: ${TABLE}.retfuexx ;;
  }
  dimension: retivaxx {
    type: number
    sql: ${TABLE}.retivaxx ;;
  }
  dimension: rtagenxx {
    type: string
    sql: ${TABLE}.rtagenxx ;;
  }
  dimension: rtasopxx {
    type: string
    sql: ${TABLE}.rtasopxx ;;
  }
  dimension: seqclixx {
    type: number
    sql: ${TABLE}.seqclixx ;;
  }
  dimension: tasaxxxx {
    type: number
    sql: ${TABLE}.tasaxxxx ;;
  }
  dimension: trmordxx {
    type: number
    sql: ${TABLE}.trmordxx ;;
  }
  dimension: usridxxx {
    type: string
    sql: ${TABLE}.usridxxx ;;
  }
  dimension: valbruxx {
    type: number
    sql: ${TABLE}.valbruxx ;;
  }
  dimension: valordxx {
    type: number
    sql: ${TABLE}.valordxx ;;
  }
  dimension: valtotxx {
    type: number
    sql: ${TABLE}.valtotxx ;;
  }
  dimension: valtranx {
    type: number
    sql: ${TABLE}.valtranx ;;
  }
  measure: count {
    type: count
  }
}
