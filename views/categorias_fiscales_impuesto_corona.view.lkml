view: categorias_fiscales_impuesto_corona {
  sql_table_name: bd_ic_cliente.categorias_fiscales_impuesto_corona ;;
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
  dimension: id_categoria_fiscal {
    type: number
    sql: ${TABLE}.id_categoria_fiscal ;;
  }
  dimension: id_impuestos_corona {
    type: number
    sql: ${TABLE}.id_impuestos_corona ;;
  }
  dimension: usuario_registra {
    type: number
    sql: ${TABLE}.usuario_registra ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
