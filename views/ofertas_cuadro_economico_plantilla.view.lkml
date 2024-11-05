view: ofertas_cuadro_economico_plantilla {
  sql_table_name: bd_ic_cliente.ofertas_cuadro_economico_plantilla ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: aplica_aiu {
    type: string
    sql: ${TABLE}.aplica_aiu ;;
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
  dimension: id_oferta {
    type: number
    sql: ${TABLE}.id_oferta ;;
  }
  dimension: info_aiu {
    type: string
    sql: ${TABLE}.info_aiu ;;
  }
  dimension: plantilla {
    type: string
    sql: ${TABLE}.plantilla ;;
  }
  dimension_group: updated {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.updated_at ;;
  }
  measure: count {
    type: count
    drill_fields: [id, ofertas_cuadro_economico_plantilla_cliente_adicional.count]
  }
}
