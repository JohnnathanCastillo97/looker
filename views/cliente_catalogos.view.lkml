view: cliente_catalogos {
  sql_table_name: bd_ic_cliente.cliente_catalogos ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: acceso_proveedores {
    type: string
    sql: ${TABLE}.acceso_proveedores ;;
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
  dimension: logo {
    type: string
    sql: ${TABLE}.logo ;;
  }
  dimension: logo_proveedores {
    type: string
    sql: ${TABLE}.logo_proveedores ;;
  }
  dimension: nombre {
    type: string
    sql: ${TABLE}.nombre ;;
  }
  dimension: pais_origen {
    type: number
    sql: ${TABLE}.pais_origen ;;
  }
  dimension: tipo {
    type: string
    sql: ${TABLE}.tipo ;;
  }
  dimension: ulr_proveedor {
    type: string
    sql: ${TABLE}.ulr_proveedor ;;
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
