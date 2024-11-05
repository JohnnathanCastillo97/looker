view: _0002186 {
  sql_table_name: bd_ic_cliente._0002186 ;;

  dimension: codsubxx {
    type: number
    sql: ${TABLE}.codsubxx ;;
  }
  dimension: cuentaxx {
    type: string
    sql: ${TABLE}.cuentaxx ;;
  }
  dimension: loteidxx {
    type: number
    sql: ${TABLE}.loteidxx ;;
  }
  dimension: precioxx {
    type: number
    sql: ${TABLE}.precioxx ;;
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
  dimension: usridxxx {
    type: string
    sql: ${TABLE}.usridxxx ;;
  }
  measure: count {
    type: count
  }
}
