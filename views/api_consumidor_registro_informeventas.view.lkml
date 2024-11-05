view: api_consumidor_registro_informeventas {
  sql_table_name: bd_ic_cliente.api_consumidor_registro_informeventas ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: consignacion_kg {
    type: number
    sql: ${TABLE}.consignacion_kg ;;
  }
  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.created_at ;;
  }
  dimension: cupo_solicitado {
    type: string
    sql: ${TABLE}.cupo_solicitado ;;
  }
  dimension: maximo_kg {
    type: string
    sql: ${TABLE}.maximo_kg ;;
  }
  dimension: numero_solicitud {
    type: string
    sql: ${TABLE}.numero_solicitud ;;
  }
  dimension: plazo {
    type: string
    sql: ${TABLE}.plazo ;;
  }
  dimension: precio_promedio {
    type: string
    sql: ${TABLE}.precio_promedio ;;
  }
  dimension: producto {
    type: string
    sql: ${TABLE}.producto ;;
  }
  dimension: promedio_kg {
    type: string
    sql: ${TABLE}.promedio_kg ;;
  }
  dimension: proyectado_kg {
    type: string
    sql: ${TABLE}.proyectado_kg ;;
  }
  dimension: total_cupo_solicitado {
    type: string
    sql: ${TABLE}.total_cupo_solicitado ;;
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
