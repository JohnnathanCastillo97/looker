view: corona_transporte_maquila {
  sql_table_name: bd_ic_cliente.corona_transporte_maquila ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: cantidad {
    type: string
    sql: ${TABLE}.cantidad ;;
  }
  dimension: codigo {
    type: string
    sql: ${TABLE}.codigo ;;
  }
  dimension: documento_entrega {
    type: string
    sql: ${TABLE}.documento_entrega ;;
  }
  dimension_group: fecha_firme {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.fecha_firme ;;
  }
  dimension: id_entrega {
    type: number
    sql: ${TABLE}.id_entrega ;;
  }
  dimension: id_posiciones {
    type: number
    sql: ${TABLE}.id_posiciones ;;
  }
  dimension: material {
    type: string
    sql: ${TABLE}.material ;;
  }
  dimension: pedido {
    type: string
    sql: ${TABLE}.pedido ;;
  }
  dimension: unidad_medida {
    type: string
    sql: ${TABLE}.unidad_medida ;;
  }
  dimension: usuario_proveedor {
    type: number
    sql: ${TABLE}.usuario_proveedor ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
