view: solfin_formato_mensaje {
  sql_table_name: bd_ic_cliente.solfin_formato_mensaje ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: descripcion_formato {
    type: string
    sql: ${TABLE}.descripcion_formato ;;
  }
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension: id_cliente {
    type: number
    sql: ${TABLE}.id_cliente ;;
  }
  dimension: origen_mesaje {
    type: string
    sql: ${TABLE}.origen_mesaje ;;
  }
  dimension: titulo_formato {
    type: string
    sql: ${TABLE}.titulo_formato ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
