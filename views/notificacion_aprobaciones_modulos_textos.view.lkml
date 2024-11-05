view: notificacion_aprobaciones_modulos_textos {
  sql_table_name: bd_ic_cliente.notificacion_aprobaciones_modulos_textos ;;
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
  dimension: id_cliente {
    type: number
    sql: ${TABLE}.id_cliente ;;
  }
  dimension: textos {
    type: string
    sql: ${TABLE}.textos ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
