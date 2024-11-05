view: catalogo_carro_compras_cabecera {
  sql_table_name: bd_ic_cliente.catalogo_carro_compras_cabecera ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: cod_catalogo {
    type: number
    sql: ${TABLE}.cod_catalogo ;;
  }
  dimension: cod_empresa {
    type: number
    sql: ${TABLE}.cod_empresa ;;
  }
  dimension: cod_usuario_proveedor {
    type: number
    sql: ${TABLE}.cod_usuario_proveedor ;;
  }
  dimension: compra_express {
    type: string
    sql: ${TABLE}.compra_express ;;
  }
  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.created_at ;;
  }
  dimension_group: deleted {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.deleted_at ;;
  }
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension: estado_sap {
    type: string
    sql: ${TABLE}.estadoSAP ;;
  }
  dimension: modo {
    type: string
    sql: ${TABLE}.modo ;;
  }
  dimension: numero_compra {
    type: string
    sql: ${TABLE}.numero_compra ;;
  }
  dimension: numero_compra_intelcost {
    type: number
    sql: ${TABLE}.numero_compra_intelcost ;;
  }
  dimension: observaciones {
    type: string
    sql: ${TABLE}.observaciones ;;
  }
  dimension: registro_usuario {
    type: number
    sql: ${TABLE}.registro_usuario ;;
  }
  dimension: regla_asociada {
    type: number
    sql: ${TABLE}.regla_asociada ;;
  }
  dimension: solicitud_inventario {
    type: string
    sql: ${TABLE}.solicitud_inventario ;;
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
