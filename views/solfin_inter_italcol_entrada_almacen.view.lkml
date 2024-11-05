view: solfin_inter_italcol_entrada_almacen {
  sql_table_name: bd_ic_cliente.solfin_inter_italcol_entrada_almacen ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: data_params {
    type: string
    sql: ${TABLE}.data_params ;;
  }
  dimension: docto_causacion {
    type: string
    sql: ${TABLE}.DoctoCausacion ;;
  }
  dimension: docto_proveedor {
    type: string
    sql: ${TABLE}.DoctoProveedor ;;
  }
  dimension: estado_docuento_compra {
    type: string
    sql: ${TABLE}.EstadoDocuentoCompra ;;
  }
  dimension: fecha_documento {
    type: string
    sql: ${TABLE}.FechaDocumento ;;
  }
  dimension: id_co {
    type: string
    sql: ${TABLE}.IdCO ;;
  }
  dimension: nit {
    type: string
    sql: ${TABLE}.NIT ;;
  }
  dimension: nro_documento {
    type: string
    sql: ${TABLE}.NroDocumento ;;
  }
  dimension: nro_documento_origen {
    type: string
    sql: ${TABLE}.NroDocumentoOrigen ;;
  }
  dimension: tipo_documento {
    type: string
    sql: ${TABLE}.TipoDocumento ;;
  }
  dimension: tipo_documento_origen {
    type: string
    sql: ${TABLE}.TipoDocumentoOrigen ;;
  }
  dimension: valor_bruto {
    type: string
    sql: ${TABLE}.ValorBruto ;;
  }
  dimension: valor_impuesto {
    type: string
    sql: ${TABLE}.ValorImpuesto ;;
  }
  dimension: valor_neto_local {
    type: string
    sql: ${TABLE}.ValorNetoLocal ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
