view: maestras {
  sql_table_name: bd_ic_cliente.maestras ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: cliente_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.cliente_id ;;
  }
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
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
  dimension: items {
    type: string
    sql: ${TABLE}.items ;;
  }
  dimension: limite_seleccionable {
    type: number
    sql: ${TABLE}.limite_seleccionable ;;
  }
  dimension: nombre {
    type: string
    sql: ${TABLE}.nombre ;;
  }
  dimension: seleccion_multiple {
    type: string
    sql: ${TABLE}.seleccion_multiple ;;
  }
  dimension: usuario_actualizacion {
    type: number
    sql: ${TABLE}.usuario_actualizacion ;;
  }
  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
	id,
	clientes.id,
	maestras_criterios.count,
	maestras_criteriosold.count,
	solicitud_ecopetrol_departamentos_vs_maestra.count,
	solicitud_ecopetrol_maestra_vs_gestores_backup.count
	]
  }

}
