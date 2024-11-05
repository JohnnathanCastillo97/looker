view: tb_precalificacion_informacion_adicional {
  sql_table_name: bd_ic_cliente.tb_precalificacion_informacion_adicional ;;
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
  dimension: criterio {
    type: string
    sql: ${TABLE}.criterio ;;
  }
  dimension_group: fecha_observacion {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.fechaObservacion ;;
  }
  dimension: id_usuario_creador {
    type: number
    sql: ${TABLE}.idUsuarioCreador ;;
  }
  dimension: observacion {
    type: string
    sql: ${TABLE}.observacion ;;
  }
  dimension: precalificacion_id {
    type: number
    sql: ${TABLE}.precalificacionId ;;
  }
  dimension: proveedor {
    type: string
    sql: ${TABLE}.proveedor ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
