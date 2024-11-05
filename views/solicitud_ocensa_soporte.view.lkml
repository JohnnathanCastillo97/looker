view: solicitud_ocensa_soporte {
  sql_table_name: bd_ic_cliente.solicitud_ocensa_soporte ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: categoria {
    type: string
    sql: ${TABLE}.categoria ;;
  }
  dimension_group: created {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.created_at ;;
  }
  dimension: doc_difinitivo {
    type: string
    sql: ${TABLE}.doc_difinitivo ;;
  }
  dimension: doc_rev_leg {
    type: string
    sql: ${TABLE}.doc_rev_leg ;;
  }
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension: isdefinitivo {
    type: string
    sql: ${TABLE}.isdefinitivo ;;
  }
  dimension: nombre {
    type: string
    sql: ${TABLE}.nombre ;;
  }
  dimension: observaciones {
    type: string
    sql: ${TABLE}.observaciones ;;
  }
  dimension: rev_leg {
    type: number
    sql: ${TABLE}.rev_leg ;;
  }
  dimension: revision_aprobacion {
    type: string
    sql: ${TABLE}.revision_aprobacion ;;
  }
  dimension: ruta {
    type: string
    sql: ${TABLE}.ruta ;;
  }
  dimension: solicitud_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.solicitud_id ;;
  }
  dimension: tipo {
    type: string
    sql: ${TABLE}.tipo ;;
  }
  dimension_group: updated {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.updated_at ;;
  }
  dimension: usuario_creacion {
    type: number
    sql: ${TABLE}.usuario_creacion ;;
  }
  dimension: usuarios_actualizacion {
    type: number
    sql: ${TABLE}.usuarios_actualizacion ;;
  }
  measure: count {
    type: count
    drill_fields: [id, solicitud.id]
  }
}
