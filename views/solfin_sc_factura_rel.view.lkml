view: solfin_sc_factura_rel {
  sql_table_name: bd_ic_cliente.solfin_sc_factura_rel ;;
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
  dimension: doct_referencia {
    type: string
    sql: ${TABLE}.DoctReferencia ;;
  }
  dimension: estado_fact_sc {
    type: string
    sql: ${TABLE}.estado_fact_sc ;;
  }
  dimension: estadodoct {
    type: string
    sql: ${TABLE}.estadodoct ;;
  }
  dimension: fecha_doct {
    type: string
    sql: ${TABLE}.FechaDoct ;;
  }
  dimension_group: fehca_creacion {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fehca_creacion ;;
  }
  dimension: id_factura {
    type: number
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
  dimension: idco {
    type: string
    sql: ${TABLE}.IDCO ;;
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
  dimension: nro_dcto {
    type: string
    sql: ${TABLE}.NroDcto ;;
  }
  dimension: num_doct {
    type: string
    sql: ${TABLE}.NumDoct ;;
  }
  dimension: razon_social_proveedor {
    type: string
    sql: ${TABLE}.RazonSocialProveedor ;;
  }
  dimension: respuesta_intg_data {
    type: string
    sql: ${TABLE}.respuesta_intg_data ;;
  }
  dimension: tipo_doct {
    type: string
    sql: ${TABLE}.TipoDoct ;;
  }
  dimension: valor_bruto {
    type: string
    sql: ${TABLE}.ValorBruto ;;
  }
  dimension: valor_disponible {
    type: string
    sql: ${TABLE}.ValorDisponible ;;
  }
  dimension: valor_impuesto {
    type: string
    sql: ${TABLE}.ValorImpuesto ;;
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
