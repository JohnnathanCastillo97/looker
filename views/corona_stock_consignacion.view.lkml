view: corona_stock_consignacion {
  sql_table_name: bd_ic_cliente.corona_stock_consignacion ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: bprme {
    type: string
    sql: ${TABLE}.Bprme ;;
  }
  dimension: estado {
    type: number
    sql: ${TABLE}.Estado ;;
  }
  dimension: lgort {
    type: string
    sql: ${TABLE}.Lgort ;;
  }
  dimension: lifnr {
    type: string
    sql: ${TABLE}.Lifnr ;;
  }
  dimension: matnr {
    type: string
    sql: ${TABLE}.Matnr ;;
  }
  dimension: meins {
    type: string
    sql: ${TABLE}.Meins ;;
  }
  dimension: migradet {
    type: number
    sql: ${TABLE}.migradet ;;
  }
  dimension: mrko {
    type: number
    sql: ${TABLE}.Mrko ;;
  }
  dimension: netpr {
    type: string
    sql: ${TABLE}.Netpr ;;
  }
  dimension: peinh {
    type: string
    sql: ${TABLE}.Peinh ;;
  }
  dimension: slabs {
    type: number
    sql: ${TABLE}.Slabs ;;
  }
  dimension: waers {
    type: string
    sql: ${TABLE}.Waers ;;
  }
  dimension: werks {
    type: string
    sql: ${TABLE}.Werks ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
