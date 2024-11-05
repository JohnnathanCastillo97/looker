view: _0003000 {
  sql_table_name: bd_ic_cliente._0003000 ;;

  dimension: admidxxxbk {
    type: number
    sql: ${TABLE}.admidxxxbk ;;
  }
  dimension: cupfacxxbk {
    type: number
    sql: ${TABLE}.cupfacxxbk ;;
  }
  dimension: cupfacxxnew {
    type: number
    sql: ${TABLE}.cupfacxxnew ;;
  }
  dimension: cupordxxbk {
    type: number
    sql: ${TABLE}.cupordxxbk ;;
  }
  dimension: cupordxxnew {
    type: number
    sql: ${TABLE}.cupordxxnew ;;
  }
  dimension: porcenxxbk {
    type: number
    sql: ${TABLE}.porcenxxbk ;;
  }
  dimension: porcenxxnew {
    type: number
    sql: ${TABLE}.porcenxxnew ;;
  }
  dimension: regestxxbk {
    type: string
    sql: ${TABLE}.regestxxbk ;;
  }
  dimension_group: regfecxxbk {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.regfecxxbk ;;
  }
  dimension_group: reghorxxbk {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.reghorxxbk ;;
  }
  dimension_group: regmfecxbk {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.regmfecxbk ;;
  }
  dimension_group: regmhorxbk {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.regmhorxbk ;;
  }
  dimension: regmusrxbk {
    type: string
    sql: ${TABLE}.regmusrxbk ;;
  }
  dimension: regusrxxbk {
    type: string
    sql: ${TABLE}.regusrxxbk ;;
  }
  measure: count {
    type: count
  }
}
