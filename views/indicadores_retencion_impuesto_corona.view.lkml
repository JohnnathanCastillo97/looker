view: indicadores_retencion_impuesto_corona {
  sql_table_name: bd_ic_cliente.indicadores_retencion_impuesto_corona ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: codigo_compannia {
    type: string
    sql: ${TABLE}.codigo_compannia ;;
  }
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension: id_impuestos_corona {
    type: number
    sql: ${TABLE}.id_impuestos_corona ;;
  }
  dimension: id_indicador {
    type: number
    sql: ${TABLE}.id_indicador ;;
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