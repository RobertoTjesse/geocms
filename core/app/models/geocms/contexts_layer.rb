module Geocms
  class ContextsLayer < ActiveRecord::Base

    belongs_to :context
    belongs_to :layer

    delegate :title, :description, :name, :tiled, :template, 
             :data_source_wms, :data_source_wms_version, :data_source_not_internal,
             :data_source_ogc, :data_source_name, :bbox, :metadata_url, to: :layer
    delegate :id, to: :layer, prefix: true
  end
end