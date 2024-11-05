view: orden_pedidos {
  sql_table_name: bd_ic_cliente.orden_pedidos ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: cod_adjudicacion {
    type: number
    sql: ${TABLE}.cod_adjudicacion ;;
  }
  dimension: cod_jde_confa {
    type: number
    sql: ${TABLE}.cod_jde_confa ;;
  }
  dimension: cod_oferta {
    type: number
    sql: ${TABLE}.cod_oferta ;;
  }
  dimension: descripcion {
    type: string
    sql: ${TABLE}.descripcion ;;
  }
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension_group: fecha_creacion {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_creacion ;;
  }
  dimension: tipo_orden {
    type: string
    sql: ${TABLE}.tipo_orden ;;
  }
  dimension: usuario_creador {
    type: number
    sql: ${TABLE}.usuario_creador ;;
  }
  dimension: valor_adjudicado {
    type: string
    sql: ${TABLE}.valor_adjudicado ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
