view: solfin_proveedores_documentos_solicitud_alta {
  sql_table_name: bd_ic_cliente.solfin_proveedores_documentos_solicitud_alta ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: cod_proveedor {
    type: string
    sql: ${TABLE}.cod_proveedor ;;
  }
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension: estado_archivo {
    type: string
    sql: ${TABLE}.estado_archivo ;;
  }
  dimension_group: fecha_registro {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_registro ;;
  }
  dimension: id_agente {
    type: string
    sql: ${TABLE}.id_agente ;;
  }
  dimension: id_proveedor_alta {
    type: number
    sql: ${TABLE}.id_proveedor_alta ;;
  }
  dimension: nombre_doc {
    type: string
    sql: ${TABLE}.nombre_doc ;;
  }
  dimension: url {
    type: string
    sql: ${TABLE}.url ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
