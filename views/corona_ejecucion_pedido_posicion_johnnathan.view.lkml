view: corona_ejecucion_pedido_posicion_johnnathan {
  sql_table_name: bd_ic_cliente.Corona_ejecucion_pedido_posicion_johnnathan ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: btext {
    type: string
    sql: ${TABLE}.Btext ;;
  }
  dimension_group: budat_mkpf {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.Budat_Mkpf ;;
  }
  dimension: bwart {
    type: string
    sql: ${TABLE}.Bwart ;;
  }
  dimension: ebeln {
    type: string
    sql: ${TABLE}.Ebeln ;;
  }
  dimension: ebelp {
    type: string
    sql: ${TABLE}.Ebelp ;;
  }
  dimension: matnr {
    type: string
    sql: ${TABLE}.Matnr ;;
  }
  dimension: mblnr {
    type: string
    sql: ${TABLE}.Mblnr ;;
  }
  dimension: meins {
    type: string
    sql: ${TABLE}.Meins ;;
  }
  dimension: menge {
    type: number
    sql: ${TABLE}.Menge ;;
  }
  dimension: migrated {
    type: number
    sql: ${TABLE}.migrated ;;
  }
  dimension: mrko {
    type: number
    sql: ${TABLE}.Mrko ;;
  }
  dimension: txz01 {
    type: string
    sql: ${TABLE}.Txz01 ;;
  }
  dimension: wrbtr {
    type: number
    sql: ${TABLE}.Wrbtr ;;
  }
  dimension: zeile {
    type: string
    sql: ${TABLE}.Zeile ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
