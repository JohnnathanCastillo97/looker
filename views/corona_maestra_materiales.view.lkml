view: corona_maestra_materiales {
  sql_table_name: bd_ic_cliente.corona_maestra_materiales ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: brand_id {
    type: string
    sql: ${TABLE}.Brand_id ;;
  }
  dimension_group: date_insert {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.date_insert ;;
  }
  dimension: estado {
    type: number
    sql: ${TABLE}.Estado ;;
  }
  dimension: lvorm {
    type: string
    sql: ${TABLE}.Lvorm ;;
  }
  dimension: maktx {
    type: string
    sql: ${TABLE}.Maktx ;;
  }
  dimension: matkl {
    type: string
    sql: ${TABLE}.Matkl ;;
  }
  dimension: matnr {
    type: string
    sql: ${TABLE}.Matnr ;;
  }
  dimension: meins {
    type: string
    sql: ${TABLE}.Meins ;;
  }
  dimension: mstae {
    type: string
    sql: ${TABLE}.Mstae ;;
  }
  dimension: mtart {
    type: string
    sql: ${TABLE}.Mtart ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
