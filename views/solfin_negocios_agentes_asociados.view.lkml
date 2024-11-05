view: solfin_negocios_agentes_asociados {
  sql_table_name: bd_ic_cliente.solfin_negocios_agentes_asociados ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: cod_prov_agente {
    type: string
    sql: ${TABLE}.cod_prov_agente ;;
  }
  dimension: comentario_revision {
    type: string
    sql: ${TABLE}.comentario_revision ;;
  }
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension: estado_aprobacion {
    type: string
    sql: ${TABLE}.estado_aprobacion ;;
  }
  dimension: fecha_aprobacion {
    type: string
    sql: ${TABLE}.fecha_aprobacion ;;
  }
  dimension_group: fecha_creacion {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_creacion ;;
  }
  dimension: fecha_revision {
    type: string
    sql: ${TABLE}.fecha_revision ;;
  }
  dimension: id_agente {
    type: number
    sql: ${TABLE}.id_agente ;;
  }
  dimension: id_agente_admin {
    type: number
    sql: ${TABLE}.id_agente_admin ;;
  }
  dimension: id_negocio {
    type: number
    sql: ${TABLE}.id_negocio ;;
  }
  dimension: tipo_agente {
    type: string
    sql: ${TABLE}.tipo_agente ;;
  }
  dimension: tipo_operacion {
    type: string
    sql: ${TABLE}.tipo_operacion ;;
  }
  dimension: usuario_aprobacion {
    type: string
    sql: ${TABLE}.usuario_aprobacion ;;
  }
  dimension: usuario_creacion {
    type: string
    sql: ${TABLE}.usuario_creacion ;;
  }
  dimension: usuario_revision {
    type: string
    sql: ${TABLE}.usuario_revision ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
