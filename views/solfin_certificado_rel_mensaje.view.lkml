view: solfin_certificado_rel_mensaje {
  sql_table_name: bd_ic_cliente.solfin_certificado_rel_mensaje ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: anio {
    type: string
    sql: ${TABLE}.anio ;;
  }
  dimension: ciudad {
    type: string
    sql: ${TABLE}.ciudad ;;
  }
  dimension: fecha_registro {
    type: string
    sql: ${TABLE}.fecha_registro ;;
  }
  dimension: id_mensaje {
    type: number
    sql: ${TABLE}.id_mensaje ;;
  }
  dimension: pagador {
    type: string
    sql: ${TABLE}.pagador ;;
  }
  dimension: periodicidad {
    type: string
    sql: ${TABLE}.periodicidad ;;
  }
  dimension: periodo {
    type: string
    sql: ${TABLE}.periodo ;;
  }
  dimension: tipo_certificado {
    type: string
    sql: ${TABLE}.tipo_certificado ;;
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
