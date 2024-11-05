view: tb_precalificacion_tecnica_informacion_adicional {
  sql_table_name: bd_ic_cliente.tb_precalificacion_tecnica_informacion_adicional ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: cod_precalificacion_tecnica {
    type: number
    sql: ${TABLE}.cod_precalificacion_tecnica ;;
  }
  dimension: cod_usuario_tecnico {
    type: number
    sql: ${TABLE}.cod_usuario_tecnico ;;
  }
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension_group: fecha_experiencia {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.fecha_experiencia ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
