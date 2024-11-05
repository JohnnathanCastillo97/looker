view: continuidad_vinculacion_proveedor {
  sql_table_name: bd_ic_cliente.continuidad_vinculacion_proveedor ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: cliente_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.cliente_id ;;
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
  dimension: proveedor_id {
    type: number
    sql: ${TABLE}.proveedor_id ;;
  }
  dimension_group: updated {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.updated_at ;;
  }
  dimension: usuario_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.usuario_id ;;
  }
  measure: count {
    type: count
    drill_fields: [id, clientes.id, usuarios.username, usuarios.id]
  }
}
