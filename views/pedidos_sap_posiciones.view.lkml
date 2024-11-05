view: pedidos_sap_posiciones {
  sql_table_name: bd_ic_cliente.pedidos_sap_posiciones ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: almacen {
    type: string
    sql: ${TABLE}.almacen ;;
  }
  dimension: borrado {
    type: string
    sql: ${TABLE}.borrado ;;
  }
  dimension: cantidadoriginal {
    type: number
    sql: ${TABLE}.cantidadoriginal ;;
  }
  dimension: centro {
    type: string
    sql: ${TABLE}.centro ;;
  }
  dimension: contratoref {
    type: string
    sql: ${TABLE}.contratoref ;;
  }
  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.created_at ;;
  }
  dimension: descripcion {
    type: string
    sql: ${TABLE}.descripcion ;;
  }
  dimension: documento {
    type: string
    sql: ${TABLE}.documento ;;
  }
  dimension: entregafinal {
    type: string
    sql: ${TABLE}.entregafinal ;;
  }
  dimension_group: fechaentrega {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.fechaentrega ;;
  }
  dimension: grupo {
    type: string
    sql: ${TABLE}.grupo ;;
  }
  dimension: id_pedido {
    type: number
    sql: ${TABLE}.id_pedido ;;
  }
  dimension: imputacion {
    type: string
    sql: ${TABLE}.imputacion ;;
  }
  dimension: indimpto {
    type: string
    sql: ${TABLE}.indimpto ;;
  }
  dimension: material {
    type: string
    sql: ${TABLE}.material ;;
  }
  dimension: necesidad {
    type: string
    sql: ${TABLE}.necesidad ;;
  }
  dimension: nopiezafabricante {
    type: string
    sql: ${TABLE}.nopiezafabricante ;;
  }
  dimension: poscontratoref {
    type: string
    sql: ${TABLE}.poscontratoref ;;
  }
  dimension: posicion {
    type: string
    sql: ${TABLE}.posicion ;;
  }
  dimension: possolpedref {
    type: string
    sql: ${TABLE}.possolpedref ;;
  }
  dimension: precio {
    type: number
    sql: ${TABLE}.precio ;;
  }
  dimension: solicitante {
    type: string
    sql: ${TABLE}.solicitante ;;
  }
  dimension: solpedref {
    type: string
    sql: ${TABLE}.solpedref ;;
  }
  dimension: tipo {
    type: string
    sql: ${TABLE}.tipo ;;
  }
  dimension: tolerexc {
    type: string
    sql: ${TABLE}.tolerexc ;;
  }
  dimension: tolerincom {
    type: string
    sql: ${TABLE}.tolerincom ;;
  }
  dimension: unidad {
    type: string
    sql: ${TABLE}.unidad ;;
  }
  dimension_group: updated {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.updated_at ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
