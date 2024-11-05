view: equipo_cargado_por_proveedor_acuacar {
  sql_table_name: bd_ic_cliente.equipo_cargado_por_proveedor_acuacar ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
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
  dimension: equipo_id {
    type: number
    sql: ${TABLE}.equipo_id ;;
  }
  dimension: estado {
    type: yesno
    sql: ${TABLE}.estado ;;
  }
  dimension: estado_adicional {
    type: string
    sql: ${TABLE}.estado_adicional ;;
  }
  dimension: estado_equipo {
    type: string
    sql: ${TABLE}.estado_equipo ;;
  }
  dimension_group: fecha_retiro {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_retiro ;;
  }
  dimension: fue_novedad {
    type: yesno
    sql: ${TABLE}.fue_novedad ;;
  }
  dimension: motivo_rechazo {
    type: string
    sql: ${TABLE}.motivo_rechazo ;;
  }
  dimension: novedad {
    type: yesno
    sql: ${TABLE}.novedad ;;
  }
  dimension: numero_identificacion {
    type: string
    sql: ${TABLE}.numero_identificacion ;;
  }
  dimension_group: updated {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.updated_at ;;
  }
  dimension: usuario_retiro {
    type: number
    sql: ${TABLE}.usuario_retiro ;;
  }
  measure: count {
    type: count
    drill_fields: [id, contratos.id]
  }
}
