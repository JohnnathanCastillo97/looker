view: lista_restrictiva_proveedores {
  sql_table_name: bd_ic_cliente.lista_restrictiva_proveedores ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
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
  dimension: nit {
    type: string
    sql: ${TABLE}.nit ;;
  }
  dimension: razon_social {
    type: string
    sql: ${TABLE}.razon_social ;;
  }
  dimension_group: updated {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.updated_at ;;
  }
  dimension: usuario_creacion {
    type: number
    sql: ${TABLE}.usuario_creacion ;;
  }
  dimension: usuario_modificacion {
    type: number
    sql: ${TABLE}.usuario_modificacion ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
