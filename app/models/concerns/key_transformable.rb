module KeyTransformable
  def as_json(options = {})
    super(options).transform_keys { |key| key.to_s.camelize(:lower) }
  end
end
