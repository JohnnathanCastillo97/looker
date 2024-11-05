view: comunicados_cliente_proveedor {
  sql_table_name: bd_ic_cliente.comunicados_cliente_proveedor ;;

  dimension: anexo {
    type: string
    sql: ${TABLE}.anexo ;;
  }
  dimension: cantidad_vistas {
    type: number
    sql: ${TABLE}.cantidad_vistas ;;
  }
  dimension: contenido {
    type: string
    sql: ${TABLE}.contenido ;;
  }
  dimension: creador_comunicado {
    type: string
    sql: ${TABLE}.creador_comunicado ;;
  }
  dimension: empresa_id {
    type: string
    sql: ${TABLE}.empresa_id ;;
  }
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension_group: fecha_actualizacion {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_actualizacion ;;
  }
  dimension_group: fecha_comunicado {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_comunicado ;;
  }
  dimension: id_comunicado {
    type: number
    sql: ${TABLE}.idComunicado ;;
  }
  dimension: titulo_comunicado {
    type: string
    sql: ${TABLE}.titulo_comunicado ;;
  }
  dimension: usuario_actualizo {
    type: string
    sql: ${TABLE}.usuario_actualizo ;;
  }
  measure: count {
    type: count
  }
}
