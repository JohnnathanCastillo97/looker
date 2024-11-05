view: zmold_catalogos_items {
  sql_table_name: bd_ic_cliente.ZMOLD_catalogos_items ;;

  dimension: acceso_rapido {
    type: string
    sql: ${TABLE}.acceso_rapido ;;
  }
  dimension: apodo_item {
    type: string
    sql: ${TABLE}.apodo_item ;;
  }
  dimension: cod_posicion_sap {
    type: number
    sql: ${TABLE}.cod_posicion_sap ;;
  }
  dimension: color {
    type: string
    sql: ${TABLE}.color ;;
  }
  dimension: dias_entrega {
    type: number
    sql: ${TABLE}.dias_entrega ;;
  }
  dimension: disponible {
    type: string
    sql: ${TABLE}.disponible ;;
  }
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension_group: fecha_actualizacion {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_actualizacion ;;
  }
  dimension_group: fecha_creacion {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_creacion ;;
  }
  dimension: id_catalogo {
    type: number
    sql: ${TABLE}.id_catalogo ;;
  }
  dimension: id_item {
    type: number
    sql: ${TABLE}.id_item ;;
  }
  dimension: id_producto {
    type: number
    sql: ${TABLE}.id_producto ;;
  }
  dimension: imagenes_item {
    type: string
    sql: ${TABLE}.imagenes_item ;;
  }
  dimension: item_principal {
    type: string
    sql: ${TABLE}.item_principal ;;
  }
  dimension: items_asociados {
    type: number
    sql: ${TABLE}.items_asociados ;;
  }
  dimension: material {
    type: number
    sql: ${TABLE}.material ;;
  }
  dimension: numero_parte_item {
    type: number
    sql: ${TABLE}.numero_parte_item ;;
  }
  dimension: observacion_item {
    type: string
    sql: ${TABLE}.observacion_item ;;
  }
  dimension: usuario_actualizacion {
    type: number
    sql: ${TABLE}.usuario_actualizacion ;;
  }
  dimension: usuario_creacion {
    type: number
    sql: ${TABLE}.usuario_creacion ;;
  }
  dimension: valor_unitario_item {
    type: number
    sql: ${TABLE}.valor_unitario_item ;;
  }
  measure: count {
    type: count
  }
}
