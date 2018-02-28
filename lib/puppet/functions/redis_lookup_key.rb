Puppet::Functions.create_function(:redis_lookup_key) do

  unless Puppet.features.hiera_redis?
    raise Puppet::DataBinding::LookupError, 'Lookup using redis_lookup_key function is only supported when the hiera_redis library is present'
  end

  require 'hiera/backend/redis_backend'

  dispatch :redis_lookup_key do
    param 'String[1]', :key
    param 'Hash[String[1],Any]', :options
    param 'Puppet::LookupContext', :context
  end


  def redis_lookup_key(key, options, context)

    # backend = ensure_backend(options)

    # raw_data = backend.lookup(key, options)

    # cooked_key = context.interpolate(key)
  
    # context.not_found unless raw_data.include?(key)

    # cooked_key

    Hiera.debug("hiera_redis faking it")
    
    "128"
  end


  def ensure_backend(options)
    if @backend.nil?
      @backend = Hiera::Backend::Redis_backend.new
    end
  end

end
