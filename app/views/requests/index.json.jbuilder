json.array!(@requests) do |request|
  json.extract! request, :id, :data_solicitacao, :data_pre, :data_pro, :status, :data_alteracao, :recompilado, :observation, :environment, :oficializar, :data_oficializacao, :project_id, :source_id
  json.url request_url(request, format: :json)
end
