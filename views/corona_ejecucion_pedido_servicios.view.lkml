view: corona_ejecucion_pedido_servicios {
  sql_table_name: bd_ic_cliente.Corona_ejecucion_pedido_servicios ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension_group: budat_mkpf {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.Budat_mkpf ;;
  }
  dimension: ebeln {
    type: string
    sql: ${TABLE}.Ebeln ;;
  }
  dimension: ebelp {
    type: string
    sql: ${TABLE}.Ebelp ;;
  }
  dimension: introw {
    type: string
    sql: ${TABLE}.Introw ;;
  }
  dimension: ktext {
    type: string
    sql: ${TABLE}.Ktext ;;
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
    type: string
    sql: ${TABLE}.Menge ;;
  }
  dimension: migrated {
    type: number
    sql: ${TABLE}.migrated ;;
  }
  dimension: srvpos {
    type: string
    sql: ${TABLE}.Srvpos ;;
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
