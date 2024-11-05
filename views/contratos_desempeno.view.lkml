view: contratos_desempeno {
  sql_table_name: bd_ic_cliente.contratos_desempeno ;;

  dimension: contratos_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.contratos_id ;;
  }
  dimension: criterio_desempeno {
    type: string
    sql: ${TABLE}.criterio_desempeno ;;
  }
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension_group: fecha_acttualizacion {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_acttualizacion ;;
  }
  dimension_group: fecha_registro {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_registro ;;
  }
  dimension: id_contratos_desempeno {
    type: number
    sql: ${TABLE}.id_contratos_desempeno ;;
  }
  dimension: observacion {
    type: string
    sql: ${TABLE}.observacion ;;
  }
  dimension: periodo {
    type: number
    sql: ${TABLE}.periodo ;;
  }
  dimension: puntaje_desempeno {
    type: number
    sql: ${TABLE}.puntaje_desempeno ;;
  }
  dimension: puntaje_obtenido_desempeno {
    type: number
    sql: ${TABLE}.puntaje_obtenido_desempeno ;;
  }
  dimension: q_desempeno {
    type: string
    sql: ${TABLE}.q_desempeno ;;
  }
  dimension: seq {
    type: number
    sql: ${TABLE}.seq ;;
  }
  dimension: usuarios_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.usuarios_id ;;
  }
  measure: count {
    type: count
    drill_fields: [contratos.id, usuarios.username, usuarios.id]
  }
}
