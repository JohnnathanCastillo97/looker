view: solfin_proveedores_alta {
  sql_table_name: bd_ic_cliente.solfin_proveedores_alta ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: cod_agente {
    type: string
    sql: ${TABLE}.cod_agente ;;
  }
  dimension: cod_proveedor {
    type: string
    sql: ${TABLE}.cod_proveedor ;;
  }
  dimension: comentario_revision {
    type: string
    sql: ${TABLE}.comentario_revision ;;
  }
  dimension: email_proveedor {
    type: string
    sql: ${TABLE}.email_proveedor ;;
  }
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension: estado_doc {
    type: string
    sql: ${TABLE}.estado_doc ;;
  }
  dimension: factoring_asig {
    type: number
    sql: ${TABLE}.factoring_asig ;;
  }
  dimension: factoring_asig_factor {
    type: number
    sql: ${TABLE}.factoring_asig_factor ;;
  }
  dimension: fecha_revision {
    type: string
    sql: ${TABLE}.fecha_revision ;;
  }
  dimension: fecha_revision_doc {
    type: string
    sql: ${TABLE}.fecha_revision_doc ;;
  }
  dimension_group: fecha_solicitud_alta_detra {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_solicitud_alta_detra ;;
  }
  dimension: id_delcop {
    type: number
    sql: ${TABLE}.id_delcop ;;
  }
  dimension: tipo_alta {
    type: string
    sql: ${TABLE}.tipo_alta ;;
  }
  dimension: usuario_revision {
    type: string
    sql: ${TABLE}.usuario_revision ;;
  }
  dimension: usuario_revision_doc {
    type: string
    sql: ${TABLE}.usuario_revision_doc ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
