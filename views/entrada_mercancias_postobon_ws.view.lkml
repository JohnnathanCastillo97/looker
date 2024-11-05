view: entrada_mercancias_postobon_ws {
  sql_table_name: bd_ic_cliente.entrada_mercancias_postobon_ws ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: cantidad {
    type: number
    sql: ${TABLE}.Cantidad ;;
  }
  dimension: centro_logistico {
    type: string
    sql: ${TABLE}.CentroLogistico ;;
  }
  dimension: clase_movimiento {
    type: string
    sql: ${TABLE}.ClaseMovimiento ;;
  }
  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.created_at ;;
  }
  dimension: desc_entrada_mercancia {
    type: string
    sql: ${TABLE}.DescEntradaMercancia ;;
  }
  dimension: doc_referencia_anulacion {
    type: string
    sql: ${TABLE}.DocReferenciaAnulacion ;;
  }
  dimension_group: fecha_contabilizacion {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.FechaContabilizacion ;;
  }
  dimension: material {
    type: string
    sql: ${TABLE}.Material ;;
  }
  dimension: num_entrada_mercancia {
    type: string
    sql: ${TABLE}.NumEntradaMercancia ;;
  }
  dimension: num_pedido {
    type: string
    sql: ${TABLE}.NumPedido ;;
  }
  dimension: pos_entrada_mercancia {
    type: string
    sql: ${TABLE}.PosEntradaMercancia ;;
  }
  dimension: pos_pedido {
    type: number
    sql: ${TABLE}.PosPedido ;;
  }
  dimension: unidad_medida_base {
    type: string
    sql: ${TABLE}.UnidadMedidaBase ;;
  }
  dimension_group: updated {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.updated_at ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
