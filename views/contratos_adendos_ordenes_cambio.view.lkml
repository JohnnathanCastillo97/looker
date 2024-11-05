view: contratos_adendos_ordenes_cambio {
  sql_table_name: bd_ic_cliente.contratos_adendos_ordenes_cambio ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: cantidades_aumentar {
    type: number
    sql: ${TABLE}.cantidades_aumentar ;;
  }
  dimension: cod_adendo {
    type: number
    sql: ${TABLE}.cod_adendo ;;
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
  dimension_group: fecha_registro {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_registro ;;
  }
  dimension: item_aumentar {
    type: string
    sql: ${TABLE}.item_aumentar ;;
  }
  dimension: nuevo_valor_sociedad {
    type: number
    sql: ${TABLE}.nuevo_valor_sociedad ;;
  }
  dimension: numero {
    type: number
    sql: ${TABLE}.numero ;;
  }
  dimension: observaciones {
    type: string
    sql: ${TABLE}.observaciones ;;
  }
  dimension: usuario_actualizacion {
    type: number
    sql: ${TABLE}.usuario_actualizacion ;;
  }
  dimension: usuario_registro {
    type: number
    sql: ${TABLE}.usuario_registro ;;
  }
  dimension: valor_aumentar_sociedad_sin_iva {
    type: number
    sql: ${TABLE}.valor_aumentar_sociedad_sin_iva ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
