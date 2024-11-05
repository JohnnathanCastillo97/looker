view: solfin_em_factura_rel {
  sql_table_name: bd_ic_cliente.solfin_em_factura_rel ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: compania {
    type: string
    sql: ${TABLE}.Compania ;;
  }
  dimension: condicion_pago {
    type: string
    sql: ${TABLE}.CondicionPago ;;
  }
  dimension: estado_fact_em {
    type: string
    sql: ${TABLE}.estado_fact_em ;;
  }
  dimension: id_factura {
    type: string
    sql: ${TABLE}.id_factura ;;
  }
  dimension: id_oc {
    type: string
    sql: ${TABLE}.id_oc ;;
  }
  dimension: id_proveedor {
    type: string
    sql: ${TABLE}.IdProveedor ;;
  }
  dimension: identrada {
    type: string
    sql: ${TABLE}.IDEntrada ;;
  }
  dimension: moneda {
    type: string
    sql: ${TABLE}.Moneda ;;
  }
  dimension: nit_compania {
    type: string
    sql: ${TABLE}.NitCompania ;;
  }
  dimension: nit_proveedor {
    type: string
    sql: ${TABLE}.NitProveedor ;;
  }
  dimension: nombre_doc {
    type: string
    sql: ${TABLE}.nombre_doc ;;
  }
  dimension: nro_dcto {
    type: string
    sql: ${TABLE}.NroDcto ;;
  }
  dimension: nro_oc {
    type: string
    sql: ${TABLE}.NroOC ;;
  }
  dimension: razon_social_proveedor {
    type: string
    sql: ${TABLE}.RazonSocialProveedor ;;
  }
  dimension: respuesta_intg_data {
    type: string
    sql: ${TABLE}.respuesta_intg_data ;;
  }
  dimension: url {
    type: string
    sql: ${TABLE}.url ;;
  }
  dimension: valor_neto {
    type: string
    sql: ${TABLE}.ValorNeto ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
