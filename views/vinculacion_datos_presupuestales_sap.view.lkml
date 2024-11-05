view: vinculacion_datos_presupuestales_sap {
  sql_table_name: bd_ic_cliente.vinculacion_datos_presupuestales_sap ;;

  dimension: clientes_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.clientes_id ;;
  }
  dimension_group: fecha_creacion {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_creacion ;;
  }
  dimension: id_datos_presupuestales_sap {
    type: number
    sql: ${TABLE}.id_datos_presupuestales_sap ;;
  }
  dimension: id_tabla_vinculacion {
    type: number
    sql: ${TABLE}.id_tabla_vinculacion ;;
  }
  dimension: id_vinculacion_doc {
    type: number
    sql: ${TABLE}.id_vinculacion_doc ;;
  }
  dimension: tipo_tabla_vinculacion {
    type: string
    sql: ${TABLE}.tipo_tabla_vinculacion ;;
  }
  dimension: usuario_creacion {
    type: number
    sql: ${TABLE}.usuario_creacion ;;
  }
  measure: count {
    type: count
    drill_fields: [clientes.id]
  }
}
