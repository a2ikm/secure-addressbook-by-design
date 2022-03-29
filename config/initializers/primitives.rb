Dir.glob(Rails.root.join("lib", "primitives", "**", "*.rb")).each do |path|
  require path
end
