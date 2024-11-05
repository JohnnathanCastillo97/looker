view: subasta_lote_item {
  sql_table_name: bd_ic_cliente.subasta_lote_item ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: cantidad {
    type: number
    sql: ${TABLE}.cantidad ;;
  }
  dimension: codigo_lote {
    type: string
    sql: ${TABLE}.codigo_lote ;;
  }
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension_group: fecha_modifica {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_modifica ;;
  }
  dimension_group: fecha_registro {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_registro ;;
  }
  dimension: id_lote {
    type: number
    sql: ${TABLE}.id_lote ;;
  }
  dimension: id_subasta {
    type: number
    sql: ${TABLE}.id_subasta ;;
  }
  dimension: item_lote {
    type: number
    sql: ${TABLE}.item_lote ;;
  }
  dimension: objeto {
    type: string
    sql: ${TABLE}.objeto ;;
  }
  dimension: porcentaje_decremento {
    type: number
    sql: ${TABLE}.porcentaje_decremento ;;
  }
  dimension: precio_piso {
    type: number
    sql: ${TABLE}.precio_piso ;;
  }
  dimension: precio_techo {
    type: number
    sql: ${TABLE}.precio_techo ;;
  }
  dimension: regla_decremento {
    type: string
    sql: ${TABLE}.regla_decremento ;;
  }
  dimension: unidad_medida {
    type: number
    sql: ${TABLE}.unidad_medida ;;
  }
  dimension: usuario_modifica {
    type: number
    sql: ${TABLE}.usuario_modifica ;;
  }
  dimension: usuario_registro {
    type: number
    sql: ${TABLE}.usuario_registro ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
