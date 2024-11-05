view: _0002180 {
  sql_table_name: bd_ic_cliente._0002180 ;;

  dimension: actidxxx {
    type: number
    sql: ${TABLE}.actidxxx ;;
  }
  dimension: crit1xxx {
    type: string
    sql: ${TABLE}.crit1xxx ;;
  }
  dimension: crit2xxx {
    type: string
    sql: ${TABLE}.crit2xxx ;;
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
  dimension_group: fecpubxx {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.fecpubxx ;;
  }
  dimension_group: horfinxx {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.horfinxx ;;
  }
  dimension_group: horinixx {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.horinixx ;;
  }
  dimension_group: horpubxx {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.horpubxx ;;
  }
  dimension: monprexx {
    type: string
    sql: ${TABLE}.monprexx ;;
  }
  dimension: numero_subasta {
    type: number
    sql: ${TABLE}.numero_subasta ;;
  }
  dimension: presuxxx {
    type: number
    sql: ${TABLE}.presuxxx ;;
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
  dimension: subdesxx {
    type: string
    sql: ${TABLE}.subdesxx ;;
  }
  dimension: subidxxx {
    type: number
    sql: ${TABLE}.subidxxx ;;
  }
  dimension: subnomxx {
    type: string
    sql: ${TABLE}.subnomxx ;;
  }
  dimension: tipo_subasta {
    type: yesno
    sql: ${TABLE}.tipo_subasta ;;
  }
  measure: count {
    type: count
  }
}
