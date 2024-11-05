view: solicitud_maestro_abogado {
  sql_table_name: bd_ic_cliente.solicitud_maestro_abogado ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension: id_abogado {
    type: number
    sql: ${TABLE}.id_abogado ;;
  }
  dimension: id_cliente {
    type: number
    sql: ${TABLE}.id_cliente ;;
  }
  dimension: orden {
    type: number
    sql: ${TABLE}.orden ;;
  }
  dimension: ultimo_contrato {
    type: string
    sql: ${TABLE}.ultimo_contrato ;;
  }
  dimension: ultimo_solicitud {
    type: string
    sql: ${TABLE}.ultimo_solicitud ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
