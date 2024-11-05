view: documentacion_adicional_equipo_cargado_por_proveedor_acuacar {
  sql_table_name: bd_ic_cliente.documentacion_adicional_equipo_cargado_por_proveedor_acuacar ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: archivo {
    type: string
    sql: ${TABLE}.archivo ;;
  }
  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.created_at ;;
  }
  dimension: created_by {
    type: number
    sql: ${TABLE}.created_by ;;
  }
  dimension: documento_id {
    type: number
    sql: ${TABLE}.documento_id ;;
  }
  dimension: equipo_id {
    type: number
    sql: ${TABLE}.equipo_id ;;
  }
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension_group: fecha_vencimiento {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.fecha_vencimiento ;;
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
