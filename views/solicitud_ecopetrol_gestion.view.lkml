view: solicitud_ecopetrol_gestion {
  sql_table_name: bd_ic_cliente.solicitud_ecopetrol_gestion ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: categoria_id {
    type: number
    sql: ${TABLE}.categoria_id ;;
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
  dimension: estado_proveedor_siproe {
    type: string
    sql: ${TABLE}.estado_proveedor_siproe ;;
  }
  dimension: estado_secop {
    type: string
    sql: ${TABLE}.estado_secop ;;
  }
  dimension_group: fecha_registra_en_suplos_publicacion_secop {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_registra_en_suplos_publicacion_secop ;;
  }
  dimension: nit {
    type: string
    sql: ${TABLE}.nit ;;
  }
  dimension: nombre_razon_social {
    type: string
    sql: ${TABLE}.nombre_razon_social ;;
  }
  dimension: objeto {
    type: string
    sql: ${TABLE}.objeto ;;
  }
  dimension: solicitud_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.solicitud_id ;;
  }
  dimension: subcategoria_id {
    type: number
    sql: ${TABLE}.subcategoria_id ;;
  }
  dimension_group: updated {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.updated_at ;;
  }
  dimension: usuario_actualizacion {
    type: number
    sql: ${TABLE}.usuario_actualizacion ;;
  }
  dimension: usuario_creacion {
    type: number
    sql: ${TABLE}.usuario_creacion ;;
  }
  measure: count {
    type: count
    drill_fields: [id, solicitud.id]
  }
}
