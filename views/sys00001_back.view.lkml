view: sys00001_back {
  sql_table_name: bd_ic_cliente.sys00001_back ;;

  dimension: areaxxxx {
    type: string
    sql: ${TABLE}.areaxxxx ;;
  }
  dimension: cargoxxx {
    type: string
    sql: ${TABLE}.cargoxxx ;;
  }
  dimension: ciuidxxx {
    type: string
    sql: ${TABLE}.ciuidxxx ;;
  }
  dimension: cod_empresa {
    type: number
    sql: ${TABLE}.cod_empresa ;;
  }
  dimension: codidxxx {
    type: string
    sql: ${TABLE}.codidxxx ;;
  }
  dimension: contacto_destacado {
    type: yesno
    sql: ${TABLE}.contacto_destacado ;;
  }
  dimension: contrasena {
    type: string
    sql: ${TABLE}.contrasena ;;
  }
  dimension: empadmxx {
    type: string
    sql: ${TABLE}.empadmxx ;;
  }
  dimension: empcodxx {
    type: string
    sql: ${TABLE}.empcodxx ;;
  }
  dimension: firmaxxx {
    type: string
    sql: ${TABLE}.firmaxxx ;;
  }
  dimension: formaxxx {
    type: string
    sql: ${TABLE}.formaxxx ;;
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
  dimension: rtaimgxx {
    type: string
    sql: ${TABLE}.rtaimgxx ;;
  }
  dimension: sedidxxx {
    type: string
    sql: ${TABLE}.sedidxxx ;;
  }
  dimension: teridxxx {
    type: string
    sql: ${TABLE}.teridxxx ;;
  }
  dimension_group: terminos {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.terminos ;;
  }
  dimension: tipperxx {
    type: string
    sql: ${TABLE}.tipperxx ;;
  }
  dimension: usrdirxx {
    type: string
    sql: ${TABLE}.usrdirxx ;;
  }
  dimension: usridxxx {
    type: number
    sql: ${TABLE}.usridxxx ;;
  }
  dimension: usrlogxx {
    type: string
    sql: ${TABLE}.usrlogxx ;;
  }
  dimension: usrmailx {
    type: string
    sql: ${TABLE}.usrmailx ;;
  }
  dimension: usrnomxx {
    type: string
    sql: ${TABLE}.usrnomxx ;;
  }
  dimension: usrpassx {
    type: string
    sql: ${TABLE}.usrpassx ;;
  }
  dimension: usrprexx {
    type: string
    sql: ${TABLE}.usrprexx ;;
  }
  dimension: usrtelxx {
    type: string
    sql: ${TABLE}.usrtelxx ;;
  }
  dimension: usrtipxx {
    type: string
    sql: ${TABLE}.usrtipxx ;;
  }
  dimension: valtycxx {
    type: string
    sql: ${TABLE}.valtycxx ;;
  }
  measure: count {
    type: count
  }
}
