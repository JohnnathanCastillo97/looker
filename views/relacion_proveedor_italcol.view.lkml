view: relacion_proveedor_italcol {
  sql_table_name: bd_ic_cliente.relacion_proveedor_italcol ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: cod_proveedor {
    type: number
    sql: ${TABLE}.cod_proveedor ;;
  }
  dimension: demandado {
    type: string
    sql: ${TABLE}.demandado ;;
  }
  dimension: empresa {
    type: number
    sql: ${TABLE}.empresa ;;
  }
  dimension_group: fecha_creacion {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_creacion ;;
  }
  dimension_group: fecha_modificacion {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_modificacion ;;
  }
  dimension: id_usuario_creacion {
    type: number
    sql: ${TABLE}.id_usuario_creacion ;;
  }
  dimension: id_usuario_modificacion {
    type: number
    sql: ${TABLE}.id_usuario_modificacion ;;
  }
  dimension: importancia_aprobar {
    type: string
    sql: ${TABLE}.importancia_aprobar ;;
  }
  dimension: incumplimientos {
    type: string
    sql: ${TABLE}.incumplimientos ;;
  }
  dimension: medidas_apremio {
    type: string
    sql: ${TABLE}.medidas_apremio ;;
  }
  dimension: monto_negocio_anual {
    type: string
    sql: ${TABLE}.monto_negocio_anual ;;
  }
  dimension: monto_negocio_mensual {
    type: string
    sql: ${TABLE}.monto_negocio_mensual ;;
  }
  dimension: productos_servicios {
    type: string
    sql: ${TABLE}.productos_servicios ;;
  }
  dimension: proveedor_potencial {
    type: string
    sql: ${TABLE}.proveedor_potencial ;;
  }
  dimension: tiempo_conocimiento {
    type: string
    sql: ${TABLE}.tiempo_conocimiento ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
