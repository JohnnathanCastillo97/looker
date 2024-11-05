view: clientes {
  sql_table_name: bd_ic_cliente.clientes ;;
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
  dimension: api_token_cloudflare {
    type: string
    sql: ${TABLE}.api_token_cloudflare ;;
  }
  dimension: api_token_cloudflare_proveedor {
    type: string
    sql: ${TABLE}.api_token_cloudflare_proveedor ;;
  }
  dimension: aplica_validacion_listas {
    type: string
    sql: ${TABLE}.aplica_validacion_listas ;;
  }
  dimension: aplica_validacion_suplos {
    type: string
    sql: ${TABLE}.aplica_validacion_suplos ;;
  }
  dimension: cod_usuario_principal {
    type: number
    sql: ${TABLE}.cod_usuario_principal ;;
  }
  dimension: contacto_suplos {
    type: string
    sql: ${TABLE}.contacto_suplos ;;
  }
  dimension: css_visual {
    type: string
    sql: ${TABLE}.css_visual ;;
  }
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension: estado_sitio_proveedor {
    type: string
    sql: ${TABLE}.estado_sitio_proveedor ;;
  }
  dimension_group: fecha_creacion {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_creacion ;;
  }
  dimension: llave {
    type: string
    sql: ${TABLE}.llave ;;
  }
  dimension: logo {
    type: string
    sql: ${TABLE}.logo ;;
  }
  dimension: logo_proveedores {
    type: string
    sql: ${TABLE}.logo_proveedores ;;
  }
  dimension: logo_simbolo {
    type: string
    sql: ${TABLE}.logo_simbolo ;;
  }
  dimension: logo_simbolo_thumb {
    type: string
    sql: ${TABLE}.logo_simbolo_thumb ;;
  }
  dimension: mostrar_infoadicional {
    type: string
    sql: ${TABLE}.mostrar_infoadicional ;;
  }
  dimension: nombre {
    type: string
    sql: ${TABLE}.nombre ;;
  }
  dimension: nombre_comunicaciones {
    type: string
    sql: ${TABLE}.nombre_comunicaciones ;;
  }
  dimension: observacion {
    type: string
    sql: ${TABLE}.observacion ;;
  }
  dimension: pais_origen {
    type: number
    sql: ${TABLE}.pais_origen ;;
  }
  dimension: pre_registro_usuarios {
    type: number
    sql: ${TABLE}.pre_registro_usuarios ;;
  }
  dimension: slider {
    type: string
    sql: ${TABLE}.slider ;;
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
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
	id,
	biblioteca.count,
	capitulos.count,
	catalogos_compras_cabecera_oxxo.count,
	clientes_sso_cognito.count,
	configuraciones_adicionales.count,
	configuraciones_adicionales_contenido.count,
	continuidad_validacion_proveedor.count,
	continuidad_vinculacion_proveedor.count,
	contratos_companias.count,
	contratos_informacion_proceso_logistico.count,
	contratos_marcos_oxxo.count,
	ejecucion_reportes.count,
	maestras.count,
	maestra_preguntas_contratos_desempeno.count,
	modificacion_datos_impuestos.count,
	mst_factores_importacion.count,
	mst_ipc.count,
	mst_materiales_oxxo.count,
	mst_sociedades_paises.count,
	mst_tasas_cambio.count,
	mst_tiendas_oxxo.count,
	mst_wacc.count,
	proveedores_log_sincronizacion_hubspot.count,
	regionales.count,
	seguimiento_acciones.count,
	solfin_cia_maestras.count,
	solicitudes_sap.count,
	solicitud_ecopetrol.count,
	tasas_cambio.count,
	usuarios_sap_cliente.count,
	validacion_seccion_proveedor_sap.count,
	vinculacion_datos_presupuestales_sap.count
	]
  }

}
