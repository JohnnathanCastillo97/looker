view: solfin_factura_pre_otro {
  sql_table_name: bd_ic_cliente.solfin_factura_pre_otro ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension: fecha_actualizacion {
    type: string
    sql: ${TABLE}.fecha_actualizacion ;;
  }
  dimension: fecha_registro {
    type: string
    sql: ${TABLE}.fecha_registro ;;
  }
  dimension: id_factura {
    type: number
    sql: ${TABLE}.id_factura ;;
  }
  dimension: nit {
    type: string
    sql: ${TABLE}.nit ;;
  }
  dimension: tipo_operacion {
    type: string
    sql: ${TABLE}.tipo_operacion ;;
  }
  dimension: usuario_actualizacion {
    type: string
    sql: ${TABLE}.usuario_actualizacion ;;
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
