view: pedidos_sap {
  sql_table_name: bd_ic_cliente.pedidos_sap ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: actindustria {
    type: string
    sql: ${TABLE}.actindustria ;;
  }
  dimension: admcontrato {
    type: string
    sql: ${TABLE}.admcontrato ;;
  }
  dimension: admondel1 {
    type: string
    sql: ${TABLE}.admondel1 ;;
  }
  dimension: admondel2 {
    type: string
    sql: ${TABLE}.admondel2 ;;
  }
  dimension: anticipo {
    type: string
    sql: ${TABLE}.anticipo ;;
  }
  dimension: borrado {
    type: string
    sql: ${TABLE}.borrado ;;
  }
  dimension: clase {
    type: string
    sql: ${TABLE}.clase ;;
  }
  dimension: condpago {
    type: string
    sql: ${TABLE}.condpago ;;
  }
  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.created_at ;;
  }
  dimension: documento {
    type: string
    sql: ${TABLE}.documento ;;
  }
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension_group: feactain {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.feactain ;;
  }
  dimension_group: fecha {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.fecha ;;
  }
  dimension_group: fechamod {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.fechamod ;;
  }
  dimension_group: fefincontrato {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.fefincontrato ;;
  }
  dimension_group: fefincontratol {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.fefincontratol ;;
  }
  dimension_group: finvalidez {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.finvalidez ;;
  }
  dimension_group: garantia {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.garantia ;;
  }
  dimension: gpocompra {
    type: string
    sql: ${TABLE}.gpocompra ;;
  }
  dimension: incoterm1 {
    type: string
    sql: ${TABLE}.incoterm1 ;;
  }
  dimension: incoterm2 {
    type: string
    sql: ${TABLE}.incoterm2 ;;
  }
  dimension: increipc {
    type: string
    sql: ${TABLE}.increipc ;;
  }
  dimension_group: inivalidez {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.inivalidez ;;
  }
  dimension: licitacion {
    type: string
    sql: ${TABLE}.licitacion ;;
  }
  dimension: manoobra {
    type: string
    sql: ${TABLE}.manoobra ;;
  }
  dimension: moneda {
    type: string
    sql: ${TABLE}.moneda ;;
  }
  dimension: nuestraref {
    type: string
    sql: ${TABLE}.nuestraref ;;
  }
  dimension: obcivil {
    type: string
    sql: ${TABLE}.obcivil ;;
  }
  dimension: obclcontrato {
    type: string
    sql: ${TABLE}.obclcontrato ;;
  }
  dimension: orgcompras {
    type: string
    sql: ${TABLE}.orgcompras ;;
  }
  dimension: pendiente_actualizar {
    type: string
    sql: ${TABLE}.pendiente_actualizar ;;
  }
  dimension: plejecucion {
    type: string
    sql: ${TABLE}.plejecucion ;;
  }
  dimension: plliquidacion {
    type: string
    sql: ${TABLE}.plliquidacion ;;
  }
  dimension: prorroga {
    type: string
    sql: ${TABLE}.prorroga ;;
  }
  dimension: proveedor {
    type: string
    sql: ${TABLE}.proveedor ;;
  }
  dimension: referencia {
    type: string
    sql: ${TABLE}.referencia ;;
  }
  dimension: sociedad {
    type: string
    sql: ${TABLE}.sociedad ;;
  }
  dimension: tdline {
    type: string
    sql: ${TABLE}.tdline ;;
  }
  dimension: tiempoplejec {
    type: string
    sql: ${TABLE}.tiempoplejec ;;
  }
  dimension: tiempoplliq {
    type: string
    sql: ${TABLE}.tiempoplliq ;;
  }
  dimension: tipo {
    type: string
    sql: ${TABLE}.tipo ;;
  }
  dimension_group: updated {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.updated_at ;;
  }
  dimension: valorprevisto {
    type: number
    sql: ${TABLE}.valorprevisto ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
