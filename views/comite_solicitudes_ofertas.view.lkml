view: comite_solicitudes_ofertas {
  sql_table_name: bd_ic_cliente.comite_solicitudes_ofertas ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: clase {
    type: string
    sql: ${TABLE}.clase ;;
  }
  dimension: comprador_cargo_slt_frt {
    type: string
    sql: ${TABLE}.comprador_cargo_slt_frt ;;
  }
  dimension: comprador_email_slt_frt {
    type: string
    sql: ${TABLE}.comprador_email_slt_frt ;;
  }
  dimension: comprador_id_slt_frt {
    type: string
    sql: ${TABLE}.comprador_id_slt_frt ;;
  }
  dimension: comprador_nombre_slt_frt {
    type: string
    sql: ${TABLE}.comprador_nombre_slt_frt ;;
  }
  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.created_at ;;
  }
  dimension: direccion_slt_frt {
    type: string
    sql: ${TABLE}.direccion_slt_frt ;;
  }
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension: id_cliente {
    type: number
    sql: ${TABLE}.id_cliente ;;
  }
  dimension: id_comite {
    type: number
    sql: ${TABLE}.id_comite ;;
  }
  dimension: id_tema_slt_frt {
    type: number
    sql: ${TABLE}.id_tema_slt_frt ;;
  }
  dimension: id_usuarios_creador {
    type: number
    sql: ${TABLE}.id_usuarios_creador ;;
  }
  dimension: moneda_slt_frt {
    type: string
    sql: ${TABLE}.moneda_slt_frt ;;
  }
  dimension: numero_slt_frt {
    type: string
    sql: ${TABLE}.numero_slt_frt ;;
  }
  dimension: objeto {
    type: string
    sql: ${TABLE}.objeto ;;
  }
  dimension: orden {
    type: number
    sql: ${TABLE}.orden ;;
  }
  dimension: smmlv_slt_frt {
    type: string
    sql: ${TABLE}.smmlv_slt_frt ;;
  }
  dimension: tasa_cambio_slt_frt {
    type: string
    sql: ${TABLE}.tasa_cambio_slt_frt ;;
  }
  dimension: tipo_slt_frt {
    type: string
    sql: ${TABLE}.tipo_slt_frt ;;
  }
  dimension_group: updated {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.updated_at ;;
  }
  dimension: valor_cop_slt_frt {
    type: string
    sql: ${TABLE}.valor_cop_slt_frt ;;
  }
  dimension: valor_slt_frt {
    type: string
    sql: ${TABLE}.valor_slt_frt ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
