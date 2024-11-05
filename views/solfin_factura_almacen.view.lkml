view: solfin_factura_almacen {
  sql_table_name: bd_ic_cliente.solfin_factura_almacen ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: centro_operacion {
    type: string
    sql: ${TABLE}.centro_operacion ;;
  }
  dimension: cod_proveedor {
    type: string
    sql: ${TABLE}.cod_proveedor ;;
  }
  dimension: docto_causacion {
    type: string
    sql: ${TABLE}.docto_causacion ;;
  }
  dimension: docto_proveedor {
    type: string
    sql: ${TABLE}.docto_proveedor ;;
  }
  dimension: documento_almacen {
    type: string
    sql: ${TABLE}.documento_almacen ;;
  }
  dimension: documento_origen {
    type: string
    sql: ${TABLE}.documento_origen ;;
  }
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension: estado_documento {
    type: string
    sql: ${TABLE}.estado_documento ;;
  }
  dimension: fecha_actualizacion {
    type: string
    sql: ${TABLE}.fecha_actualizacion ;;
  }
  dimension: fecha_creacion {
    type: string
    sql: ${TABLE}.fecha_creacion ;;
  }
  dimension: fecha_entrada {
    type: string
    sql: ${TABLE}.fecha_entrada ;;
  }
  dimension: nit_proveedor {
    type: string
    sql: ${TABLE}.nit_proveedor ;;
  }
  dimension: nro_documento {
    type: string
    sql: ${TABLE}.nro_documento ;;
  }
  dimension: nro_documento_origen {
    type: string
    sql: ${TABLE}.nro_documento_origen ;;
  }
  dimension: razon_social_proveedor {
    type: string
    sql: ${TABLE}.razon_social_proveedor ;;
  }
  dimension: tipo_documento {
    type: string
    sql: ${TABLE}.tipo_documento ;;
  }
  dimension: tipo_documento_origen {
    type: string
    sql: ${TABLE}.tipo_documento_origen ;;
  }
  dimension: valor_impuestos {
    type: string
    sql: ${TABLE}.valor_impuestos ;;
  }
  dimension: valor_sub_total {
    type: string
    sql: ${TABLE}.valor_sub_total ;;
  }
  dimension: valor_total {
    type: string
    sql: ${TABLE}.valor_total ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
