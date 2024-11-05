view: expediting_corona_bk {
  sql_table_name: bd_ic_cliente.expediting_corona_BK ;;
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
  dimension: clase {
    type: string
    sql: ${TABLE}.clase ;;
  }
  dimension: compania {
    type: string
    sql: ${TABLE}.compania ;;
  }
  dimension: comprador_id {
    type: number
    sql: ${TABLE}.comprador_id ;;
  }
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension: fabricacion {
    type: string
    sql: ${TABLE}.fabricacion ;;
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
  dimension: id_cliente {
    type: number
    sql: ${TABLE}.id_cliente ;;
  }
  dimension: moneda {
    type: string
    sql: ${TABLE}.moneda ;;
  }
  dimension: pedido_vmi {
    type: string
    sql: ${TABLE}.pedido_vmi ;;
  }
  dimension: proveedor_id {
    type: string
    sql: ${TABLE}.proveedor_id ;;
  }
  dimension: res_comprador {
    type: string
    sql: ${TABLE}.res_comprador ;;
  }
  dimension: responsable_id {
    type: number
    sql: ${TABLE}.responsable_id ;;
  }
  dimension: seq_id {
    type: string
    sql: ${TABLE}.seq_id ;;
  }
  dimension: tipo {
    type: string
    sql: ${TABLE}.tipo ;;
  }
  dimension: usuario_actualizacion {
    type: number
    sql: ${TABLE}.usuario_actualizacion ;;
  }
  dimension: usuario_creacion {
    type: number
    sql: ${TABLE}.usuario_creacion ;;
  }
  dimension: usuario_proyecto_id {
    type: number
    sql: ${TABLE}.usuario_proyecto_id ;;
  }
  dimension: valor {
    type: number
    sql: ${TABLE}.valor ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
