view: paa_linea_comprador_abogado {
  sql_table_name: bd_ic_cliente.paa_linea_comprador_abogado ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: abogado_act {
    type: number
    sql: ${TABLE}.abogado_act ;;
  }
  dimension: abogado_ant {
    type: number
    sql: ${TABLE}.abogado_ant ;;
  }
  dimension: comprador_act {
    type: number
    sql: ${TABLE}.comprador_act ;;
  }
  dimension: comprador_ant {
    type: number
    sql: ${TABLE}.comprador_ant ;;
  }
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
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
  dimension: id_modulo {
    type: number
    sql: ${TABLE}.id_modulo ;;
  }
  dimension: id_paa_linea {
    type: number
    sql: ${TABLE}.id_paa_linea ;;
  }
  dimension: id_proceso {
    type: number
    sql: ${TABLE}.id_proceso ;;
  }
  dimension: seq_id {
    type: string
    sql: ${TABLE}.seq_id ;;
  }
  dimension: soporte {
    type: string
    sql: ${TABLE}.soporte ;;
  }
  dimension: usuario_creacion {
    type: number
    sql: ${TABLE}.usuario_creacion ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
