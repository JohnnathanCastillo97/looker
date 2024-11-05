view: tb_precalificacion_empresa_experiencias {
  sql_table_name: bd_ic_cliente.tb_precalificacion_empresa_experiencias ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: aceptada {
    type: string
    sql: ${TABLE}.aceptada ;;
  }
  dimension: actividad_cliente {
    type: string
    sql: ${TABLE}.actividadCliente ;;
  }
  dimension: actividad_cliente_extra {
    type: string
    sql: ${TABLE}.actividadClienteExtra ;;
  }
  dimension: adjunto {
    type: string
    sql: ${TABLE}.adjunto ;;
  }
  dimension: cliente {
    type: string
    sql: ${TABLE}.cliente ;;
  }
  dimension: cod_experiencia {
    type: number
    sql: ${TABLE}.cod_experiencia ;;
  }
  dimension: cod_precalificacion_empresa {
    type: number
    sql: ${TABLE}.cod_precalificacion_empresa ;;
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
  dimension_group: fecha_fin {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.fecha_fin ;;
  }
  dimension_group: fecha_inicio {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.fecha_inicio ;;
  }
  dimension: moneda {
    type: string
    sql: ${TABLE}.moneda ;;
  }
  dimension: preseleccion {
    type: yesno
    sql: ${TABLE}.preseleccion ;;
  }
  dimension: registro_actualizacion {
    type: number
    sql: ${TABLE}.registro_actualizacion ;;
  }
  dimension: registro_creador {
    type: number
    sql: ${TABLE}.registro_creador ;;
  }
  dimension: seleccion {
    type: yesno
    sql: ${TABLE}.seleccion ;;
  }
  dimension_group: updated {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.updated_at ;;
  }
  dimension: valida {
    type: string
    sql: ${TABLE}.valida ;;
  }
  dimension: valor {
    type: number
    sql: ${TABLE}.valor ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
