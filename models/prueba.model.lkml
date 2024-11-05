connection: "conexionrdssuplos"

# include all the views
include: "/views/**/*.view.lkml"

datagroup: prueba_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: prueba_default_datagroup

explore: acceso_plataforma {}

explore: afiliaciones_sss_persona_acuacar {}

explore: anexo_documentos_consumidores {}

explore: anexo_documentos_proveedores {}

explore: aoc {}

explore: aocs_moneda {}

explore: aoc_anexos {}

explore: aoc_back_08_05_2019 {}

explore: aoc_comentarios {}

explore: aoc_desempeo {}

explore: aoc_evaluadores {}

explore: aoc_fund_normativo {}

explore: aoc_historial {}

explore: aoc_oferentes {}

explore: aoc_supervision {}

explore: aoc_tipo_documento {}

explore: aoc_tipo_super {}

explore: api_consumidor_registro {}

explore: api_consumidor_registro_informeventas {}

explore: areas_adendos {}

explore: arl_last_year {}

explore: biblioteca {
  join: clientes {
    type: left_outer 
    sql_on: ${biblioteca.cliente_id} = ${clientes.id} ;;
    relationship: many_to_one
  }
}

explore: biblioteca_item {}

explore: capitulos {
  join: clientes {
    type: left_outer 
    sql_on: ${capitulos.cliente_id} = ${clientes.id} ;;
    relationship: many_to_one
  }
}

explore: capitulos_item {}

explore: capitulos_item_criterios {}

explore: cargue_masivos {}

explore: cart_bodies_imputation_ocns {}

explore: cart_bodies_ocns {}

explore: cart_headers_contacts_ocns {}

explore: cart_headers_ocns {
  join: users {
    type: left_outer 
    sql_on: ${cart_headers_ocns.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}

explore: cart_headers_trm_ocns {}

explore: catalogos {}

explore: catalogos_biblioteca_parametros_sap {}

explore: catalogos_comentarios {}

explore: catalogos_comentarios_respuestas {}

explore: catalogos_compras_cabecera_oxxo {
  join: catalogos {
    type: left_outer 
    sql_on: ${catalogos_compras_cabecera_oxxo.catalogo_id} = ${catalogos.id} ;;
    relationship: many_to_one
  }

  join: clientes {
    type: left_outer 
    sql_on: ${catalogos_compras_cabecera_oxxo.cliente_id} = ${clientes.id} ;;
    relationship: many_to_one
  }
}

explore: catalogos_compras_contenido_oxxo {}

explore: catalogos_compras_detalle_oxxo {}

explore: catalogos_contactos_prov {}

explore: catalogos_historial_compra_can_rec {}

explore: catalogos_historial_compra_item_aprobacion {}

explore: catalogos_historial_compra_item_aprobacion_vw {}

explore: catalogos_materiales_imagenes_oxxo {}

explore: catalogos_materiales_oxxo {
  join: catalogos {
    type: left_outer 
    sql_on: ${catalogos_materiales_oxxo.catalogo_id} = ${catalogos.id} ;;
    relationship: many_to_one
  }
}

explore: catalogos_mst_apodos_item {}

explore: catalogos_postobon_mensajes {}

explore: catalogos_postobon_mensajes_cabecera {}

explore: catalogos_reportes {}

explore: catalogos_reporte_compras {}

explore: catalogos_reporte_compras_old {}

explore: catalogos_reporte_compras_aprobacion {}

explore: catalogos_responsables {}

explore: catalogos_solicitudes {}

explore: catalogo_biblioteca_grupo_erp_cabecera {}

explore: catalogo_biblioteca_grupo_erp_contenido {}

explore: catalogo_biblioteca_maestras {}

explore: catalogo_cabecera_negociador {}

explore: catalogo_carro_compras_adjuntos {}

explore: catalogo_carro_compras_aprobaciones {}

explore: catalogo_carro_compras_atributos_contenido {}

explore: catalogo_carro_compras_cabecera {}

explore: catalogo_carro_compras_contenido {}

explore: catalogo_carro_compra_ordenes_externas {}

explore: catalogo_contactos_proveedor {}

explore: catalogo_datos_imputacion {}

explore: catalogo_grupos_erp {}

explore: catalogo_imagen {}

explore: catalogo_info_adicional {}

explore: catalogo_items {}

explore: catalogo_item_atributos_cabecera {}

explore: catalogo_item_atributos_cabecera_back {}

explore: catalogo_item_atributos_contenido {}

explore: catalogo_negociador {
  join: catalogos {
    type: left_outer 
    sql_on: ${catalogo_negociador.catalogo_id} = ${catalogos.id} ;;
    relationship: many_to_one
  }
}

explore: catalogo_posicion_postobon {
  join: contrato_posicion_postobon_ws {
    type: left_outer 
    sql_on: ${catalogo_posicion_postobon.contrato_posicion_postobon_ws_id} = ${contrato_posicion_postobon_ws.id} ;;
    relationship: many_to_one
  }

  join: catalogos {
    type: left_outer 
    sql_on: ${catalogo_posicion_postobon.catalogo_id} = ${catalogos.id} ;;
    relationship: many_to_one
  }
}

explore: catalogs_ocns {}

explore: catalogue_position_images_ocns {}

explore: catalogue_position_variation_groupings_ocns {}

explore: catalog_attachments_ocns {}

explore: catalog_contacts_ocns {}

explore: catalog_justifications_ocns {}

explore: catalog_positions_ocns {}

explore: categorias_fiscales_impuesto_corona {}

explore: centro_vs_division {}

explore: certificados_descargados {}

explore: clausulas {}

explore: clientes {}

explore: clientes_administracion_acceso_perfiles {}

explore: clientes_administracion_cabecera {}

explore: clientes_administracion_funciones {}

explore: clientes_administracion_funciones_modulos {}

explore: clientes_administracion_modulos {}

explore: clientes_administracion_modulos_cabecera {}

explore: clientes_administracion_perfiles {}

explore: clientes_administracion_perfiles_funciones {}

explore: clientes_funciones_roles {}

explore: clientes_listas_restrictivas {}

explore: clientes_modulos {}

explore: clientes_modulos_funciones {}

explore: clientes_modulos_funciones_ejecutar {}

explore: clientes_modulos_orden {}

explore: clientes_modulos_permisos {}

explore: clientes_modulos_personalizados {}

explore: clientes_modulos_personalizados_permisos {}

explore: clientes_perfiles {}

explore: clientes_personalizado {}

explore: clientes_personalizadold {}

explore: clientes_roles {}

explore: clientes_roles_perfiles {}

explore: clientes_servicio_wsdl {}

explore: clientes_sso_cognito {
  join: clientes {
    type: left_outer 
    sql_on: ${clientes_sso_cognito.cliente_id} = ${clientes.id} ;;
    relationship: many_to_one
  }
}

explore: clientes_vs_paises {}

explore: cliente_catalogos {}

explore: clients {}

explore: client_api {
  join: clients {
    type: left_outer 
    sql_on: ${client_api.client_id} = ${clients.id} ;;
    relationship: many_to_one
  }
}

explore: comentarios_cumplimiento_corona {}

explore: comite {}

explore: comite_decisiones {}

explore: comite_documentos_proposiciones {}

explore: comite_documentos_solicitudes_ofertas {}

explore: comite_plantilla_usuarios_permanentes {}

explore: comite_proposiciones {}

explore: comite_recomendaciones {}

explore: comite_relacion_comite_solicitudes {}

explore: comite_relacion_upload {}

explore: comite_solicitudes {}

explore: comite_solicitudes_comite_adicionales {}

explore: comite_solicitudes_contratacion_adicional {}

explore: comite_solicitudes_info_adicional_moneda {}

explore: comite_solicitudes_ofertas {}

explore: comite_solicitudes_usuarios {}

explore: comite_tratados {}

explore: comite_upload_documentos {}

explore: companias_proveedores_sura {}

explore: company_erps {
  join: clients {
    type: left_outer 
    sql_on: ${company_erps.client_id} = ${clients.id} ;;
    relationship: many_to_one
  }

  join: erps {
    type: left_outer 
    sql_on: ${company_erps.erp_id} = ${erps.id} ;;
    relationship: many_to_one
  }
}

explore: complete_response_association_erp {
  join: company_erps {
    type: left_outer 
    sql_on: ${complete_response_association_erp.company_erp_id} = ${company_erps.id} ;;
    relationship: many_to_one
  }

  join: erps {
    type: left_outer 
    sql_on: ${complete_response_association_erp.erp_id} = ${erps.id} ;;
    relationship: many_to_one
  }

  join: clients {
    type: left_outer 
    sql_on: ${company_erps.client_id} = ${clients.id} ;;
    relationship: many_to_one
  }
}

explore: compras {}

explore: comunicacionesproveedorcliente {}

explore: comunicacionesproveedorcliente_lecturas {}

explore: comunicaciones_proveedor_cliente_lecturas {}

explore: comunicaciones_enviadas_2017 {}

explore: comunicaciones_enviadas_2018 {}

explore: comunicaciones_enviadas_2019 {}

explore: comunicaciones_enviadas_2020 {}

explore: comunicaciones_enviadas_2021 {}

explore: comunicaciones_enviadas_2022 {}

explore: comunicaciones_enviadas_2023 {}

explore: comunicaciones_enviadas_2024 {}

explore: comunicaciones_enviadas_bk270824 {}

explore: comunicaciones_enviadas_ofertas {}

explore: comunicaciones_enviadas_ofertas_contenido {}

explore: comunicaciones_enviadas_prueba {}

explore: comunicaciones_prioridad_alta {}

explore: comunicaciones_prioridad_comunicados {}

explore: comunicados_cliente_proveedor {}

explore: concatenado_comprar {}

explore: configuraciones_adicionales {
  join: clientes {
    type: left_outer 
    sql_on: ${configuraciones_adicionales.cliente_id} = ${clientes.id} ;;
    relationship: many_to_one
  }
}

explore: configuraciones_adicionales_contenido {
  join: clientes {
    type: left_outer 
    sql_on: ${configuraciones_adicionales_contenido.cliente_id} = ${clientes.id} ;;
    relationship: many_to_one
  }
}

explore: consulta_sap_odl {}

explore: consumidor_documentos_softexpert {}

explore: consumidor_log_softexpert {}

explore: consumidor_registro {}

explore: contabilizacion_mensual_acuacar {
  join: contratos {
    type: left_outer 
    sql_on: ${contabilizacion_mensual_acuacar.contrato_id} = ${contratos.id} ;;
    relationship: many_to_one
  }

  join: ofertas {
    type: left_outer 
    sql_on: ${contratos.oferta_id} = ${ofertas.id} ;;
    relationship: many_to_one
  }
}

explore: contactos_proveedor_solicitud {}

explore: continuidad_validacion_proveedor {
  join: clientes {
    type: left_outer 
    sql_on: ${continuidad_validacion_proveedor.cliente_id} = ${clientes.id} ;;
    relationship: many_to_one
  }
}

explore: continuidad_vinculacion_proveedor {
  join: clientes {
    type: left_outer 
    sql_on: ${continuidad_vinculacion_proveedor.cliente_id} = ${clientes.id} ;;
    relationship: many_to_one
  }

  join: usuarios {
    type: left_outer 
    sql_on: ${continuidad_vinculacion_proveedor.usuario_id} = ${usuarios.id} ;;
    relationship: many_to_one
  }
}

explore: contratistas_contrato_acuacar {
  join: contratos {
    type: left_outer 
    sql_on: ${contratistas_contrato_acuacar.contrato_id} = ${contratos.id} ;;
    relationship: many_to_one
  }

  join: ofertas {
    type: left_outer 
    sql_on: ${contratos.oferta_id} = ${ofertas.id} ;;
    relationship: many_to_one
  }
}

explore: contratos {
  join: ofertas {
    type: left_outer 
    sql_on: ${contratos.oferta_id} = ${ofertas.id} ;;
    relationship: many_to_one
  }
}

explore: contratos_actas_inicio {}

explore: contratos_actas_pago {}

explore: contratos_adendos {}

explore: contratos_adendos_adicionales {}

explore: contratos_adendos_adjuntos {}

explore: contratos_adendos_alcance {}

explore: contratos_adendos_anexos {}

explore: contratos_adendos_aprobacion {}

explore: contratos_adendos_flujo_excepcion {}

explore: contratos_adendos_historial_aprobacion {}

explore: contratos_adendos_linea {
  join: ofertas {
    type: left_outer 
    sql_on: ${contratos_adendos_linea.oferta_id} = ${ofertas.id} ;;
    relationship: many_to_one
  }
}

explore: contratos_adendos_ordenes_cambio {}

explore: contratos_adendos_polizas {}

explore: contratos_adendos_prorroga_ocensa {}

explore: contratos_adendos_revision {}

explore: contratos_adendos_tiempo {}

explore: contratos_adendos_valor {}

explore: contratos_anexos {
  join: usuarios {
    type: left_outer 
    sql_on: ${contratos_anexos.usuarios_id} = ${usuarios.id} ;;
    relationship: many_to_one
  }

  join: contratos {
    type: left_outer 
    sql_on: ${contratos_anexos.contratos_id} = ${contratos.id} ;;
    relationship: many_to_one
  }

  join: ofertas {
    type: left_outer 
    sql_on: ${contratos.oferta_id} = ${ofertas.id} ;;
    relationship: many_to_one
  }
}

explore: contratos_anexos_paises {
  join: contratos {
    type: left_outer 
    sql_on: ${contratos_anexos_paises.contrato_id} = ${contratos.id} ;;
    relationship: many_to_one
  }

  join: usuarios {
    type: left_outer 
    sql_on: ${contratos_anexos_paises.usuario_id} = ${usuarios.id} ;;
    relationship: many_to_one
  }

  join: ofertas {
    type: left_outer 
    sql_on: ${contratos.oferta_id} = ${ofertas.id} ;;
    relationship: many_to_one
  }
}

explore: contratos_anexo_inicio {}

explore: contratos_bonificaciones {}

explore: contratos_calificacion {}

explore: contratos_cambio_estado {}

explore: contratos_cancelar_justificacion {}

explore: contratos_certificaciones {}

explore: contratos_clausulas_penales {
  join: usuarios {
    type: left_outer 
    sql_on: ${contratos_clausulas_penales.usuario_id} = ${usuarios.id} ;;
    relationship: many_to_one
  }

  join: contratos {
    type: left_outer 
    sql_on: ${contratos_clausulas_penales.contrato_id} = ${contratos.id} ;;
    relationship: many_to_one
  }

  join: ofertas {
    type: left_outer 
    sql_on: ${contratos.oferta_id} = ${ofertas.id} ;;
    relationship: many_to_one
  }
}

explore: contratos_comentarios {}

explore: contratos_companias {
  join: clientes {
    type: left_outer 
    sql_on: ${contratos_companias.cliente_id} = ${clientes.id} ;;
    relationship: many_to_one
  }
}

explore: contratos_cronograma {}

explore: contratos_datos_adicionales {}

explore: contratos_delegados {}

explore: contratos_desempeno {
  join: contratos {
    type: left_outer 
    sql_on: ${contratos_desempeno.contratos_id} = ${contratos.id} ;;
    relationship: many_to_one
  }

  join: usuarios {
    type: left_outer 
    sql_on: ${contratos_desempeno.usuarios_id} = ${usuarios.id} ;;
    relationship: many_to_one
  }

  join: ofertas {
    type: left_outer 
    sql_on: ${contratos.oferta_id} = ${ofertas.id} ;;
    relationship: many_to_one
  }
}

explore: contratos_desempeno_metro {}

explore: contratos_designacion_roles_administracion {
  join: contratos {
    type: left_outer 
    sql_on: ${contratos_designacion_roles_administracion.contrato_id} = ${contratos.id} ;;
    relationship: many_to_one
  }

  join: ofertas {
    type: left_outer 
    sql_on: ${contratos.oferta_id} = ${ofertas.id} ;;
    relationship: many_to_one
  }
}

explore: contratos_designar_administradores_supervisores {
  join: contratos {
    type: left_outer 
    sql_on: ${contratos_designar_administradores_supervisores.contrato_id} = ${contratos.id} ;;
    relationship: many_to_one
  }

  join: ofertas {
    type: left_outer 
    sql_on: ${contratos.oferta_id} = ${ofertas.id} ;;
    relationship: many_to_one
  }
}

explore: contratos_documentos_revision {}

explore: contratos_encargos_fiduciarios {}

explore: contratos_entrega {}

explore: contratos_entrega_envio {}

explore: contratos_finalizacion {}

explore: contratos_informacion_proceso_logistico {
  join: contratos {
    type: left_outer 
    sql_on: ${contratos_informacion_proceso_logistico.contrato_id} = ${contratos.id} ;;
    relationship: many_to_one
  }

  join: clientes {
    type: left_outer 
    sql_on: ${contratos_informacion_proceso_logistico.cliente_id} = ${clientes.id} ;;
    relationship: many_to_one
  }

  join: ofertas {
    type: left_outer 
    sql_on: ${contratos.oferta_id} = ${ofertas.id} ;;
    relationship: many_to_one
  }
}

explore: contratos_info_detalle_date {}

explore: contratos_info_detalle_double {}

explore: contratos_info_detalle_int {}

explore: contratos_info_detalle_varchar {}

explore: contratos_lecciones {}

explore: contratos_legalizacion {}

explore: contratos_legalizacion_documentos {}

explore: contratos_legalizacion_notificaciones {
  join: contratos {
    type: left_outer 
    sql_on: ${contratos_legalizacion_notificaciones.contratos_id} = ${contratos.id} ;;
    relationship: many_to_one
  }

  join: ofertas {
    type: left_outer 
    sql_on: ${contratos.oferta_id} = ${ofertas.id} ;;
    relationship: many_to_one
  }
}

explore: contratos_liquidacion {}

explore: contratos_mano_de_obra {}

explore: contratos_mano_de_obra_equipo_acuacar {
  join: contratos {
    type: left_outer 
    sql_on: ${contratos_mano_de_obra_equipo_acuacar.contrato_id} = ${contratos.id} ;;
    relationship: many_to_one
  }

  join: ofertas {
    type: left_outer 
    sql_on: ${contratos.oferta_id} = ${ofertas.id} ;;
    relationship: many_to_one
  }
}

explore: contratos_mano_de_obra_personal_acuacar {
  join: contratos {
    type: left_outer 
    sql_on: ${contratos_mano_de_obra_personal_acuacar.contrato_id} = ${contratos.id} ;;
    relationship: many_to_one
  }

  join: ofertas {
    type: left_outer 
    sql_on: ${contratos.oferta_id} = ${ofertas.id} ;;
    relationship: many_to_one
  }
}

explore: contratos_marcos_contactos_oxxo {}

explore: contratos_marcos_materiales_oxxo {}

explore: contratos_marcos_oxxo {
  join: clientes {
    type: left_outer 
    sql_on: ${contratos_marcos_oxxo.cliente_id} = ${clientes.id} ;;
    relationship: many_to_one
  }

  join: ofertas {
    type: left_outer 
    sql_on: ${contratos_marcos_oxxo.oferta_id} = ${ofertas.id} ;;
    relationship: many_to_one
  }
}

explore: contratos_minuta_revision {}

explore: contratos_moneda {}

explore: contratos_mst_info_polizas {}

explore: contratos_multas {
  join: usuarios {
    type: left_outer 
    sql_on: ${contratos_multas.usuarios_id} = ${usuarios.id} ;;
    relationship: many_to_one
  }

  join: contratos {
    type: left_outer 
    sql_on: ${contratos_multas.contratos_id} = ${contratos.id} ;;
    relationship: many_to_one
  }

  join: ofertas {
    type: left_outer 
    sql_on: ${contratos.oferta_id} = ${ofertas.id} ;;
    relationship: many_to_one
  }
}

explore: contratos_novedades {}

explore: contratos_observaciones_seguimiento_reclamo {
  join: contratos_reclamos {
    type: left_outer 
    sql_on: ${contratos_observaciones_seguimiento_reclamo.contratos_reclamos_id} = ${contratos_reclamos.id} ;;
    relationship: many_to_one
  }
}

explore: contratos_otros_adjuntos {}

explore: contratos_pedidos_sap {
  join: contratos {
    type: left_outer 
    sql_on: ${contratos_pedidos_sap.contrato_id} = ${contratos.id} ;;
    relationship: many_to_one
  }

  join: ofertas {
    type: left_outer 
    sql_on: ${contratos.oferta_id} = ${ofertas.id} ;;
    relationship: many_to_one
  }
}

explore: contratos_plan_accion {}

explore: contratos_plan_accion_acuacar {}

explore: contratos_plan_accion_estado {}

explore: contratos_plan_accion_preguntas {}

explore: contratos_plan_accion_respuesta {}

explore: contratos_plan_accion_respuesta_acuacar {}

explore: contratos_polizas {}

explore: contratos_polizas_rev_apro {
  join: contratos_polizas {
    type: left_outer 
    sql_on: ${contratos_polizas_rev_apro.contratos_polizas_id} = ${contratos_polizas.id} ;;
    relationship: many_to_one
  }

  join: usuarios {
    type: left_outer 
    sql_on: ${contratos_polizas_rev_apro.usuarios_id} = ${usuarios.id} ;;
    relationship: many_to_one
  }
}

explore: contratos_preguntas_desempeno {
  join: contratos {
    type: left_outer 
    sql_on: ${contratos_preguntas_desempeno.contratos_id} = ${contratos.id} ;;
    relationship: many_to_one
  }

  join: ofertas {
    type: left_outer 
    sql_on: ${contratos.oferta_id} = ${ofertas.id} ;;
    relationship: many_to_one
  }
}

explore: contratos_prorroga {}

explore: contratos_reclamaciones {}

explore: contratos_reclamos {}

explore: contratos_requisicion {
  join: requisiciones {
    type: left_outer 
    sql_on: ${contratos_requisicion.requisiciones_id} = ${requisiciones.id} ;;
    relationship: many_to_one
  }

  join: contratos_adendos {
    type: left_outer 
    sql_on: ${contratos_requisicion.contratos_adendos_id} = ${contratos_adendos.id} ;;
    relationship: many_to_one
  }
}

explore: contratos_revision_legal {}

explore: contratos_revision_legal_comentarios {
  join: contratos {
    type: left_outer 
    sql_on: ${contratos_revision_legal_comentarios.contrato_id} = ${contratos.id} ;;
    relationship: many_to_one
  }

  join: usuarios {
    type: left_outer 
    sql_on: ${contratos_revision_legal_comentarios.usuario_id} = ${usuarios.id} ;;
    relationship: many_to_one
  }

  join: ofertas {
    type: left_outer 
    sql_on: ${contratos.oferta_id} = ${ofertas.id} ;;
    relationship: many_to_one
  }
}

explore: contratos_revision_supervisores {}

explore: contratos_seguimiento {
  join: contratos {
    type: left_outer 
    sql_on: ${contratos_seguimiento.contratos_id} = ${contratos.id} ;;
    relationship: many_to_one
  }

  join: usuarios {
    type: left_outer 
    sql_on: ${contratos_seguimiento.usuarios_id} = ${usuarios.id} ;;
    relationship: many_to_one
  }

  join: ofertas {
    type: left_outer 
    sql_on: ${contratos.oferta_id} = ${ofertas.id} ;;
    relationship: many_to_one
  }
}

explore: contratos_supervision {
  join: usuarios {
    type: left_outer 
    sql_on: ${contratos_supervision.usuario_id} = ${usuarios.id} ;;
    relationship: many_to_one
  }
}

explore: contratos_supervisores_trazabilidad {}

explore: contratos_tabla_control {}

explore: contratos_tipo_documentos {}

explore: contratos_usuarios_aprobadores {}

explore: contratos_vicepresidencia_adicional {}

explore: contrato_posicion_postobon_tmp {}

explore: contrato_posicion_postobon_ws {}

explore: control_cambios_facturas {}

explore: control_migracion_tablas_italcol {}

explore: corona_certificados_tributarios {}

explore: corona_ejecucion_pedido_posicion {}

explore: corona_ejecucion_pedido_posicion_johnnathan {}

explore: corona_ejecucion_pedido_servicios {}

explore: corona_empresas {}

explore: corona_entregas_pedido {}

explore: corona_liquidacion_consignacion {}

explore: corona_liquidacion_consignacion_backup {}

explore: corona_liquidacion_consignacion_bk {}

explore: corona_maestra_materiales {}

explore: corona_maestra_materiales_caracteristicas {}

explore: corona_maestra_materiales_centro {}

explore: corona_maestra_materiales_textos {}

explore: corona_materialescentro {}

explore: corona_pedido_contrato_cabecera {}

explore: corona_pedido_contrato_cabeceraac00 {}

explore: corona_pedido_contrato_cabecera_johnnathan {}

explore: corona_pedido_contrato_cabecera_sincroniza {}

explore: corona_pedido_contrato_posicion {}

explore: corona_pedido_contrato_posicion_dev {}

explore: corona_pedido_contrato_posicion_johnnathan {}

explore: corona_pedido_contrato_posicion_sincronizacion {}

explore: corona_pedido_contrato_servicio {}

explore: corona_pedido_contrato_texto {}

explore: corona_proveedores {}

explore: corona_proveedores_bk {}

explore: corona_registro_info {}

explore: corona_registro_info_centro {}

explore: corona_registro_info_python {}

explore: corona_response_association_erp {
  join: erps {
    type: left_outer 
    sql_on: ${corona_response_association_erp.erp_id} = ${erps.id} ;;
    relationship: many_to_one
  }
}

explore: corona_seguimiento_factura {}

explore: corona_seguimiento_factura_compra {}

explore: corona_seguimiento_factura_compra_tmp {}

explore: corona_seguimiento_factura_old {}

explore: corona_seguimiento_factura_pedido {}

explore: corona_seguimiento_factura_pedido_dev {}

explore: corona_seguimiento_factura_retencion {}

explore: corona_seguimiento_factura_retencion_dev {}

explore: corona_solicitudes_liquidacion {}

explore: corona_solicitudes_liquidacion_vigencia_informes {}

explore: corona_solped {}

explore: corona_solped_servicio {}

explore: corona_solped_texto {}

explore: corona_stock_consignacion {}

explore: corona_transporte_maquila {}

explore: corona_transporte_maquila_respuesta {}

explore: correo_lecturas {}

explore: corte_integracion {}

explore: countries {}

explore: criterios_habilitacion {}

explore: criterios_habilitacion_porcentual {}

explore: ct_cabecera {}

explore: ct_cabecera_adicional {}

explore: ct_docs {}

explore: ct_mst_cuentas {}

explore: ct_origen_docs {}

explore: ct_periodicidad {}

explore: ct_tipo_cert {}

explore: cumple_doc_proveedor {}

explore: cupon {}

explore: datos_clientes_power_bi {}

explore: datos_comercial_proveedores {}

explore: datos_presupuestales_sap {}

explore: destinatarios_mensajeria_italcol {}

explore: documentacion_adicional_equipo_cargado_por_proveedor_acuacar {}

explore: documentacion_adicional_equipo_contratos_acuacar {}

explore: documentacion_adicional_personal_contratos_acuacar {}

explore: documentacion_cargada_por_proveedor_acuacar {}

explore: documentacion_evaluacio_mensual_equipo_acuacar {}

explore: documentacion_general_mensual_acuacar {
  join: contratos {
    type: left_outer 
    sql_on: ${documentacion_general_mensual_acuacar.contrato_id} = ${contratos.id} ;;
    relationship: many_to_one
  }

  join: ofertas {
    type: left_outer 
    sql_on: ${contratos.oferta_id} = ${ofertas.id} ;;
    relationship: many_to_one
  }
}

explore: documento_adicional_del_personal_cargado_acuacar {}

explore: ejecucion_reportes {
  join: clientes {
    type: left_outer 
    sql_on: ${ejecucion_reportes.cliente_id} = ${clientes.id} ;;
    relationship: many_to_one
  }

  join: usuarios {
    type: left_outer 
    sql_on: ${ejecucion_reportes.usuario_id} = ${usuarios.id} ;;
    relationship: many_to_one
  }
}

explore: eje_pedido_pose_prueba {}

explore: entrada_mercancias_postobon_ws {}

explore: equipo_cargado_por_proveedor_acuacar {
  join: contratos {
    type: left_outer 
    sql_on: ${equipo_cargado_por_proveedor_acuacar.contrato_id} = ${contratos.id} ;;
    relationship: many_to_one
  }

  join: ofertas {
    type: left_outer 
    sql_on: ${contratos.oferta_id} = ${ofertas.id} ;;
    relationship: many_to_one
  }
}

explore: equipo_cargado_por_proveedor_evaluacion_mensual_acuacar {}

explore: erps {}

explore: errores_certificados_italcol {}

explore: estado_etapa_linea_ans {}

explore: estado_solpeds_postobon_ws {}

explore: evaluacion {}

explore: evaluacion_anexos {}

explore: evaluacion_cargamasiva_desempenyo {}

explore: evaluacion_clase {}

explore: evaluacion_contrato {}

explore: evaluacion_contratos_asociados {}

explore: evaluacion_contrato_aceptacion {
  join: evaluacion {
    type: left_outer 
    sql_on: ${evaluacion_contrato_aceptacion.evaluacion_id} = ${evaluacion.id} ;;
    relationship: many_to_one
  }

  join: usuarios {
    type: left_outer 
    sql_on: ${evaluacion_contrato_aceptacion.usuario_id} = ${usuarios.id} ;;
    relationship: many_to_one
  }
}

explore: evaluacion_contrato_adicionales {
  join: evaluacion_contrato {
    type: left_outer 
    sql_on: ${evaluacion_contrato_adicionales.evaluacion_contrato_id} = ${evaluacion_contrato.id} ;;
    relationship: many_to_one
  }
}

explore: evaluacion_contrato_anexos {
  join: evaluacion {
    type: left_outer 
    sql_on: ${evaluacion_contrato_anexos.evaluacion_id} = ${evaluacion.id} ;;
    relationship: many_to_one
  }
}

explore: evaluacion_contrato_compania_corona {}

explore: evaluacion_contrato_division_corona {}

explore: evaluacion_contrato_usuarios {}

explore: evaluacion_descripcion {}

explore: evaluacion_desempeno {}

explore: evaluacion_desempeno_anexos {}

explore: evaluacion_desempeno_anotaciones {}

explore: evaluacion_desempeno_contactos {}

explore: evaluacion_desempeno_pregunta {}

explore: evaluacion_desempeno_respuesta {}

explore: evaluacion_desempeno_usuarios {}

explore: evaluacion_doc {}

explore: evaluacion_ejercicio {}

explore: evaluacion_ejercicio_criterios {
  join: evaluacion_ejercicio {
    type: left_outer 
    sql_on: ${evaluacion_ejercicio_criterios.evaluacion_ejercicio_id} = ${evaluacion_ejercicio.id} ;;
    relationship: many_to_one
  }
}

explore: evaluacion_ejercicio_puntaje {}

explore: evaluacion_fecha_evaluacion {}

explore: evaluacion_ficha {}

explore: evaluacion_pregunta {}

explore: evaluacion_pregunta_respuesta_vanti {}

explore: evaluacion_relacion_contrato_vs_ficha {
  join: contratos {
    type: left_outer 
    sql_on: ${evaluacion_relacion_contrato_vs_ficha.contrato_id} = ${contratos.id} ;;
    relationship: many_to_one
  }

  join: usuarios {
    type: left_outer 
    sql_on: ${evaluacion_relacion_contrato_vs_ficha.usuario_id} = ${usuarios.id} ;;
    relationship: many_to_one
  }

  join: ofertas {
    type: left_outer 
    sql_on: ${contratos.oferta_id} = ${ofertas.id} ;;
    relationship: many_to_one
  }
}

explore: evaluacion_respuesta {}

explore: evaluacion_respuesta_masa {}

explore: expediting {}

explore: expeditingcoronaposiciones {}

explore: expeditingcoronaposicionesprueba {}

explore: expediting_adjuntos_logistica {}

explore: expediting_anexos {
  join: usuarios {
    type: left_outer 
    sql_on: ${expediting_anexos.usuarios_id} = ${usuarios.id} ;;
    relationship: many_to_one
  }

  join: expediting {
    type: left_outer 
    sql_on: ${expediting_anexos.expediting_id} = ${expediting.id} ;;
    relationship: many_to_one
  }
}

explore: expediting_aprobacion_pruebas_sat {}

explore: expediting_corona {}

explore: expediting_corona_anexos {
  join: expediting {
    type: left_outer 
    sql_on: ${expediting_corona_anexos.expediting_id} = ${expediting.id} ;;
    relationship: many_to_one
  }

  join: usuarios {
    type: left_outer 
    sql_on: ${expediting_corona_anexos.usuarios_id} = ${usuarios.id} ;;
    relationship: many_to_one
  }
}

explore: expediting_corona_aprobacion_pruebas_sat {}

explore: expediting_corona_bk {}

explore: expediting_corona_compras_abiertas_entregas {}

explore: expediting_corona_desempeno {}

explore: expediting_corona_entrega_pruebas_sat {}

explore: expediting_corona_hitos {
  join: expediting {
    type: left_outer 
    sql_on: ${expediting_corona_hitos.expediting_id} = ${expediting.id} ;;
    relationship: many_to_one
  }
}

explore: expediting_corona_hitos_aprobacion {}

explore: expediting_corona_hitos_entrega {}

explore: expediting_corona_hitos_general {
  join: expediting {
    type: left_outer 
    sql_on: ${expediting_corona_hitos_general.expediting_id} = ${expediting.id} ;;
    relationship: many_to_one
  }
}

explore: expediting_corona_hitos_seguimientos {}

explore: expediting_corona_hitos_seguimientos_datos_adicionales_alista {}

explore: expediting_corona_hitos_seguimientos_datos_adicionales_fabri {}

explore: expediting_corona_hitos_seguimientos_datos_adicionales_plan {}

explore: expediting_corona_item_extras {}

explore: expediting_corona_item_extras_documentos {}

explore: expediting_corona_mensajes {}

explore: expediting_corona_mensajes_cabecera {}

explore: expediting_corona_mensajes_pivot {}

explore: expediting_corona_no_conformidad {}

explore: expediting_corona_no_conformidad_documentos {}

explore: expediting_corona_no_conformidad_resp {}

explore: expediting_corona_no_conformidad_resp_doc {}

explore: expediting_corona_polizas {}

explore: expediting_corona_pruebas_sat {}

explore: expediting_corona_pruebas_sat_cronograma {}

explore: expediting_corona_remisiones {}

explore: expediting_corona_seguimientos_posiciones {}

explore: expediting_corona_seguimientos_principal {}

explore: expediting_desempeno {}

explore: expediting_despacho {}

explore: expediting_entrega_pruebas_sat {}

explore: expediting_hitos {
  join: expediting {
    type: left_outer 
    sql_on: ${expediting_hitos.expediting_id} = ${expediting.id} ;;
    relationship: many_to_one
  }
}

explore: expediting_hitos_aprobacion {}

explore: expediting_hitos_entrega {}

explore: expediting_hitos_general {
  join: expediting {
    type: left_outer 
    sql_on: ${expediting_hitos_general.expediting_id} = ${expediting.id} ;;
    relationship: many_to_one
  }
}

explore: expediting_hitos_seguimientos {}

explore: expediting_hitos_seguimientos_datos_adicionales_alistamiento {}

explore: expediting_hitos_seguimientos_datos_adicionales_fabricacion {}

explore: expediting_hitos_seguimientos_datos_adicionales_plan {}

explore: expediting_items {}

explore: expediting_item_extras {}

explore: expediting_lecciones_aprendidas {}

explore: expediting_logistica_internacional {}

explore: expediting_mensajes {}

explore: expediting_mensajes_cabecera {}

explore: expediting_mensajes_pivot {}

explore: expediting_nacionalizacion {}

explore: expediting_no_conformidad {}

explore: expediting_no_conformidad_resp {}

explore: expediting_polizas {}

explore: expediting_pruebas_sat {}

explore: expediting_pruebas_sat_cronograma {}

explore: expediting_remisiones {}

explore: expediting_seguimiento_posiciones {}

explore: expediting_transporte_nacional {}

explore: factores_regiones {}

explore: failed_jobs {}

explore: fechas_vista_proveedor {}

explore: fechas_vista_proveedor_cliente {}

explore: financial_statements_last_year {}

explore: flujos_aprobacion {}

explore: flujos_aprobacion_aprobaciones {}

explore: flujos_aprobacion_perfil_vs_usuario {}

explore: flujos_aprobacion_perfil_vs_usuario_pro {}

explore: flujos_aprob_pasos {
  join: flujos_aprobacion {
    type: left_outer 
    sql_on: ${flujos_aprob_pasos.flujos_aprobacion_id} = ${flujos_aprobacion.id} ;;
    relationship: many_to_one
  }
}

explore: flujos_pasos_aprobaciones {}

explore: fn_partes_relacionadas_reporte {}

explore: fn_partes_relacionadas_reporte_1 {}

explore: fn_proveedores_cenit_reporte {}

explore: fn_reporte_general_proveedores_cenit {}

explore: fn_reporte_general_proveedores_perenco {}

explore: fn_solfin_descuento_reporte {}

explore: fn_solfin_indicadores_mensaje_reporte {}

explore: fn_solfin_reporte_facturas {}

explore: fn_solfin_reporte_facturas_corona {}

explore: fn_solfin_reporte_facturas_corona_pruebas {}

explore: fn_solfin_reporte_facturas_italcol {}

explore: fn_solfin_reporte_facturas_italcol_historico {}

explore: fn_solfin_reporte_indicadores_italcol {}

explore: foto_equipo_cargado_proveedor_acuacar {}

explore: generales_catalogos_flujos_aprobaciones_dependencias_oxxo {}

explore: generales_catalogos_flujos_aprobaciones_oxxo {}

explore: gestion_mfa {}

explore: grupo_compras_proveedor_pivot {}

explore: grupo_compras_usuario {}

explore: historial_aprobaciones {
  join: usuarios {
    type: left_outer 
    sql_on: ${historial_aprobaciones.usuario_id} = ${usuarios.id} ;;
    relationship: many_to_one
  }

  join: ofertas {
    type: left_outer 
    sql_on: ${historial_aprobaciones.oferta_id} = ${ofertas.id} ;;
    relationship: many_to_one
  }
}

explore: historial_evaluacion_mano_de_obra_acuacar {}

explore: historial_validacion_cliente {}

explore: historial_validacion_cliente_petroperu {}

explore: historial_validacion_consumidor {}

explore: historico_acciones_ocensa_solicitudes {
  join: solicitud {
    type: left_outer 
    sql_on: ${historico_acciones_ocensa_solicitudes.solicitud_id} = ${solicitud.id} ;;
    relationship: many_to_one
  }
}

explore: historico_equipo_cargado_por_proveedor_acuacar {}

explore: historico_personal_cargado_por_proveedor_acuacar {}

explore: hocol_datos_precalificaciones_tiempo {}

explore: hocol_datos_proveedores {}

explore: imagenes_catalogos {}

explore: imagenes_ruta_general {}

explore: imagen_general {}

explore: indicadores_retencion_impuesto_corona {}

explore: informacion_adicional_equipo_cargado_por_proveedor_acuacar {}

explore: informacion_adicional_equipo_contratos_acuacar {}

explore: informacion_adicional_personal_cargado_por_proveedor_acuacar {}

explore: informacion_adicional_personal_contratos_acuacar {}

explore: informacion_credito_consumidor {}

explore: informacion_plantillas_vanti {}

explore: informacion_vinculacion_consumidor {}

explore: informacion_vinculacion_proveedor {}

explore: inventarios_stocks_materiales_oxxo {}

explore: inventarios_stocks_materiales_oxxo_no_borrar {}

explore: jobs {}

explore: lineas_delegadas {}

explore: listas_restrictivas_administrable {}

explore: listas_restrictivas_tiempos {}

explore: lista_restrictiva_proveedores {}

explore: logs_analisis_contraparte_excel {}

explore: logs_analisis_contraparte_pdf {}

explore: logs_solicitudes {}

explore: logs_solped_api_managment {}

explore: log_cron_mst_solicitudes {}

explore: log_lectura_emails {}

explore: maestras {
  join: clientes {
    type: left_outer 
    sql_on: ${maestras.cliente_id} = ${clientes.id} ;;
    relationship: many_to_one
  }
}

explore: maestras_criterios {
  join: maestras {
    type: left_outer 
    sql_on: ${maestras_criterios.maestra_id} = ${maestras.id} ;;
    relationship: many_to_one
  }

  join: clientes {
    type: left_outer 
    sql_on: ${maestras.cliente_id} = ${clientes.id} ;;
    relationship: many_to_one
  }
}

explore: maestras_criteriosold {
  join: maestras {
    type: left_outer 
    sql_on: ${maestras_criteriosold.maestra_id} = ${maestras.id} ;;
    relationship: many_to_one
  }

  join: clientes {
    type: left_outer 
    sql_on: ${maestras.cliente_id} = ${clientes.id} ;;
    relationship: many_to_one
  }
}

explore: maestras_generales {}

explore: maestras_generales_tipo {}

explore: maestras_gerencia_vs_usuario {}

explore: maestra_almacen_corona {}

explore: maestra_bancos_corona {}

explore: maestra_banco_propio_corona {}

explore: maestra_categoria_fiscal_corona {}

explore: maestra_centros_de_costo {}

explore: maestra_centro_corona {}

explore: maestra_clase_documento_corona {}

explore: maestra_condicion_pago_companias_no_integradas_corona {}

explore: maestra_condicion_pago_corona {}

explore: maestra_cuenta_proveedor_corona {}

explore: maestra_estados_seguimiento_corona {}

explore: maestra_fechas_evaluacion_desempeno_emtelco {}

explore: maestra_gerencias {}

explore: maestra_grupo_articulos_corona {}

explore: maestra_grupo_compras_corona {}

explore: maestra_grupo_cuentas_corona {}

explore: maestra_grupo_tesoreria_corona {}

explore: maestra_incoterm_corona {}

explore: maestra_indicador_impto_corona {}

explore: maestra_indicador_minorias_corona {}

explore: maestra_indicador_ret_corona {}

explore: maestra_moneda_corona {}

explore: maestra_motivo_rechazo_corona {}

explore: maestra_organizacion_compras_corona {}

explore: maestra_preguntas_contratos_desempeno {
  join: clientes {
    type: left_outer 
    sql_on: ${maestra_preguntas_contratos_desempeno.cliente_id} = ${clientes.id} ;;
    relationship: many_to_one
  }
}

explore: maestra_proveedor_dev {}

explore: maestra_ramo_corona {}

explore: maestra_reg_info_corona {}

explore: maestra_servicios {}

explore: maestra_sociedad_corona {}

explore: maestra_tipo_factura {}

explore: maestra_tipo_factura_corona {}

explore: maestra_tipo_mat {}

explore: maestra_tipo_posicion_corona {}

explore: maestra_tipo_retencion_corona {}

explore: maestra_tipo_retencion_tmp {}

explore: maestra_unidad_medida_corona {}

explore: maestra_un_negocio_corona {}

explore: mantenimientos_cliente {}

explore: materiales_imagenes {}

explore: materiales_imagenes_postobon {}

explore: material_apodos {}

explore: material_apodos_postobon {}

explore: material_codigo_homologacion {}

explore: mensajeria_certificados_italcol {}

explore: mensajes {}

explore: mensajes_categorizacion {}

explore: mensajes_consolidados {}

explore: mensajes_datos_adicionales {}

explore: mensajes_leidos_italcol {}

explore: mensajes_old {}

explore: metro_datos_materiales_sap {}

explore: metro_datos_presupuestales_sap {}

explore: metro_datos_presupuestales_sap_posiciones {}

explore: metro_doc_presupuestales_sap {}

explore: metro_doc_presupuestales_sap_posiciones {}

explore: modificacion_datos_impuestos {
  join: clientes {
    type: left_outer 
    sql_on: ${modificacion_datos_impuestos.cliente_id} = ${clientes.id} ;;
    relationship: many_to_one
  }
}

explore: modulos_funciones {}

explore: mstalmacenes {}

explore: mstcentrocosto {}

explore: mstcentrocostopostobon_ws {}

explore: mstcentrocostopostobon_ws_johnnathan {}

explore: mstcentrologistico {}

explore: mstcentrologistico_postobon {}

explore: mstcentrologistico_postobon_18082023 {}

explore: mstcondicionespago {}

explore: mstelementospep {}

explore: mstelementospep_subcliente {}

explore: mstfamilias {}

explore: mstfestivos {}

explore: mstformaspago {}

explore: mstgrupocompras {}

explore: mstgruposelementospep {}

explore: mstimpuestos {}

explore: mstimputacion {}

explore: mstplanificadornecesidades {}

explore: mstproductos {}

explore: mstregiones {}

explore: mstsegmentos {}

explore: mstunidadmedida {}

explore: mst_abogados {}

explore: mst_accion_plan_rector {}

explore: mst_actividades_confa {}

explore: mst_actividades_confa_links {}

explore: mst_actividades_confa_links_pivot {
  join: mst_actividades_confa {
    type: left_outer 
    sql_on: ${mst_actividades_confa_links_pivot.mst_actividades_confa_id} = ${mst_actividades_confa.id} ;;
    relationship: many_to_one
  }
}

explore: mst_actividade_usuario_lider {
  join: usuarios {
    type: left_outer 
    sql_on: ${mst_actividade_usuario_lider.usuario_id} = ${usuarios.id} ;;
    relationship: many_to_one
  }
}

explore: mst_actividade_usuario_negociador {
  join: usuarios {
    type: left_outer 
    sql_on: ${mst_actividade_usuario_negociador.usuario_id} = ${usuarios.id} ;;
    relationship: many_to_one
  }
}

explore: mst_actividad_riesgo {}

explore: mst_aeropuertos {}

explore: mst_almacenes {}

explore: mst_ans_hocol {}

explore: mst_aplicabilidad_polizas_sociedad {}

explore: mst_areas {}

explore: mst_area_por_dependencia {}

explore: mst_area_superintendencias {}

explore: mst_categorias {}

explore: mst_categorias_biblioteca {}

explore: mst_categorias_cliente {}

explore: mst_categorias_vanti {}

explore: mst_categoria_compras {}

explore: mst_categoria_modelos {}

explore: mst_centro_costo {}

explore: mst_centro_logistico {}

explore: mst_clase_negocio {}

explore: mst_condiciones_pago {}

explore: mst_conteo_proveedores_solicitudes {}

explore: mst_contratos {}

explore: mst_contratos_adicionales {}

explore: mst_contratos_alcanos {}

explore: mst_criterios_evaluacion {}

explore: mst_descripcion_compras {}

explore: mst_descripcion_compras_plazos {}

explore: mst_direccion_vice {}

explore: mst_direccion_x_area {}

explore: mst_dtf {}

explore: mst_elementos_pep {}

explore: mst_elementos_pep_metro {}

explore: mst_estacion {}

explore: mst_factores_importacion {
  join: clientes {
    type: left_outer 
    sql_on: ${mst_factores_importacion.cliente_id} = ${clientes.id} ;;
    relationship: many_to_one
  }
}

explore: mst_familias {}

explore: mst_familias_metro {}

explore: mst_formas_pago {}

explore: mst_general_titulos_items_modulos {}

explore: mst_general_titulos_modulos {}

explore: mst_general_titulos_modulos_config {}

explore: mst_gerencias {}

explore: mst_grupos_analistas {}

explore: mst_grupos_elementospep {}

explore: mst_grupo_compras {}

explore: mst_iconos_personalizados {}

explore: mst_impuestos {}

explore: mst_impuestosold {}

explore: mst_imputacion {}

explore: mst_indicador_solicitud {}

explore: mst_iniciativa {}

explore: mst_ipc {
  join: clientes {
    type: left_outer 
    sql_on: ${mst_ipc.cliente_id} = ${clientes.id} ;;
    relationship: many_to_one
  }
}

explore: mst_listado_chequeo_visitas {}

explore: mst_lugar_entrega {}

explore: mst_materiales {}

explore: mst_materiales_acuacar {}

explore: mst_materiales_formulas_basicas_oxxo {}

explore: mst_materiales_oxxo {
  join: clientes {
    type: left_outer 
    sql_on: ${mst_materiales_oxxo.cliente_id} = ${clientes.id} ;;
    relationship: many_to_one
  }
}

explore: mst_material_metro {}

explore: mst_material_sap {}

explore: mst_metro_plan_rector {}

explore: mst_monto_comite {}

explore: mst_monto_directiva {}

explore: mst_monto_doc_contractual {}

explore: mst_objetivo {}

explore: mst_objetivo_pec {}

explore: mst_ordenes {}

explore: mst_orden_estadisticas {}

explore: mst_organizacion_compras {}

explore: mst_parametros_ans {}

explore: mst_perspectiva {}

explore: mst_polizas {}

explore: mst_polizas_actividades_riesgo {}

explore: mst_preguntas_criterios_evaluacion {}

explore: mst_puertos {}

explore: mst_regiones {}

explore: mst_representante_legal {}

explore: mst_sap_ocensa {}

explore: mst_segmentos {}

explore: mst_sistemas_gestion {}

explore: mst_smmlv {}

explore: mst_sociedad {}

explore: mst_sociedades_empresas {}

explore: mst_sociedades_paises {
  join: clientes {
    type: left_outer 
    sql_on: ${mst_sociedades_paises.cliente_id} = ${clientes.id} ;;
    relationship: many_to_one
  }
}

explore: mst_subarea {}

explore: mst_subcategorias {}

explore: mst_tasas_cambio {
  join: clientes {
    type: left_outer 
    sql_on: ${mst_tasas_cambio.cliente_id} = ${clientes.id} ;;
    relationship: many_to_one
  }
}

explore: mst_tiendas_oxxo {
  join: clientes {
    type: left_outer 
    sql_on: ${mst_tiendas_oxxo.cliente_id} = ${clientes.id} ;;
    relationship: many_to_one
  }
}

explore: mst_tipo_contrato {}

explore: mst_tipo_modificacion {}

explore: mst_tipo_multa {}

explore: mst_unidad_medida_old {}

explore: mst_unidad_medidas {}

explore: mst_unidad_medidas2 {}

explore: mst_usuarios_firmantes {}

explore: mst_usuarios_grupos_analistas {
  join: usuarios {
    type: left_outer 
    sql_on: ${mst_usuarios_grupos_analistas.usuarios_id} = ${usuarios.id} ;;
    relationship: many_to_one
  }
}

explore: mst_wacc {
  join: clientes {
    type: left_outer 
    sql_on: ${mst_wacc.cliente_id} = ${clientes.id} ;;
    relationship: many_to_one
  }

  join: usuarios {
    type: left_outer 
    sql_on: ${mst_wacc.usuario_id} = ${usuarios.id} ;;
    relationship: many_to_one
  }
}

explore: notificaciones_login_proveedores {}

explore: notificacion_aprobaciones_modulos {}

explore: notificacion_aprobaciones_modulos_textos {}

explore: nueva_fecha_programada {}

explore: numerales_clausulas {}

explore: oauth_access_tokens {
  join: users {
    type: left_outer 
    sql_on: ${oauth_access_tokens.user_id} = ${users.id} ;;
    relationship: many_to_one
  }

  join: clients {
    type: left_outer 
    sql_on: ${oauth_access_tokens.client_id} = ${clients.id} ;;
    relationship: many_to_one
  }
}

explore: oauth_auth_codes {
  join: clients {
    type: left_outer 
    sql_on: ${oauth_auth_codes.client_id} = ${clients.id} ;;
    relationship: many_to_one
  }

  join: users {
    type: left_outer 
    sql_on: ${oauth_auth_codes.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}

explore: oauth_clients {
  join: users {
    type: left_outer 
    sql_on: ${oauth_clients.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}

explore: oauth_personal_access_clients {
  join: clients {
    type: left_outer 
    sql_on: ${oauth_personal_access_clients.client_id} = ${clients.id} ;;
    relationship: many_to_one
  }
}

explore: oauth_refresh_tokens {}

explore: observaciones_proveedores_solicitud {
  join: proveedores_solicitud {
    type: left_outer 
    sql_on: ${observaciones_proveedores_solicitud.proveedores_solicitud_id} = ${proveedores_solicitud.id} ;;
    relationship: many_to_one
  }
}

explore: observacion_solicitud_registro {}

explore: odl_participantes {}

explore: ofertas {}

explore: ofertas_acciones {}

explore: ofertas_comentarios_observaciones {}

explore: ofertas_contratos_en_ejecucion {}

explore: ofertas_criterios_evaluacion {}

explore: ofertas_criterios_evaluacion_datos_adicionales {}

explore: ofertas_criterios_validacion_apertura_sobres {}

explore: ofertas_cuadro_economico_info {}

explore: ofertas_cuadro_economico_plantilla {}

explore: ofertas_cuadro_economico_plantilla_cliente {}

explore: ofertas_cuadro_economico_plantilla_cliente_adicional {
  join: ofertas_cuadro_economico_plantilla {
    type: left_outer 
    sql_on: ${ofertas_cuadro_economico_plantilla_cliente_adicional.ofertas_cuadro_economico_plantilla_id} = ${ofertas_cuadro_economico_plantilla.id} ;;
    relationship: many_to_one
  }
}

explore: ofertas_cuadro_economico_proveedor {
  join: plantillas {
    type: left_outer 
    sql_on: ${ofertas_cuadro_economico_proveedor.plantilla_id} = ${plantillas.id} ;;
    relationship: many_to_one
  }
}

explore: ofertas_datos_adicionales_acuacar {}

explore: ofertas_datos_adicionales_emtelco {}

explore: ofertas_datos_adicionales_petro_peru {}

explore: ofertas_delegadas {}

explore: ofertas_error {}

explore: ofertas_estados_financieros {}

explore: ofertas_estudios_existentes {}

explore: ofertas_historico_adjudicacion {}

explore: ofertas_log_ws_bizagi_terpel {}

explore: ofertas_proveedores_c_resultado_validacion_apertura_sobres {}

explore: ofertas_proveedores_resultado_validacion_apertura_sobres {}

explore: ofertas_soportes_adjudicacion {}

explore: oferta_adjudicaciones {}

explore: oferta_adjudicaciones_atributos_adicionales {}

explore: oferta_adjudicaciones_empresas {}

explore: oferta_asistencia_apertura_sobre_petroperu {}

explore: oferta_biblioteca_lotes {}

explore: oferta_biblioteca_lotes_contenido {}

explore: oferta_cambio_datos {}

explore: oferta_cuadro_economico_comparativo {
  join: ofertas {
    type: left_outer 
    sql_on: ${oferta_cuadro_economico_comparativo.oferta_id} = ${ofertas.id} ;;
    relationship: many_to_one
  }
}

explore: oferta_datos_adicionales {
  join: ofertas {
    type: left_outer 
    sql_on: ${oferta_datos_adicionales.oferta_id} = ${ofertas.id} ;;
    relationship: many_to_one
  }

  join: solicitud {
    type: left_outer 
    sql_on: ${oferta_datos_adicionales.solicitud_id} = ${solicitud.id} ;;
    relationship: many_to_one
  }
}

explore: oferta_documentos {}

explore: oferta_documentos_criterios_oferentes {}

explore: oferta_documentos_criterios_oferentes_evaluaciones {}

explore: oferta_documentos_oferentes {
  join: ofertas {
    type: left_outer 
    sql_on: ${oferta_documentos_oferentes.oferta_id} = ${ofertas.id} ;;
    relationship: many_to_one
  }
}

explore: oferta_documentos_ofertascliente {}

explore: oferta_estados_homologados {}

explore: oferta_evaluaciones {}

explore: oferta_evaluacion_aprobacion_criterios_sobres {}

explore: oferta_evaluacion_documento {
  join: usuarios {
    type: left_outer 
    sql_on: ${oferta_evaluacion_documento.usuario_id} = ${usuarios.id} ;;
    relationship: many_to_one
  }

  join: ofertas {
    type: left_outer 
    sql_on: ${oferta_evaluacion_documento.oferta_id} = ${ofertas.id} ;;
    relationship: many_to_one
  }
}

explore: oferta_evaluacion_documento_historial {}

explore: oferta_evaluacion_proveedor_resultado_tecnicos {}

explore: oferta_evaluacion_proveedor_resultado_tecnico_criterios {}

explore: oferta_items_informacion_adicional_corona {}

explore: oferta_log_eventos {}

explore: oferta_lotes {}

explore: oferta_lotes_columnas_adicionales {}

explore: oferta_lotes_informacion_adicional_corona {}

explore: oferta_lotes_informacion_adicional_ocensa {}

explore: oferta_lotes_informacion_adicional_odl {}

explore: oferta_lotes_items {}

explore: oferta_lotes_items_datos_adicionales {}

explore: oferta_lotes_items_imputacion_ocensa {}

explore: oferta_lotes_items_informacion_adicional_ocensa {}

explore: oferta_lotes_items_informacion_adicional_odl {}

explore: oferta_lotes_items_proveedores {}

explore: oferta_lotes_items_proveedores_adicionales {}

explore: oferta_maestras_generales {}

explore: oferta_moneda {}

explore: oferta_participantes_jean {}

explore: oferta_participantes_registro_consorcio {}

explore: oferta_participantes_registro_participacion {}

explore: oferta_sobres_criterios_evaluacion {}

explore: oferta_sobres_oferentes {}

explore: oferta_stfp_corona {}

explore: oferta_stfp_historial_corona {}

explore: oferta_usuarios_apertura_sobres_petroperu {}

explore: oferta_usuarios_aprobadores {}

explore: oferta_usuarios_aprobadores_adicionales {
  join: ofertas {
    type: left_outer 
    sql_on: ${oferta_usuarios_aprobadores_adicionales.oferta_id} = ${ofertas.id} ;;
    relationship: many_to_one
  }

  join: usuarios {
    type: left_outer 
    sql_on: ${oferta_usuarios_aprobadores_adicionales.usuario_id} = ${usuarios.id} ;;
    relationship: many_to_one
  }
}

explore: oferta_usuarios_internos {}

explore: oferta_usuarios_permisos_categorias {}

explore: oferta_usuarios_permisos_criterios_tecnicos {}

explore: oferta_visitasobra {
  join: ofertas {
    type: left_outer 
    sql_on: ${oferta_visitasobra.oferta_id} = ${ofertas.id} ;;
    relationship: many_to_one
  }
}

explore: oferta_visitasobra_documentos {}

explore: offerer_envelopes {}

explore: offerer_envelopes_documents {}

explore: offerer_envelopes_evaluated_documents {}

explore: oldcatalogos_asignacion_proyectos {}

explore: ordenes_compras_anulaciones_oxxo {}

explore: ordenes_compras_detalle_oxxo {}

explore: ordenes_compras_entradas_mercancias_detalle_oxxo {}

explore: ordenes_compras_entradas_mercancias_oxxo {}

explore: ordenes_compras_mensajes_oxxo {}

explore: ordenes_compras_oxxo {}

explore: ordenes_entradas_detalle_oxxo {}

explore: ordenes_entradas_entradas_mercancias_detalle_oxxo {}

explore: ordenes_entradas_entradas_mercancias_oxxo {}

explore: ordenes_entradas_oxxo {}

explore: ordenes_salidas_detalle_oxxo {}

explore: ordenes_salidas_entradas_mercancias_detalle_oxxo {}

explore: ordenes_salidas_entradas_mercancias_oxxo {}

explore: ordenes_salidas_oxxo {}

explore: orden_compras_postobon_ws {}

explore: orden_pedidos {}

explore: orden_pedidos_adicionales_emtelco {}

explore: orden_pedidos_adicionales_ocensa_contrato {}

explore: orden_pedidos_adicionales_ocensa_pedido {}

explore: orden_pedidos_items {}

explore: orden_pedidos_items_atributos_adicionales {}

explore: orden_pedidos_items_companias {}

explore: orden_pedidos_soportes_documentos {}

explore: organizacion_compras_usuario {}

explore: paa_ans_fecha_real {}

explore: paa_ejercicio {}

explore: paa_ejercicio_adicionales {}

explore: paa_ejercicio_anexos {}

explore: paa_ejercicio_consolidadores {}

explore: paa_ejercicio_historial {}

explore: paa_ejercicio_masiva_lineas {}

explore: paa_ejercicio_moneda {}

explore: paa_ejercicio_revision {}

explore: paa_ejercicio_usuarios_creador {}

explore: paa_linea {}

explore: paa_linea_anexo {}

explore: paa_linea_comentario {}

explore: paa_linea_comprador_abogado {}

explore: paa_linea_distribucion_analisis {}

explore: paa_linea_estacion {}

explore: paa_linea_etapa_ans {}

explore: paa_linea_material {}

explore: paa_linea_oferente {}

explore: paa_linea_orden {}

explore: paa_linea_otrocamp {}

explore: paa_linea_plan_accion {}

explore: paa_linea_presupuestal {}

explore: paa_linea_tipo_etapa_ans {}

explore: paa_proyectos_cliente {}

explore: password_resets {}

explore: pedidos_sap {}

explore: pedidos_sap_facturacion {}

explore: pedidos_sap_log {}

explore: pedidos_sap_movimientos {}

explore: pedidos_sap_posiciones {}

explore: pedido_contrato_cabped_prueba {}

explore: pedido_contrato_posped_prueba {}

explore: personal_cargado_por_proveedor_acuacar {
  join: contratos {
    type: left_outer 
    sql_on: ${personal_cargado_por_proveedor_acuacar.contrato_id} = ${contratos.id} ;;
    relationship: many_to_one
  }

  join: ofertas {
    type: left_outer 
    sql_on: ${contratos.oferta_id} = ${ofertas.id} ;;
    relationship: many_to_one
  }
}

explore: personal_cargado_por_proveedor_evaluacion_mensual_acuacar {}

explore: planes_desarrollo_mejora_proveedores {
  join: usuarios {
    type: left_outer 
    sql_on: ${planes_desarrollo_mejora_proveedores.usuario_id} = ${usuarios.id} ;;
    relationship: many_to_one
  }
}

explore: planes_desarrollo_mejora_proveedores_adjuntos {}

explore: plantillas {}

explore: plantillas_mensajeria {}

explore: plan_accion {}

explore: plan_accion_respuesta {}

explore: plan_accion_respuesta_adjuntos {}

explore: precalificacion {}

explore: precalificacion_financiera {}

explore: precalificacion_listas_rectrictivas_accionistas {}

explore: precalificacion_mansarovar_adjunto {}

explore: precalificacion_tecnica {}

explore: precalificacion_tecnica_actividades {}

explore: precalificacion_tecnica_certificados {}

explore: precalificacion_tecnica_experiencias_noaceptadas {}

explore: precalificacion_tecnica_resultados {}

explore: precalificacion_tecnica_resultado_certificados {}

explore: precalificacion_tecnica_resultado_experiencias {}

explore: preguntas_frecuentes {}

explore: preguntas_frecuentes_back {}

explore: preguntas_frecuentes_comentarios {}

explore: prequalification_certifications {}

explore: prequalification_companies {}

explore: prequalification_companies_experience {}

explore: prequalification_companies_financial_confa {}

explore: prequalification_companies_financial_confabk {}

explore: prequalification_companies_hse_certificados {}

explore: prequalification_companies_hse_sgsst {}

explore: prequalification_companies_intelcost {}

explore: prequalification_companies_restrictive_list {}

explore: prequalification_companies_result {}

explore: prequalification_companies_result_hse {}

explore: prequalification_companies_result_restrictive_list {}

explore: prequalification_companies_result_technique {}

explore: prequalification_companies_rv {}

explore: prequalification_companies_vw_old {}

explore: prequalification_desempeno {}

explore: prequalification_experiences_helper {}

explore: prequalification_hse_peru {}

explore: prequalification_result_hse_peru {}

explore: prequalification_technique_companies_ruc_score {}

explore: pre_ordenes_compras_aprobaciones_oxxo {}

explore: pre_ordenes_compras_detalle_oxxo {}

explore: pre_ordenes_compras_oxxo {}

explore: productos {}

explore: productos_2019_05_16 {}

explore: productos_categoria {}

explore: productos_categoria_back {}

explore: productos_marcas {}

explore: productos_old {}

explore: producto_imagenes {}

explore: profesionales_solicitud {}

explore: proveedores_log_sincronizacion_hubspot {
  join: clientes {
    type: left_outer 
    sql_on: ${proveedores_log_sincronizacion_hubspot.cliente_id} = ${clientes.id} ;;
    relationship: many_to_one
  }
}

explore: proveedores_solicitud {}

explore: proveedores_solicitud_reportes {}

explore: proveedor_alta {}

explore: proveedor_grupo_cuentas_corona {}

explore: proveedor_impuestos_corona {}

explore: proveedor_impuestos_corona_indicadores_retencion {}

explore: proveedor_log_peticiones_corona {}

explore: proveedor_log_sgpa {}

explore: proveedor_observaciones_habilitacion {}

explore: proveedor_reportes_calificacion {}

explore: proveedor_solicitudes_vinculacion {}

explore: proveedor_solicitud_registro {}

explore: proveedor_vinculacion_corona {}

explore: proveedor_vinculacion_corona_empresas {}

explore: purchase_orders_mail_ocns {}

explore: purchase_orders_ocns {}

explore: regionales {
  join: clientes {
    type: left_outer 
    sql_on: ${regionales.cliente_id} = ${clientes.id} ;;
    relationship: many_to_one
  }
}

explore: registro_envios_comunicados_cliente_proveedor {}

explore: relacion_biblioteca_categoria {}

explore: relacion_categoria_oferta_documento {}

explore: relacion_gerencia_servicio {}

explore: relacion_proveedor {}

explore: relacion_proveedor_emtelco {}

explore: relacion_proveedor_italcol {}

explore: relationship_usuario_subcliente {}

explore: reporte_evaluaciones_contrato {}

explore: reporte_paa_linea_tiempo {}

explore: reporte_solicitud_ecopetrol {}

explore: requisiciones {}

explore: requisiciones_generales {}

explore: requisiciones_generales_adjuntos {}

explore: requisiciones_generales_materiales {}

explore: requisiciones_moneda {}

explore: requisiciones_solicitudes_materiales {}

explore: requisicion_anexos {}

explore: requisicion_comentarios {}

explore: requisicion_historial_aprobacion {
  join: usuarios {
    type: left_outer 
    sql_on: ${requisicion_historial_aprobacion.usuario_id} = ${usuarios.id} ;;
    relationship: many_to_one
  }
}

explore: requisicion_items {}

explore: requisicion_justificacion {}

explore: requisicion_otrosi {}

explore: requisicion_participantes {}

explore: reservas_materiales_oxxo {}

explore: respuesta_mensajeria_italcol {}

explore: resultado_informacion_financiera {}

explore: riesgo_cumplimiento_ciiu_proveedor {}

explore: riesgo_cumplimiento_ciudad_proveedor {}

explore: riesgo_cumplimiento_pais_proveedor {}

explore: riesgo_pais_proveedor {}

explore: rol_usuarios {}

explore: salidas_almacen_otros_destinos_detalle_oxxo {}

explore: salidas_almacen_otros_destinos_oxxo {}

explore: sap_requests_ocns {}

explore: seguimiento_acciones {
  join: clientes {
    type: left_outer 
    sql_on: ${seguimiento_acciones.cliente_id} = ${clientes.id} ;;
    relationship: many_to_one
  }
}

explore: seguimiento_detalles {}

explore: solfin_agentes {}

explore: solfin_agentes_16_06_2023 {}

explore: solfin_agentes_configuracion_negocios {}

explore: solfin_agentes_documentos_alta {}

explore: solfin_agentes_factoresasociados {}

explore: solfin_agentes_usuarios {}

explore: solfin_api_graph {}

explore: solfin_archivo_formato {}

explore: solfin_asignaciones_analistas {
  join: usuarios {
    type: left_outer 
    sql_on: ${solfin_asignaciones_analistas.usuario_id} = ${usuarios.id} ;;
    relationship: many_to_one
  }
}

explore: solfin_bitacora_factura {}

explore: solfin_bitacora_factura_copy1 {}

explore: solfin_cambio_factura_log {}

explore: solfin_casos_analistas {}

explore: solfin_centro_costo {}

explore: solfin_centro_operacion {}

explore: solfin_certificado_rel_mensaje {}

explore: solfin_cia_maestras {
  join: clientes {
    type: left_outer 
    sql_on: ${solfin_cia_maestras.cliente_id} = ${clientes.id} ;;
    relationship: many_to_one
  }
}

explore: solfin_cierres_radicacion {}

explore: solfin_comentarios_radicacion {}

explore: solfin_compe_reten {}

explore: solfin_consulta_dian {}

explore: solfin_dian_avalista {}

explore: solfin_dian_mandato {}

explore: solfin_ea_doct_alamcen {}

explore: solfin_em_factura_rel {}

explore: solfin_entrada_almacen {}

explore: solfin_errores_soap {}

explore: solfin_eventos_dian_masivo {}

explore: solfin_eventos_radian {}

explore: solfin_factores_alta {}

explore: solfin_factores_documentos_solicitud_alta {}

explore: solfin_facturas_mensajes {}

explore: solfin_facturas_mensajes_respo {}

explore: solfin_facturas_mensajes_respo_fact {}

explore: solfin_facturas_rel_mensaje {}

explore: solfin_factura_adicional {}

explore: solfin_factura_almacen {}

explore: solfin_factura_almecen_rel {}

explore: solfin_factura_compensacion {}

explore: solfin_factura_compensacion_23_06_23 {}

explore: solfin_factura_pedidos {}

explore: solfin_factura_pedidos_23_06_23 {}

explore: solfin_factura_pre_otro {}

explore: solfin_factura_rel {}

explore: solfin_factura_reteciones {}

explore: solfin_factura_reteciones_23_06_23 {}

explore: solfin_factura_solicitud_descuento {}

explore: solfin_factura_soportes {}

explore: solfin_factura_soportes_italcol {}

explore: solfin_factura_soporte_mensaje {}

explore: solfin_formatos_factor {}

explore: solfin_formato_mensaje {}

explore: solfin_grupos_analistas_solfin_formato_mensaje {}

explore: solfin_gr_factura {}

explore: solfin_historial_casos_endevolucion {}

explore: solfin_historial_casos_enescalamiento {}

explore: solfin_inter_italcol_entrada_almacen {}

explore: solfin_motivo_rechazo {}

explore: solfin_negocios {}

explore: solfin_negocios_agentes_asociados {}

explore: solfin_negocios_soportes {}

explore: solfin_notificacion_correos {}

explore: solfin_noti_correo_lect {}

explore: solfin_oc_factura_rel {}

explore: solfin_orden {}

explore: solfin_ordenes_compra_factura {}

explore: solfin_orden_bk_05022024 {}

explore: solfin_pagadores_alta {}

explore: solfin_pagadores_documentos_solicitud_alta {}

explore: solfin_partida_presupuestal {}

explore: solfin_porcentaje {}

explore: solfin_po_archivos_por_subir {}

explore: solfin_po_archivos_por_subir_data {}

explore: solfin_proveedores_alta {}

explore: solfin_proveedores_documentos_solicitud_alta {}

explore: solfin_proveedor_cliente {}

explore: solfin_proveedor_importaciones {}

explore: solfin_proveedor_lect_correos_faltan {}

explore: solfin_proveedor_rel_mensaje {}

explore: solfin_reglas_archivos {}

explore: solfin_responsable_contabilidad {}

explore: solfin_responsable_contabilidad_mnl {}

explore: solfin_responsable_msg {}

explore: solfin_sc_factura_rel {}

explore: solfin_seguimiento_asignacion_factura {}

explore: solfin_seguimiento_documento_almacen {}

explore: solfin_seguimiento_factura_italcol {}

explore: solfin_servicio_wsdl {}

explore: solfin_soportes_almacen {}

explore: solfin_tasa_valores_comfirming {}

explore: solfin_tiempo_gestion_factura {}

explore: solfin_tipo_evento_radian {}

explore: solfin_tipo_operacion {}

explore: solfin_unidad_negocio {}

explore: solfin_usuario_delcop {}

explore: solicitud {}

explore: solicitudes_en_firme_pedidos_compras_aprobaciones_oxxo {}

explore: solicitudes_en_firme_pedidos_compras_detalle_oxxo {}

explore: solicitudes_en_firme_pedidos_compras_oxxo {}

explore: solicitudes_pedidos_compras_aprobaciones_oxxo {}

explore: solicitudes_pedidos_compras_detalle_oxxo {}

explore: solicitudes_pedidos_compras_oxxo {}

explore: solicitudes_pedidos_compras_tasas_cambios_oxxo {}

explore: solicitudes_pedidos_devoluciones_aprobaciones_oxxo {}

explore: solicitudes_pedidos_devoluciones_detalle_oxxo {}

explore: solicitudes_pedidos_devoluciones_oxxo {}

explore: solicitudes_registro {}

explore: solicitudes_sap {
  join: clientes {
    type: left_outer 
    sql_on: ${solicitudes_sap.cliente_id} = ${clientes.id} ;;
    relationship: many_to_one
  }
}

explore: solicitud_acta {}

explore: solicitud_actividad_proveedor {}

explore: solicitud_adicionales {}

explore: solicitud_comentarios {}

explore: solicitud_concepto {}

explore: solicitud_criterio {}

explore: solicitud_datos_adicionales_odl {}

explore: solicitud_ecopetrol {
  join: clientes {
    type: left_outer 
    sql_on: ${solicitud_ecopetrol.cliente_id} = ${clientes.id} ;;
    relationship: many_to_one
  }
}

explore: solicitud_ecopetrol_categorias {}

explore: solicitud_ecopetrol_datos_adicionales {
  join: solicitud {
    type: left_outer 
    sql_on: ${solicitud_ecopetrol_datos_adicionales.solicitud_id} = ${solicitud.id} ;;
    relationship: many_to_one
  }
}

explore: solicitud_ecopetrol_departamentos_regional {}

explore: solicitud_ecopetrol_departamentos_vs_maestra {
  join: maestras {
    type: left_outer 
    sql_on: ${solicitud_ecopetrol_departamentos_vs_maestra.maestra_id} = ${maestras.id} ;;
    relationship: many_to_one
  }

  join: clientes {
    type: left_outer 
    sql_on: ${maestras.cliente_id} = ${clientes.id} ;;
    relationship: many_to_one
  }
}

explore: solicitud_ecopetrol_gestion {
  join: solicitud {
    type: left_outer 
    sql_on: ${solicitud_ecopetrol_gestion.solicitud_id} = ${solicitud.id} ;;
    relationship: many_to_one
  }
}

explore: solicitud_ecopetrol_gestion_adendos {}

explore: solicitud_ecopetrol_gestion_campos_adicionales {}

explore: solicitud_ecopetrol_gestion_historial {
  join: usuarios {
    type: left_outer 
    sql_on: ${solicitud_ecopetrol_gestion_historial.usuario_id} = ${usuarios.id} ;;
    relationship: many_to_one
  }
}

explore: solicitud_ecopetrol_gestion_observaciones {
  join: usuarios {
    type: left_outer 
    sql_on: ${solicitud_ecopetrol_gestion_observaciones.usuario_id} = ${usuarios.id} ;;
    relationship: many_to_one
  }
}

explore: solicitud_ecopetrol_gestion_observacion_soportes {}

explore: solicitud_ecopetrol_maestras {}

explore: solicitud_ecopetrol_maestra_vs_gestores_backup {
  join: maestras {
    type: left_outer 
    sql_on: ${solicitud_ecopetrol_maestra_vs_gestores_backup.maestra_id} = ${maestras.id} ;;
    relationship: many_to_one
  }

  join: clientes {
    type: left_outer 
    sql_on: ${maestras.cliente_id} = ${clientes.id} ;;
    relationship: many_to_one
  }
}

explore: solicitud_ecopetrol_modalidad {}

explore: solicitud_ecopetrol_sociedades {}

explore: solicitud_ecopetrol_soporte {
  join: solicitud {
    type: left_outer 
    sql_on: ${solicitud_ecopetrol_soporte.solicitud_id} = ${solicitud.id} ;;
    relationship: many_to_one
  }
}

explore: solicitud_ecopetrol_subcategorias {}

explore: solicitud_ecopetrol_tipo_proceso {}

explore: solicitud_ecopetrol_tipo_proceso_vs_modalidad {}

explore: solicitud_ecopetrol_vicepresidencias {}

explore: solicitud_estacion {}

explore: solicitud_excel_guardados {}

explore: solicitud_fechas_ocensa {}

explore: solicitud_historial_asignacion {}

explore: solicitud_listas_automaticas_logs {}

explore: solicitud_listas_automaticas_logs_2 {}

explore: solicitud_listas_control {}

explore: solicitud_listas_nombres {}

explore: solicitud_listas_partidos_politicos {}

explore: solicitud_listas_restrictivas {}

explore: solicitud_listas_restrictivas_analisis {}

explore: solicitud_listas_restrictivas_analisis_detalles {}

explore: solicitud_listas_restrictivas_bases {}

explore: solicitud_listas_restrictivas_consumos {}

explore: solicitud_listas_restrictivas_diligenciamiento {}

explore: solicitud_listas_restrictivas_diligenciamiento_copy1 {}

explore: solicitud_listas_restrictivas_excel {}

explore: solicitud_listas_restrictivas_excel_bases_consultadas {}

explore: solicitud_listas_restrictivas_excel_datos {}

explore: solicitud_listas_restrictivas_excel_hallazgos {}

explore: solicitud_listas_restrictivas_logs {}

explore: solicitud_listas_restrictivas_mst_lista {}

explore: solicitud_listas_restrictivas_mst_tipo_lista {}

explore: solicitud_listas_restrictivas_pdf_datos_bases {}

explore: solicitud_listas_restrictivas_pdf_datos_bases_hallazgos {}

explore: solicitud_listas_restrictivas_web_service {}

explore: solicitud_lista_proveedores_dian {}

explore: solicitud_maestro_abogado {}

explore: solicitud_multidisciplinaria {}

explore: solicitud_observacion {}

explore: solicitud_ocensa_info_adicional {
  join: solicitud {
    type: left_outer 
    sql_on: ${solicitud_ocensa_info_adicional.solicitud_id} = ${solicitud.id} ;;
    relationship: many_to_one
  }
}

explore: solicitud_ocensa_soporte {
  join: solicitud {
    type: left_outer 
    sql_on: ${solicitud_ocensa_soporte.solicitud_id} = ${solicitud.id} ;;
    relationship: many_to_one
  }
}

explore: solicitud_oferente {}

explore: solicitud_orden {}

explore: solicitud_polizas {}

explore: solicitud_posicion {
  join: solicitud_posicion_cargue {
    type: left_outer 
    sql_on: ${solicitud_posicion.solicitud_posicion_cargue_id} = ${solicitud_posicion_cargue.id} ;;
    relationship: many_to_one
  }
}

explore: solicitud_posicion_cargue {}

explore: solicitud_posicion_cargue_detalle {}

explore: solicitud_posicion_cargue_detalle_odl {}

explore: solicitud_posicion_cargue_sap {
  join: solicitud {
    type: left_outer 
    sql_on: ${solicitud_posicion_cargue_sap.solicitud_id} = ${solicitud.id} ;;
    relationship: many_to_one
  }
}

explore: solicitud_pos_servicio {}

explore: solicitud_pos_servicio_almacen {}

explore: solicitud_restricciones_textos {}

explore: solicitud_revision_hse {}

explore: solicitud_revision_legal {}

explore: solicitud_servicio_cargue_detalle {}

explore: solicitud_servicio_cargue_detalle_odl {}

explore: solicitud_solpeds_odl {}

explore: solicitud_soporte {}

explore: solicitud_tablero_control {}

explore: solicitud_tablero_encabezados {}

explore: solicitud_tablero_riesgos {}

explore: solicitud_tasas_cambio {}

explore: solicitud_tipo_concepto {}

explore: solicitud_tipo_concepto_soportes {}

explore: solpeds {}

explore: solpeds_info_posicion {}

explore: solpeds_ocns {}

explore: solpeds_position_catalogue_ocns {}

explore: solpeds_position_ocns {
  join: solpeds {
    type: left_outer 
    sql_on: ${solpeds_position_ocns.solped_id} = ${solpeds.id} ;;
    relationship: many_to_one
  }
}

explore: solpeds_sap {}

explore: solpeds_status_ocns {
  join: solpeds {
    type: left_outer 
    sql_on: ${solpeds_status_ocns.solped_id} = ${solpeds.id} ;;
    relationship: many_to_one
  }
}

explore: standard_empresas {}

explore: subasta {}

explore: subastas_datos_adicionales_petroperu {}

explore: subasta_contenido {}

explore: subasta_lanzamientos_items {}

explore: subasta_lanzamientos_items_log {}

explore: subasta_lanzamientos_lotes {}

explore: subasta_lanzamientos_lotes_log {}

explore: subasta_lote {}

explore: subasta_lote_excepciones {}

explore: subasta_lote_item {}

explore: subasta_participantes {}

explore: subasta_precios_iniciales {
  join: subasta {
    type: left_outer 
    sql_on: ${subasta_precios_iniciales.subasta_id} = ${subasta.id} ;;
    relationship: many_to_one
  }
}

explore: subasta_precios_iniciales_archivo_log {}

explore: subasta_usuarios_internos {}

explore: subclientes {}

explore: subclientes_info_corona {}

explore: subclientes_revision_legal {
  join: subclientes {
    type: left_outer 
    sql_on: ${subclientes_revision_legal.subcliente_id} = ${subclientes.id} ;;
    relationship: many_to_one
  }
}

explore: sys00001_back {}

explore: tasas_cambio {
  join: clientes {
    type: left_outer 
    sql_on: ${tasas_cambio.cliente_id} = ${clientes.id} ;;
    relationship: many_to_one
  }
}

explore: tb_precalificacion {}

explore: tb_precalificacion_actividades {}

explore: tb_precalificacion_certificados {}

explore: tb_precalificacion_documentos_soporte_financiera {}

explore: tb_precalificacion_empresas {}

explore: tb_precalificacion_empresas_listas_restrictivas_hallazgos {}

explore: tb_precalificacion_empresas_listas_restrictivas_incidencias {}

explore: tb_precalificacion_empresa_actividades {}

explore: tb_precalificacion_empresa_certificados {}

explore: tb_precalificacion_empresa_desempeno {}

explore: tb_precalificacion_empresa_estado_financiero {}

explore: tb_precalificacion_empresa_estado_financiero_contratos_mansarova {}

explore: tb_precalificacion_empresa_estado_financiero_mansarovar {}

explore: tb_precalificacion_empresa_experiencias {}

explore: tb_precalificacion_empresa_habilitacion {}

explore: tb_precalificacion_empresa_hse {}

explore: tb_precalificacion_empresa_hse_cenit {}

explore: tb_precalificacion_empresa_hse_ocensa {}

explore: tb_precalificacion_empresa_listas_restrictivas {}

explore: tb_precalificacion_empresa_listas_restrictivas_v2 {}

explore: tb_precalificacion_empresa_otros_certificados {}

explore: tb_precalificacion_empresa_relacionamiento {}

explore: tb_precalificacion_empresa_resultados {}

explore: tb_precalificacion_empresa_sedes {}

explore: tb_precalificacion_evaluacion {}

explore: tb_precalificacion_evaluacion_roles {}

explore: tb_precalificacion_filtros_busqueda {}

explore: tb_precalificacion_financiera {}

explore: tb_precalificacion_flujo_aprobacion {}

explore: tb_precalificacion_hse {}

explore: tb_precalificacion_hse_alcanos {}

explore: tb_precalificacion_hse_cenit {}

explore: tb_precalificacion_hse_emtelco {}

explore: tb_precalificacion_hse_hocol {}

explore: tb_precalificacion_hse_independence {}

explore: tb_precalificacion_hse_mansarovar {}

explore: tb_precalificacion_hse_perenco {}

explore: tb_precalificacion_hse_peru {}

explore: tb_precalificacion_hse_tb_mansarovar {}

explore: tb_precalificacion_informacion_adicional {}

explore: tb_precalificacion_informacion_adicional_alcanos {}

explore: tb_precalificacion_informacion_adicional_cenit {}

explore: tb_precalificacion_informacion_adicional_documentos {}

explore: tb_precalificacion_informacion_adicional_independence {}

explore: tb_precalificacion_informacion_adicional_ocensa {}

explore: tb_precalificacion_informacion_adicional_odl_odc {}

explore: tb_precalificacion_informacion_adicional_perenco {}

explore: tb_precalificacion_ipc {}

explore: tb_precalificacion_linea {}

explore: tb_precalificacion_linea_no_relacionada {}

explore: tb_precalificacion_linea_plan {}

explore: tb_precalificacion_listas_hallazgos_alcanos {}

explore: tb_precalificacion_listas_hallazgos_confa {}

explore: tb_precalificacion_listas_hallazgos_hocol {}

explore: tb_precalificacion_listas_hallazgos_mansarovar {}

explore: tb_precalificacion_listas_hallazgos_ocensa {}

explore: tb_precalificacion_listas_hallazgos_odl {}

explore: tb_precalificacion_listas_hallazgos_perenco {}

explore: tb_precalificacion_listas_hallazgos_savia {}

explore: tb_precalificacion_listas_incidencias_alcanos {}

explore: tb_precalificacion_listas_incidencias_confa {}

explore: tb_precalificacion_listas_incidencias_hocol {}

explore: tb_precalificacion_listas_incidencias_mansarovar {}

explore: tb_precalificacion_listas_incidencias_ocensa {}

explore: tb_precalificacion_listas_incidencias_odl {}

explore: tb_precalificacion_listas_incidencias_perenco {}

explore: tb_precalificacion_listas_incidencias_savia {}

explore: tb_precalificacion_mansarovar {}

explore: tb_precalificacion_seguimiento {}

explore: tb_precalificacion_tasa_cambio {}

explore: tb_precalificacion_tecnica {}

explore: tb_precalificacion_tecnica_informacion_adicional {}

explore: tg_comite_plantilla_usuarios_permanentes {}

explore: tg_contratos {
  join: ofertas {
    type: left_outer 
    sql_on: ${tg_contratos.oferta_id} = ${ofertas.id} ;;
    relationship: many_to_one
  }
}

explore: tg_contratos_info_detalle_varchar {}

explore: tg_corona_solicitudes_liquidacion {}

explore: tg_ofertas {}

explore: tg_oferta_adjudicaciones {}

explore: tg_oferta_documentos {}

explore: tg_oferta_documentos_oferentes {
  join: ofertas {
    type: left_outer 
    sql_on: ${tg_oferta_documentos_oferentes.oferta_id} = ${ofertas.id} ;;
    relationship: many_to_one
  }
}

explore: tg_oferta_documentos_ofertascliente {}

explore: tg_oferta_evaluaciones {}

explore: tg_oferta_evaluacion_documento {
  join: usuarios {
    type: left_outer 
    sql_on: ${tg_oferta_evaluacion_documento.usuario_id} = ${usuarios.id} ;;
    relationship: many_to_one
  }

  join: ofertas {
    type: left_outer 
    sql_on: ${tg_oferta_evaluacion_documento.oferta_id} = ${ofertas.id} ;;
    relationship: many_to_one
  }
}

explore: tg_oferta_evaluacion_documento_historial {}

explore: tg_oferta_lotes {}

explore: tg_oferta_lotes_items {}

explore: tg_oferta_lotes_items_proveedores {}

explore: tg_oferta_participantes {}

explore: tg_oferta_sobres_criterios_evaluacion {}

explore: tg_oferta_usuarios_aprobadores {}

explore: tg_oferta_usuarios_internos {}

explore: tg_oferta_visitasobra {
  join: ofertas {
    type: left_outer 
    sql_on: ${tg_oferta_visitasobra.oferta_id} = ${ofertas.id} ;;
    relationship: many_to_one
  }
}

explore: tg_paa_linea {}

explore: tg_paa_linea_otrocamp {}

explore: tg_usuarios {}

explore: tg_usuarios_delegaciones {}

explore: tipos_retencion_impuesto_corona {}

explore: tokens_clientes {}

explore: token_password {
  join: usuarios {
    type: left_outer 
    sql_on: ${token_password.usuario_id} = ${usuarios.id} ;;
    relationship: many_to_one
  }
}

explore: transaccion_sincronizacion_tablas_expediting {}

explore: transitos_materiales_oxxo {}

explore: tr_pagos_cabecera {}

explore: tr_pagos_contenido {}

explore: tr_pagos_contenido_contable {}

explore: tr_pagos_cron {}

explore: users {}

explore: users_api {
  join: clients {
    type: left_outer 
    sql_on: ${users_api.client_id} = ${clients.id} ;;
    relationship: many_to_one
  }
}

explore: usuarios {}

explore: usuarios2 {}

explore: usuarios_05_07_19 {}

explore: usuarios_area {}

explore: usuarios_copy1 {}

explore: usuarios_delegaciones {}

explore: usuarios_firmas_oxxo {
  join: usuarios {
    type: left_outer 
    sql_on: ${usuarios_firmas_oxxo.usuario_id} = ${usuarios.id} ;;
    relationship: many_to_one
  }
}

explore: usuarios_internos {}

explore: usuarios_log {
  join: usuarios {
    type: left_outer 
    sql_on: ${usuarios_log.usuario_id} = ${usuarios.id} ;;
    relationship: many_to_one
  }
}

explore: usuarios_modulos_personalizados_accesos {}

explore: usuarios_por_area {}

explore: usuarios_por_centro_operacion {}

explore: usuarios_por_vp {}

explore: usuarios_sap_cliente {
  join: usuarios {
    type: left_outer 
    sql_on: ${usuarios_sap_cliente.usuario_id} = ${usuarios.id} ;;
    relationship: many_to_one
  }

  join: clientes {
    type: left_outer 
    sql_on: ${usuarios_sap_cliente.cliente_id} = ${clientes.id} ;;
    relationship: many_to_one
  }
}

explore: usuarios_subcategorias_oxxo {
  join: usuarios {
    type: left_outer 
    sql_on: ${usuarios_subcategorias_oxxo.usuario_id} = ${usuarios.id} ;;
    relationship: many_to_one
  }
}

explore: usuarios_tiendas_oxxo {
  join: usuarios {
    type: left_outer 
    sql_on: ${usuarios_tiendas_oxxo.usuario_id} = ${usuarios.id} ;;
    relationship: many_to_one
  }
}

explore: usuarios_token_session {
  join: usuarios {
    type: left_outer 
    sql_on: ${usuarios_token_session.usuario_id} = ${usuarios.id} ;;
    relationship: many_to_one
  }
}

explore: usuario_solicitante_reporte_cenit {}

explore: validacion_cliente {}

explore: validacion_cliente_bk21022022 {}

explore: validacion_cliente_bk24042023 {}

explore: validacion_cliente_certificados {}

explore: validacion_cliente_primer_registro {}

explore: validacion_consumidor {}

explore: validacion_consumidor_certificados {}

explore: validacion_informacion_cabacera {}

explore: validacion_informacion_proveedores {}

explore: validacion_informacion_savia {}

explore: validacion_info_adicional_proveedor {}

explore: validacion_modulos_consumidor {}

explore: validacion_modulos_proveedor_terpel_panama {}

explore: validacion_permisos_modulos_proveedor {}

explore: validacion_seccion_proveedor_sap {
  join: clientes {
    type: left_outer 
    sql_on: ${validacion_seccion_proveedor_sap.cliente_id} = ${clientes.id} ;;
    relationship: many_to_one
  }
}

explore: variation_groupings_ocns {}

explore: view_clientes_modulos_temporal {}

explore: view_datos_adicionales_contratos_mdm {}

explore: vinculacion_datos_presupuestales_sap {
  join: clientes {
    type: left_outer 
    sql_on: ${vinculacion_datos_presupuestales_sap.clientes_id} = ${clientes.id} ;;
    relationship: many_to_one
  }
}

explore: visitas_proveedor {}

explore: visitas_proveedor_gestion_requisitos {}

explore: visitas_proveedor_sistemas_gestion {}

explore: vistas_comunicados {}

explore: vista_reporte_corona_ans_no_conformidades {}

explore: zmold_catalogos {}

explore: zmold_catalogos_aprobaciones {}

explore: zmold_catalogos_asignacion_informacion_adicional {}

explore: zmold_catalogos_asignacion_proyectos {}

explore: zmold_catalogos_asociacion_adjuntos_compras {}

explore: zmold_catalogos_back {}

explore: zmold_catalogos_calificacion_items {}

explore: zmold_catalogos_compras {}

explore: zmold_catalogos_documentos {}

explore: zmold_catalogos_grupo_solicitudes {}

explore: zmold_catalogos_imagenes {}

explore: zmold_catalogos_imagenesoldxxx {}

explore: zmold_catalogos_imagenes_old1 {}

explore: zmold_catalogos_imagenes_old_today {}

explore: zmold_catalogos_items {}

explore: zmold_catalogos_items_atributos_adicionales {}

explore: zmold_catalogos_items_back {}

explore: zmold_catalogos_observaciones_solicitudes {}

explore: zmold_catalogos_solicitudes {}

explore: zmold_catalogos_validacion_items_proveedor {}

explore: zmold_catalogos_validacion_tipos {}

explore: zmold_catalogo_permisos_aprobaciones {}

explore: zmold_productos {}

explore: _0002106 {}

explore: _0002113 {}

explore: _0002114 {}

explore: _0002115 {}

explore: _0002117 {}

explore: _0002118 {}

explore: _0002119 {}

explore: _0002120 {}

explore: _0002121 {}

explore: _0002122 {}

explore: _0002123 {}

explore: _0002126 {}

explore: _0002127 {}

explore: _0002128 {}

explore: _0002129 {}

explore: _0002132 {}

explore: _0002180 {}

explore: _0002181 {}

explore: _0002182 {}

explore: _0002183 {}

explore: _0002184 {}

explore: _0002185 {}

explore: _0002186 {}

explore: _0002187 {}

explore: _0002188 {}

explore: _0002506 {}

explore: _0002507 {}

explore: _0002601 {}

explore: _0002602 {}

explore: _0002603 {}

explore: _0002604 {}

explore: _0003000 {}

