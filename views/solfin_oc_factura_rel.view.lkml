view: solfin_oc_factura_rel {
  sql_table_name: bd_ic_cliente.solfin_oc_factura_rel ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: aplica_contrato {
    type: string
    sql: ${TABLE}.AplicaContrato ;;
  }
  dimension: bodega {
    type: string
    sql: ${TABLE}.Bodega ;;
  }
  dimension: cantidad_entrada {
    type: string
    sql: ${TABLE}.CantidadEntrada ;;
  }
  dimension: cantidad_ordenada {
    type: string
    sql: ${TABLE}.CantidadOrdenada ;;
  }
  dimension: cantidad_pendiente {
    type: string
    sql: ${TABLE}.CantidadPendiente ;;
  }
  dimension: centro_operacion {
    type: string
    sql: ${TABLE}.CentroOperacion ;;
  }
  dimension: compania {
    type: string
    sql: ${TABLE}.Compania ;;
  }
  dimension: condicion_pago {
    type: string
    sql: ${TABLE}.CondicionPago ;;
  }
  dimension: contacto_regional {
    type: string
    sql: ${TABLE}.ContactoRegional ;;
  }
  dimension: correo_solicitante {
    type: string
    sql: ${TABLE}.CorreoSolicitante ;;
  }
  dimension: correo_usuario_comprador {
    type: string
    sql: ${TABLE}.CorreoUsuarioComprador ;;
  }
  dimension: des_condicion_pago {
    type: string
    sql: ${TABLE}.DesCondicionPago ;;
  }
  dimension: des_item {
    type: string
    sql: ${TABLE}.DesItem ;;
  }
  dimension: des_unidad_medida {
    type: string
    sql: ${TABLE}.DesUnidadMedida ;;
  }
  dimension: descripcion_oc {
    type: string
    sql: ${TABLE}.DescripcionOC ;;
  }
  dimension: detalle_item {
    type: string
    sql: ${TABLE}.DetalleItem ;;
  }
  dimension: dias_vencimiento {
    type: string
    sql: ${TABLE}.DiasVencimiento ;;
  }
  dimension: documento_causacion {
    type: string
    sql: ${TABLE}.DocumentoCausacion ;;
  }
  dimension: estado_fact_oc {
    type: string
    sql: ${TABLE}.estado_fact_oc ;;
  }
  dimension: id_condicion_pago {
    type: string
    sql: ${TABLE}.IdCondicionPago ;;
  }
  dimension: id_factura {
    type: number
    sql: ${TABLE}.id_factura ;;
  }
  dimension: id_flujo_efectivo {
    type: string
    sql: ${TABLE}.IdFlujoEfectivo ;;
  }
  dimension: id_oc {
    type: string
    sql: ${TABLE}.id_oc ;;
  }
  dimension: id_proveedor {
    type: string
    sql: ${TABLE}.IdProveedor ;;
  }
  dimension: id_sucursal {
    type: string
    sql: ${TABLE}.IdSucursal ;;
  }
  dimension: id_tipo_proveedor {
    type: string
    sql: ${TABLE}.IdTipoProveedor ;;
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
  dimension: nit_usuario_comprador {
    type: string
    sql: ${TABLE}.NitUsuarioComprador ;;
  }
  dimension: nit_usuario_solicitante {
    type: string
    sql: ${TABLE}.NitUsuarioSolicitante ;;
  }
  dimension: nombre_usuario_solicitante {
    type: string
    sql: ${TABLE}.NombreUsuarioSolicitante ;;
  }
  dimension: nombreusuario_comprador {
    type: string
    sql: ${TABLE}.NombreusuarioComprador ;;
  }
  dimension: nro_oc {
    type: string
    sql: ${TABLE}.NroOC ;;
  }
  dimension: razon_social_proveedor {
    type: string
    sql: ${TABLE}.RazonSocialProveedor ;;
  }
  dimension: referencia {
    type: string
    sql: ${TABLE}.Referencia ;;
  }
  dimension: regional {
    type: string
    sql: ${TABLE}.Regional ;;
  }
  dimension: respuesta_intg_data {
    type: string
    sql: ${TABLE}.respuesta_intg_data ;;
  }
  dimension: tipo_doc {
    type: string
    sql: ${TABLE}.TipoDoc ;;
  }
  dimension: total_bruto {
    type: string
    sql: ${TABLE}.TotalBruto ;;
  }
  dimension: total_neto {
    type: string
    sql: ${TABLE}.TotalNeto ;;
  }
  dimension: unidad_medida {
    type: string
    sql: ${TABLE}.UnidadMedida ;;
  }
  dimension: unidad_negocio {
    type: string
    sql: ${TABLE}.UnidadNegocio ;;
  }
  dimension: valor_disponible {
    type: string
    sql: ${TABLE}.ValorDisponible ;;
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
