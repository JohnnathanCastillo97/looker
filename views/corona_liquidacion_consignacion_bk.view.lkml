view: corona_liquidacion_consignacion_bk {
  sql_table_name: bd_ic_cliente.corona_liquidacion_consignacion_BK ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: bstme {
    type: string
    sql: ${TABLE}.Bstme ;;
  }
  dimension: bstmg {
    type: number
    sql: ${TABLE}.Bstmg ;;
  }
  dimension: budat {
    type: string
    sql: ${TABLE}.Budat ;;
  }
  dimension: bukrs {
    type: string
    sql: ${TABLE}.Bukrs ;;
  }
  dimension: bwaer {
    type: string
    sql: ${TABLE}.Bwaer ;;
  }
  dimension: estado {
    type: number
    sql: ${TABLE}.Estado ;;
  }
  dimension_group: fecha_sincroniza {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_sincroniza ;;
  }
  dimension: lifnr {
    type: string
    sql: ${TABLE}.Lifnr ;;
  }
  dimension: matnr {
    type: string
    sql: ${TABLE}.Matnr ;;
  }
  dimension: mblnr {
    type: string
    sql: ${TABLE}.Mblnr ;;
  }
  dimension: migrated {
    type: number
    sql: ${TABLE}.migrated ;;
  }
  dimension: mrko {
    type: number
    sql: ${TABLE}.Mrko ;;
  }
  dimension: werks {
    type: string
    sql: ${TABLE}.Werks ;;
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
