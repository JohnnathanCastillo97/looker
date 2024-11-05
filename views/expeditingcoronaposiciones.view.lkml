view: expeditingcoronaposiciones {
  sql_table_name: bd_ic_cliente.Expeditingcoronaposiciones ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: aceptacion_prov {
    type: string
    sql: ${TABLE}.aceptacion_prov ;;
  }
  dimension_group: aedat {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.Aedat ;;
  }
  dimension: bsart {
    type: string
    sql: ${TABLE}.Bsart ;;
  }
  dimension_group: budat_mkpf {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.Budat_Mkpf ;;
  }
  dimension: bukrs {
    type: string
    sql: ${TABLE}.Bukrs ;;
  }
  dimension: description1 {
    type: string
    sql: ${TABLE}.Description1 ;;
  }
  dimension: ebeln {
    type: number
    sql: ${TABLE}.Ebeln ;;
  }
  dimension: ebelp {
    type: number
    sql: ${TABLE}.Ebelp ;;
  }
  dimension: ekgrp {
    type: string
    sql: ${TABLE}.Ekgrp ;;
  }
  dimension: ekorg {
    type: string
    sql: ${TABLE}.Ekorg ;;
  }
  dimension: entregada {
    type: number
    sql: ${TABLE}.entregada ;;
  }
  dimension: estado {
    type: number
    sql: ${TABLE}.Estado ;;
  }
  dimension: estado_posicion {
    type: number
    sql: ${TABLE}.Estado_Posicion ;;
  }
  dimension: fabricacion {
    type: string
    sql: ${TABLE}.fabricacion ;;
  }
  dimension_group: fecha_entrega {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_entrega ;;
  }
  dimension: lifnr {
    type: string
    sql: ${TABLE}.Lifnr ;;
  }
  dimension: loekz {
    type: string
    sql: ${TABLE}.Loekz ;;
  }
  dimension: matnr {
    type: string
    sql: ${TABLE}.Matnr ;;
  }
  dimension: meins {
    type: string
    sql: ${TABLE}.Meins ;;
  }
  dimension: menge {
    type: number
    sql: ${TABLE}.Menge ;;
  }
  dimension: netpr {
    type: string
    sql: ${TABLE}.Netpr ;;
  }
  dimension: nombre {
    type: string
    sql: ${TABLE}.nombre ;;
  }
  dimension: nombre_empresa {
    type: string
    sql: ${TABLE}.Nombre_empresa ;;
  }
  dimension: numero_posiciones {
    type: number
    sql: ${TABLE}.numero_posiciones ;;
  }
  dimension: res_comprador {
    type: string
    sql: ${TABLE}.res_comprador ;;
  }
  dimension: responsable_id {
    type: number
    sql: ${TABLE}.responsable_id ;;
  }
  dimension: seguimiento {
    type: string
    sql: ${TABLE}.Seguimiento ;;
  }
  dimension: txz01 {
    type: string
    sql: ${TABLE}.Txz01 ;;
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
