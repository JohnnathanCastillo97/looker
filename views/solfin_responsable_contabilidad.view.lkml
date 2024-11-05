view: solfin_responsable_contabilidad {
  sql_table_name: bd_ic_cliente.solfin_responsable_contabilidad ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: centro_costo {
    type: string
    sql: ${TABLE}.centro_costo ;;
  }
  dimension: contrato {
    type: string
    sql: ${TABLE}.contrato ;;
  }
  dimension: descripcion {
    type: string
    sql: ${TABLE}.descripcion ;;
  }
  dimension: email_responsable {
    type: string
    sql: ${TABLE}.email_responsable ;;
  }
  dimension: empresa_cod {
    type: string
    sql: ${TABLE}.empresa_cod ;;
  }
  dimension: empresa_id {
    type: number
    sql: ${TABLE}.empresa_id ;;
  }
  dimension_group: fecha_registro {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_registro ;;
  }
  dimension: id_responsable {
    type: number
    sql: ${TABLE}.id_responsable ;;
  }
  dimension: proyecto {
    type: string
    sql: ${TABLE}.proyecto ;;
  }
  dimension: responsable {
    type: string
    sql: ${TABLE}.responsable ;;
  }
  dimension: tipo_proceso {
    type: string
    sql: ${TABLE}.tipo_proceso ;;
  }
  dimension: usuario_registro {
    type: string
    sql: ${TABLE}.usuario_registro ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
