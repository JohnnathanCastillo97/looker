view: _0002121 {
  sql_table_name: bd_ic_cliente._0002121 ;;

  dimension: conidxxx {
    type: number
    sql: ${TABLE}.conidxxx ;;
  }
  dimension: defdiaxx {
    type: number
    sql: ${TABLE}.defdiaxx ;;
  }
  dimension_group: deffecxx {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.deffecxx ;;
  }
  dimension_group: defffinx {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.defffinx ;;
  }
  dimension: defrtaxx {
    type: string
    sql: ${TABLE}.defrtaxx ;;
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
  dimension: susidxxx {
    type: number
    sql: ${TABLE}.susidxxx ;;
  }
  measure: count {
    type: count
  }
}
