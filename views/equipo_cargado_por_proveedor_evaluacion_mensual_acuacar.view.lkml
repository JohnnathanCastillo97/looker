view: equipo_cargado_por_proveedor_evaluacion_mensual_acuacar {
  sql_table_name: bd_ic_cliente.equipo_cargado_por_proveedor_evaluacion_mensual_acuacar ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.created_at ;;
  }
  dimension: equipo_id {
    type: number
    sql: ${TABLE}.equipo_id ;;
  }
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension_group: fecha_mantenimiento {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.fecha_mantenimiento ;;
  }
  dimension: mantenimiento_efectuado {
    type: string
    sql: ${TABLE}.mantenimiento_efectuado ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
