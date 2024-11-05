view: subasta {
  sql_table_name: bd_ic_cliente.subasta ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: conclusion_evaluacion {
    type: string
    sql: ${TABLE}.conclusion_evaluacion ;;
  }
  dimension: documento_evaluacion {
    type: string
    sql: ${TABLE}.documento_evaluacion ;;
  }
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension_group: fecha_fin {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.fecha_fin ;;
  }
  dimension_group: fecha_inicio {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.fecha_inicio ;;
  }
  dimension_group: fecha_modifica {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_modifica ;;
  }
  dimension_group: fecha_publicacion {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.fecha_publicacion ;;
  }
  dimension_group: fecha_registro {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_registro ;;
  }
  dimension_group: hora_fin {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.hora_fin ;;
  }
  dimension_group: hora_inicio {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.hora_inicio ;;
  }
  dimension_group: hora_publicacion {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.hora_publicacion ;;
  }
  dimension: id_actividad {
    type: number
    sql: ${TABLE}.id_actividad ;;
  }
  dimension: id_cliente {
    type: number
    sql: ${TABLE}.id_cliente ;;
  }
  dimension: id_oferta {
    type: string
    sql: ${TABLE}.id_oferta ;;
  }
  dimension: id_tipo_subasta {
    type: string
    sql: ${TABLE}.id_tipo_subasta ;;
  }
  dimension: maestra1 {
    type: string
    sql: ${TABLE}.maestra1 ;;
  }
  dimension: maestra2 {
    type: string
    sql: ${TABLE}.maestra2 ;;
  }
  dimension: presupuesto {
    type: number
    sql: ${TABLE}.presupuesto ;;
  }
  dimension: seq_id {
    type: number
    sql: ${TABLE}.seq_id ;;
  }
  dimension: subasta_descripcion {
    type: string
    sql: ${TABLE}.subasta_descripcion ;;
  }
  dimension: subasta_nombre {
    type: string
    sql: ${TABLE}.subasta_nombre ;;
  }
  dimension: tiempo_proroga {
    type: number
    sql: ${TABLE}.tiempo_proroga ;;
  }
  dimension: tipo_moneda {
    type: string
    sql: ${TABLE}.tipo_moneda ;;
  }
  dimension: tipo_sobre {
    type: number
    sql: ${TABLE}.tipo_sobre ;;
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
    drill_fields: [id, subasta_precios_iniciales.count]
  }
}
