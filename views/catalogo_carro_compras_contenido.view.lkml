view: catalogo_carro_compras_contenido {
  sql_table_name: bd_ic_cliente.catalogo_carro_compras_contenido ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: cantidad {
    type: number
    sql: ${TABLE}.cantidad ;;
  }
  dimension: cantidad_recibida {
    type: number
    sql: ${TABLE}.cantidad_recibida ;;
  }
  dimension: centro_costo_id {
    type: string
    sql: ${TABLE}.centroCostoId ;;
  }
  dimension: cod_cabecera {
    type: number
    sql: ${TABLE}.cod_cabecera ;;
  }
  dimension: cod_item {
    type: number
    sql: ${TABLE}.cod_item ;;
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
  dimension: dias_entrega {
    type: number
    sql: ${TABLE}.dias_entrega ;;
  }
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension: estado_sap {
    type: string
    sql: ${TABLE}.estadoSAP ;;
  }
  dimension: leadtime {
    type: string
    sql: ${TABLE}.leadtime ;;
  }
  dimension: modo {
    type: string
    sql: ${TABLE}.modo ;;
  }
  dimension: posicion_entrega {
    type: number
    sql: ${TABLE}.posicion_entrega ;;
  }
  dimension: registro_usuario {
    type: number
    sql: ${TABLE}.registro_usuario ;;
  }
  dimension_group: updated {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.updated_at ;;
  }
  dimension: valor {
    type: number
    sql: ${TABLE}.valor ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
