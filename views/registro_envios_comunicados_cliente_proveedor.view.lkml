view: registro_envios_comunicados_cliente_proveedor {
  sql_table_name: bd_ic_cliente.registro_envios_comunicados_cliente_proveedor ;;

  dimension_group: fecha_envio {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_envio ;;
  }
  dimension: id_cliente {
    type: string
    sql: ${TABLE}.idCliente ;;
  }
  dimension: id_comunicado {
    type: string
    sql: ${TABLE}.idComunicado ;;
  }
  dimension: tipo_validacion_proveedor {
    type: string
    sql: ${TABLE}.tipo_validacion_proveedor ;;
  }
  dimension: titulo_comunicado {
    type: string
    sql: ${TABLE}.titulo_comunicado ;;
  }
  dimension: usuario_envia {
    type: string
    sql: ${TABLE}.usuario_envia ;;
  }
  measure: count {
    type: count
  }
}
