view: oferta_documentos_oferentes {
  sql_table_name: bd_ic_cliente.oferta_documentos_oferentes ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: contenido {
    type: string
    sql: ${TABLE}.contenido ;;
  }
  dimension: descripcion {
    type: string
    sql: ${TABLE}.descripcion ;;
  }
  dimension: doc_id {
    type: string
    sql: ${TABLE}.doc_id ;;
  }
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension: estado_apro {
    type: string
    sql: ${TABLE}.estadoApro ;;
  }
  dimension: evaluable {
    type: string
    sql: ${TABLE}.evaluable ;;
  }
  dimension_group: fecha_actualizacion {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.fecha_actualizacion ;;
  }
  dimension_group: fecha_creacion {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_creacion ;;
  }
  dimension: obligatorio {
    type: number
    sql: ${TABLE}.obligatorio ;;
  }
  dimension: oferta_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.oferta_id ;;
  }
  dimension: old_id {
    type: number
    sql: ${TABLE}.old_id ;;
  }
  dimension: parametro_evaluacion {
    type: string
    sql: ${TABLE}.parametro_evaluacion ;;
  }
  dimension: seq_id {
    type: number
    sql: ${TABLE}.seq_id ;;
  }
  dimension: sobre {
    type: string
    sql: ${TABLE}.sobre ;;
  }
  dimension: tipo {
    type: string
    sql: ${TABLE}.tipo ;;
  }
  dimension: tipo_evaluacion {
    type: string
    sql: ${TABLE}.tipo_evaluacion ;;
  }
  dimension: titulo {
    type: string
    sql: ${TABLE}.titulo ;;
  }
  dimension: usuario_actualizacion {
    type: number
    sql: ${TABLE}.usuario_actualizacion ;;
  }
  measure: count {
    type: count
    drill_fields: [id, ofertas.id]
  }
}
