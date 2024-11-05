view: solfin_po_archivos_por_subir {
  sql_table_name: bd_ic_cliente.solfin_po_archivos_por_subir ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: data_proveedor {
    type: string
    sql: ${TABLE}.data_proveedor ;;
  }
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension: fecha_creacion {
    type: string
    sql: ${TABLE}.fecha_creacion ;;
  }
  dimension: id_cliente {
    type: number
    sql: ${TABLE}.id_cliente ;;
  }
  dimension: nom_archivo {
    type: string
    sql: ${TABLE}.nom_archivo ;;
  }
  dimension: num_registros {
    type: string
    sql: ${TABLE}.num_registros ;;
  }
  dimension: tipo_archivo {
    type: string
    sql: ${TABLE}.tipo_archivo ;;
  }
  dimension: usuario_creacion {
    type: string
    sql: ${TABLE}.usuario_creacion ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
