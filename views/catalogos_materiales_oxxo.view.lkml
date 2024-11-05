view: catalogos_materiales_oxxo {
  sql_table_name: bd_ic_cliente.catalogos_materiales_oxxo ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: activo_fijo_gasto {
    type: string
    sql: ${TABLE}.activoFijoGasto ;;
  }
  dimension: caracteristica {
    type: string
    sql: ${TABLE}.caracteristica ;;
  }
  dimension: catalogo_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.catalogoId ;;
  }
  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.created_at ;;
  }
  dimension: created_by {
    type: string
    sql: ${TABLE}.created_by ;;
  }
  dimension_group: deleted {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.deleted_at ;;
  }
  dimension: deleted_by {
    type: string
    sql: ${TABLE}.deleted_by ;;
  }
  dimension: descripcion {
    type: string
    sql: ${TABLE}.descripcion ;;
  }
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension: ficha_especificacion {
    type: string
    sql: ${TABLE}.fichaEspecificacion ;;
  }
  dimension: listado_equipamiento {
    type: string
    sql: ${TABLE}.listadoEquipamiento ;;
  }
  dimension: material_id {
    type: number
    sql: ${TABLE}.materialId ;;
  }
  dimension: moneda {
    type: string
    sql: ${TABLE}.moneda ;;
  }
  dimension: precio_unitario {
    type: string
    sql: ${TABLE}.precioUnitario ;;
  }
  dimension_group: updated {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.updated_at ;;
  }
  dimension: updated_by {
    type: string
    sql: ${TABLE}.updated_by ;;
  }
  measure: count {
    type: count
    drill_fields: [id, catalogos.id]
  }
}
