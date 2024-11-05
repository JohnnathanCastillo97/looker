view: catalogo_posicion_postobon {
  sql_table_name: bd_ic_cliente.catalogo_posicion_postobon ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: catalogo_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.catalogoId ;;
  }
  dimension: contrato_posicion_postobon_ws_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.contratoPosicionPostobonWsId ;;
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
  dimension: leadtime {
    type: number
    sql: ${TABLE}.leadtime ;;
  }
  dimension: monto_minimo_compra {
    type: number
    sql: ${TABLE}.montoMinimoCompra ;;
  }
  dimension: observaciones {
    type: string
    sql: ${TABLE}.observaciones ;;
  }
  dimension: registro_usuario {
    type: number
    sql: ${TABLE}.registro_usuario ;;
  }
  dimension: solicitud_adjunto {
    type: string
    sql: ${TABLE}.solicitudAdjunto ;;
  }
  dimension: transaccion {
    type: string
    sql: ${TABLE}.Transaccion ;;
  }
  dimension_group: updated {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.updated_at ;;
  }
  measure: count {
    type: count
    drill_fields: [id, contrato_posicion_postobon_ws.id, catalogos.id]
  }
}
