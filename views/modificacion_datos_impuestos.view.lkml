view: modificacion_datos_impuestos {
  sql_table_name: bd_ic_cliente.modificacion_datos_impuestos ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: apellidos {
    type: string
    sql: ${TABLE}.apellidos ;;
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
  dimension: id_region_cliente {
    type: number
    sql: ${TABLE}.id_region_cliente ;;
  }
  dimension: identificacion {
    type: string
    sql: ${TABLE}.identificacion ;;
  }
  dimension: nombres {
    type: string
    sql: ${TABLE}.nombres ;;
  }
  dimension: proveedor_id {
    type: number
    sql: ${TABLE}.proveedor_id ;;
  }
  dimension: tiene_rut {
    type: string
    sql: ${TABLE}.tiene_rut ;;
  }
  dimension: tipo_identificacion {
    type: string
    sql: ${TABLE}.tipo_identificacion ;;
  }
  dimension: tipo_persona {
    type: string
    sql: ${TABLE}.tipo_persona ;;
  }
  dimension_group: updated {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.updated_at ;;
  }
  measure: count {
    type: count
    drill_fields: [id, clientes.id]
  }
}
