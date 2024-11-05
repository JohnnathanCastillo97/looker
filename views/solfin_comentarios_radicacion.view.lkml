view: solfin_comentarios_radicacion {
  sql_table_name: bd_ic_cliente.solfin_comentarios_radicacion ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: comentario {
    type: string
    sql: ${TABLE}.comentario ;;
  }
  dimension: fecha_registro {
    type: string
    sql: ${TABLE}.fecha_registro ;;
  }
  dimension: id_cliente {
    type: number
    sql: ${TABLE}.id_cliente ;;
  }
  dimension: id_factura {
    type: number
    sql: ${TABLE}.id_factura ;;
  }
  dimension: soporte {
    type: string
    sql: ${TABLE}.soporte ;;
  }
  dimension: usuario_creador {
    type: number
    sql: ${TABLE}.usuario_creador ;;
  }
  dimension: usuario_registro_email {
    type: string
    sql: ${TABLE}.usuario_registro_email ;;
  }
  dimension: usuario_registro_nomb {
    type: string
    sql: ${TABLE}.usuario_registro_nomb ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
