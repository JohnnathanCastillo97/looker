view: solicitudes_registro {
  sql_table_name: bd_ic_cliente.solicitudes_registro ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: ans {
    type: number
    sql: ${TABLE}.ans ;;
  }
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension: estado_solicitud {
    type: string
    sql: ${TABLE}.estado_solicitud ;;
  }
  dimension_group: fecha_creacion {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_creacion ;;
  }
  dimension_group: fecha_finalizada {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_finalizada ;;
  }
  dimension_group: fecha_solicitud {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_solicitud ;;
  }
  dimension: id_cliente {
    type: number
    sql: ${TABLE}.id_cliente ;;
  }
  dimension: objeto_contratacion {
    type: string
    sql: ${TABLE}.objeto_contratacion ;;
  }
  dimension: profesional_abastecimiento {
    type: number
    sql: ${TABLE}.profesional_abastecimiento ;;
  }
  dimension: tipo_empresa {
    type: string
    sql: ${TABLE}.tipo_empresa ;;
  }
  dimension: usuario_creador {
    type: number
    sql: ${TABLE}.usuario_creador ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
