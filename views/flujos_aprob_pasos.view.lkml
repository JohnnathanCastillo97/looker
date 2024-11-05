view: flujos_aprob_pasos {
  sql_table_name: bd_ic_cliente.flujos_aprob_pasos ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension_group: fecha_creacion {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_creacion ;;
  }
  dimension: flujos_aprobacion_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.flujos_aprobacion_id ;;
  }
  dimension: funcion {
    type: string
    sql: ${TABLE}.funcion ;;
  }
  dimension: nivel {
    type: number
    sql: ${TABLE}.nivel ;;
  }
  dimension: obligatorio {
    type: string
    sql: ${TABLE}.obligatorio ;;
  }
  dimension: perfil_aprobador {
    type: string
    sql: ${TABLE}.perfil_aprobador ;;
  }
  dimension: requisito {
    type: string
    sql: ${TABLE}.requisito ;;
  }
  dimension: tipo {
    type: string
    sql: ${TABLE}.tipo ;;
  }
  dimension: tipo_requisito {
    type: string
    sql: ${TABLE}.tipo_requisito ;;
  }
  dimension: titulo {
    type: string
    sql: ${TABLE}.titulo ;;
  }
  dimension: titulo_requisito {
    type: string
    sql: ${TABLE}.titulo_requisito ;;
  }
  measure: count {
    type: count
    drill_fields: [id, flujos_aprobacion.id]
  }
}
