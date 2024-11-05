view: solfin_agentes {
  sql_table_name: bd_ic_cliente.solfin_agentes ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: cod_externo {
    type: string
    sql: ${TABLE}.cod_externo ;;
  }
  dimension: cod_proveedor {
    type: string
    sql: ${TABLE}.cod_proveedor ;;
  }
  dimension: descripcion_delcop {
    type: string
    sql: ${TABLE}.descripcion_delcop ;;
  }
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension: estado_aprobacion {
    type: string
    sql: ${TABLE}.estado_aprobacion ;;
  }
  dimension: fecha_aprobacion {
    type: string
    sql: ${TABLE}.fecha_aprobacion ;;
  }
  dimension: fecha_creacion {
    type: string
    sql: ${TABLE}.fecha_creacion ;;
  }
  dimension: flujo_delcop {
    type: string
    sql: ${TABLE}.flujo_delcop ;;
  }
  dimension: id_cliente {
    type: string
    sql: ${TABLE}.id_cliente ;;
  }
  dimension: id_delcop {
    type: number
    sql: ${TABLE}.id_delcop ;;
  }
  dimension: id_interno {
    type: string
    sql: ${TABLE}.id_interno ;;
  }
  dimension: logo {
    type: string
    sql: ${TABLE}.logo ;;
  }
  dimension: nit {
    type: string
    sql: ${TABLE}.nit ;;
  }
  dimension: prefijo_delcop {
    type: string
    sql: ${TABLE}.prefijo_delcop ;;
  }
  dimension: rango_desde_delcop {
    type: string
    sql: ${TABLE}.rango_desde_delcop ;;
  }
  dimension: rango_hasta_delcop {
    type: string
    sql: ${TABLE}.rango_hasta_delcop ;;
  }
  dimension: razon_social {
    type: string
    sql: ${TABLE}.razon_social ;;
  }
  dimension: status_delcop {
    type: string
    sql: ${TABLE}.status_delcop ;;
  }
  dimension: tasa {
    type: string
    sql: ${TABLE}.tasa ;;
  }
  dimension: tipo {
    type: string
    sql: ${TABLE}.tipo ;;
  }
  dimension: usuario_aprobacion {
    type: string
    sql: ${TABLE}.usuario_aprobacion ;;
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
