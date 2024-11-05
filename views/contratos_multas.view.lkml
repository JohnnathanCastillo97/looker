view: contratos_multas {
  sql_table_name: bd_ic_cliente.contratos_multas ;;

  dimension: contratos_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.contratos_id ;;
  }
  dimension: controversias {
    type: string
    sql: ${TABLE}.controversias ;;
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
  dimension: id_contrato_multas {
    type: number
    sql: ${TABLE}.id_contrato_multas ;;
  }
  dimension: moneda_multa {
    type: string
    sql: ${TABLE}.moneda_multa ;;
  }
  dimension: motivo_multa {
    type: number
    sql: ${TABLE}.motivo_multa ;;
  }
  dimension: multas {
    type: string
    sql: ${TABLE}.multas ;;
  }
  dimension: observaciones_multas {
    type: string
    sql: ${TABLE}.observaciones_multas ;;
  }
  dimension: usuarios_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.usuarios_id ;;
  }
  dimension: valor_multa {
    type: number
    sql: ${TABLE}.valor_multa ;;
  }
  measure: count {
    type: count
    drill_fields: [usuarios.username, usuarios.id, contratos.id]
  }
}
