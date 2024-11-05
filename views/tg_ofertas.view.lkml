view: tg_ofertas {
  sql_table_name: bd_ic_cliente.tg_ofertas ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: accion {
    type: string
    sql: ${TABLE}.accion ;;
  }
  dimension: actividad {
    type: string
    sql: ${TABLE}.actividad ;;
  }
  dimension: apertura_capitulos {
    type: number
    sql: ${TABLE}.apertura_capitulos ;;
  }
  dimension: autoproroga {
    type: yesno
    sql: ${TABLE}.autoproroga ;;
  }
  dimension: carta_adjudicacion {
    type: string
    sql: ${TABLE}.carta_adjudicacion ;;
  }
  dimension: cods_delegacion {
    type: string
    sql: ${TABLE}.cods_delegacion ;;
  }
  dimension: descripcion {
    type: string
    sql: ${TABLE}.descripcion ;;
  }
  dimension: duenio_oferta {
    type: string
    sql: ${TABLE}.duenio_oferta ;;
  }
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension: estado_notificacion {
    type: string
    sql: ${TABLE}.estado_notificacion ;;
  }
  dimension: evaluacion_financiera {
    type: string
    sql: ${TABLE}.evaluacion_financiera ;;
  }
  dimension_group: fecha_actualizacion {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_actualizacion ;;
  }
  dimension_group: fecha_aprobacion {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_aprobacion ;;
  }
  dimension_group: fecha_autorizacion_ajudicacion {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_autorizacion_ajudicacion ;;
  }
  dimension: fecha_cierre {
    type: string
    sql: ${TABLE}.fecha_cierre ;;
  }
  dimension_group: fecha_corte_eeff {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.fecha_corte_eeff ;;
  }
  dimension_group: fecha_creacion {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_creacion ;;
  }
  dimension_group: fecha_fin_delegacion {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_fin_delegacion ;;
  }
  dimension: fecha_inicio {
    type: string
    sql: ${TABLE}.fecha_inicio ;;
  }
  dimension_group: fecha_inicio_delegacion {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_inicio_delegacion ;;
  }
  dimension_group: fecha_limite_hora {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_limite_hora ;;
  }
  dimension: fecha_limite_msg {
    type: number
    sql: ${TABLE}.fecha_limite_msg ;;
  }
  dimension_group: fecha_limite_msg_fecha {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.fecha_limite_msg_fecha ;;
  }
  dimension: fecha_limite_msg_observacion {
    type: string
    sql: ${TABLE}.fecha_limite_msg_observacion ;;
  }
  dimension: fecha_limite_restrictivo {
    type: number
    sql: ${TABLE}.fecha_limite_restrictivo ;;
  }
  dimension_group: fecha_modificacion {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_modificacion ;;
  }
  dimension_group: hora_cierre {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.hora_cierre ;;
  }
  dimension_group: hora_inicio {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.hora_inicio ;;
  }
  dimension: id_aoc {
    type: number
    sql: ${TABLE}.id_aoc ;;
  }
  dimension: id_area {
    type: number
    sql: ${TABLE}.id_area ;;
  }
  dimension: id_cliente {
    type: number
    sql: ${TABLE}.id_cliente ;;
  }
  dimension: id_requisicion {
    type: number
    sql: ${TABLE}.id_requisicion ;;
  }
  dimension: maestra1 {
    type: string
    sql: ${TABLE}.maestra1 ;;
  }
  dimension: maestra2 {
    type: string
    sql: ${TABLE}.maestra2 ;;
  }
  dimension: modalidad_seleccion {
    type: string
    sql: ${TABLE}.modalidad_seleccion ;;
  }
  dimension: moneda {
    type: string
    sql: ${TABLE}.moneda ;;
  }
  dimension: objeto {
    type: string
    sql: ${TABLE}.objeto ;;
  }
  dimension: old_id {
    type: number
    sql: ${TABLE}.old_id ;;
  }
  dimension: presupuesto {
    type: number
    sql: ${TABLE}.presupuesto ;;
  }
  dimension: regional {
    type: number
    sql: ${TABLE}.regional ;;
  }
  dimension: require_flujo {
    type: number
    sql: ${TABLE}.require_flujo ;;
  }
  dimension: ronda {
    type: number
    sql: ${TABLE}.ronda ;;
  }
  dimension: seq_id {
    type: string
    sql: ${TABLE}.seq_id ;;
  }
  dimension: solpeds_relacionadas {
    type: string
    sql: ${TABLE}.solpeds_relacionadas ;;
  }
  dimension: soportes_existencia {
    type: string
    sql: ${TABLE}.soportes_existencia ;;
  }
  dimension: tipo {
    type: string
    sql: ${TABLE}.tipo ;;
  }
  dimension: usuario_actualizacion {
    type: number
    sql: ${TABLE}.usuario_actualizacion ;;
  }
  dimension: usuario_aprobacion {
    type: number
    sql: ${TABLE}.usuario_aprobacion ;;
  }
  dimension: usuario_creacion {
    type: number
    sql: ${TABLE}.usuario_creacion ;;
  }
  dimension: usuarios_delegacion {
    type: string
    sql: ${TABLE}.usuarios_delegacion ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
