view: oferta_visitasobra {
  sql_table_name: bd_ic_cliente.oferta_visitasobra ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: acta {
    type: string
    sql: ${TABLE}.acta ;;
  }
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension: fecha {
    type: string
    sql: ${TABLE}.fecha ;;
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
  dimension: hora {
    type: string
    sql: ${TABLE}.hora ;;
  }
  dimension: lugar {
    type: string
    sql: ${TABLE}.lugar ;;
  }
  dimension: obligatorio {
    type: number
    sql: ${TABLE}.obligatorio ;;
  }
  dimension: observaciones {
    type: string
    sql: ${TABLE}.observaciones ;;
  }
  dimension: oferta_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.oferta_id ;;
  }
  dimension: responsable {
    type: string
    sql: ${TABLE}.responsable ;;
  }
  dimension: telefono {
    type: string
    sql: ${TABLE}.telefono ;;
  }
  dimension: tipo {
    type: string
    sql: ${TABLE}.tipo ;;
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
