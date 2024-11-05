view: validacion_informacion_proveedores {
  sql_table_name: bd_ic_cliente.validacion_informacion_proveedores ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: adjunto {
    type: string
    sql: ${TABLE}.adjunto ;;
  }
  dimension: cantidad_afiliados {
    type: string
    sql: ${TABLE}.cantidad_afiliados ;;
  }
  dimension: cod_empresa {
    type: number
    sql: ${TABLE}.cod_empresa ;;
  }
  dimension: cod_usuario_prov {
    type: number
    sql: ${TABLE}.cod_usuario_prov ;;
  }
  dimension: codigo_validacion_informacion {
    type: number
    sql: ${TABLE}.codigo_validacion_informacion ;;
  }
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension_group: registro_creacion {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.registro_creacion ;;
  }
  dimension: respuesta {
    type: string
    sql: ${TABLE}.respuesta ;;
  }
  dimension_group: update {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.update_at ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
