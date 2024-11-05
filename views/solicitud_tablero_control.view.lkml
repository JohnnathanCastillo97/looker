view: solicitud_tablero_control {
  sql_table_name: bd_ic_cliente.solicitud_tablero_control ;;
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
  dimension: fuente {
    type: string
    sql: ${TABLE}.fuente ;;
  }
  dimension: id_cliente {
    type: number
    sql: ${TABLE}.idCliente ;;
  }
  dimension: identificador {
    type: string
    sql: ${TABLE}.identificador ;;
  }
  dimension: tipo {
    type: string
    sql: ${TABLE}.tipo ;;
  }
  dimension: tipo_consulta {
    type: string
    sql: ${TABLE}.tipoConsulta ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
