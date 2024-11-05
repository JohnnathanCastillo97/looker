view: planes_desarrollo_mejora_proveedores {
  sql_table_name: bd_ic_cliente.planes_desarrollo_mejora_proveedores ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: adjuntos {
    type: string
    sql: ${TABLE}.adjuntos ;;
  }
  dimension: ciudad {
    type: number
    sql: ${TABLE}.ciudad ;;
  }
  dimension: compromiso {
    type: string
    sql: ${TABLE}.compromiso ;;
  }
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
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
  dimension_group: fecha_plan {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.fecha_plan ;;
  }
  dimension: id_cliente {
    type: number
    sql: ${TABLE}.id_cliente ;;
  }
  dimension: id_proveedor {
    type: number
    sql: ${TABLE}.id_proveedor ;;
  }
  dimension: nit_proveedor {
    type: string
    sql: ${TABLE}.nit_proveedor ;;
  }
  dimension: observaciones {
    type: string
    sql: ${TABLE}.observaciones ;;
  }
  dimension: pestana {
    type: string
    sql: ${TABLE}.pestana ;;
  }
  dimension: plan_desarrollo {
    type: string
    sql: ${TABLE}.plan_desarrollo ;;
  }
  dimension: resultado_final {
    type: string
    sql: ${TABLE}.resultado_final ;;
  }
  dimension: usuario_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.usuario_id ;;
  }
  dimension: usuario_modifica {
    type: number
    sql: ${TABLE}.usuario_modifica ;;
  }
  measure: count {
    type: count
    drill_fields: [id, usuarios.username, usuarios.id]
  }
}
