view: oferta_asistencia_apertura_sobre_petroperu {
  sql_table_name: bd_ic_cliente.oferta_asistencia_apertura_sobre_petroperu ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: cargo_titulo {
    type: string
    sql: ${TABLE}.cargo_titulo ;;
  }
  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.created_at ;;
  }
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension: id_oferta {
    type: number
    sql: ${TABLE}.id_oferta ;;
  }
  dimension: id_usuario {
    type: number
    sql: ${TABLE}.id_usuario ;;
  }
  dimension: numero_documento {
    type: string
    sql: ${TABLE}.numero_documento ;;
  }
  dimension: sobre {
    type: string
    sql: ${TABLE}.sobre ;;
  }
  dimension: tipo_documento {
    type: string
    sql: ${TABLE}.tipo_documento ;;
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
