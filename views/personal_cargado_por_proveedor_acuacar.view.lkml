view: personal_cargado_por_proveedor_acuacar {
  sql_table_name: bd_ic_cliente.personal_cargado_por_proveedor_acuacar ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: cargo_id {
    type: number
    sql: ${TABLE}.cargo_id ;;
  }
  dimension: contrato_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.contrato_id ;;
  }
  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.created_at ;;
  }
  dimension_group: deleted {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.deleted_at ;;
  }
  dimension: duracion_contrato {
    type: string
    sql: ${TABLE}.duracion_contrato ;;
  }
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension: estado_adicional {
    type: string
    sql: ${TABLE}.estado_adicional ;;
  }
  dimension: estado_vinculacion {
    type: string
    sql: ${TABLE}.estado_vinculacion ;;
  }
  dimension_group: fecha_retiro {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.fecha_retiro ;;
  }
  dimension: fue_novedad {
    type: yesno
    sql: ${TABLE}.fue_novedad ;;
  }
  dimension: id_contrato {
    type: number
    sql: ${TABLE}.id_contrato ;;
  }
  dimension: identificacion {
    type: string
    sql: ${TABLE}.identificacion ;;
  }
  dimension: motivo_rechazo {
    type: string
    sql: ${TABLE}.motivo_rechazo ;;
  }
  dimension: nombre {
    type: string
    sql: ${TABLE}.nombre ;;
  }
  dimension: novedad {
    type: yesno
    sql: ${TABLE}.novedad ;;
  }
  dimension: proveedor_id {
    type: number
    sql: ${TABLE}.proveedor_id ;;
  }
  dimension_group: updated {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.updated_at ;;
  }
  measure: count {
    type: count
    drill_fields: [id, contratos.id]
  }
}
