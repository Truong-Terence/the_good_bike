if defined?(Rails)
  banner = 

  if Rails.env.production?
    banner = "\e[41;97;1m prod \e[0m "
  elsif Rails.env.staging?
    banner = "\e[43;97;1m staging \e[0m "
  end


  IRB.conf[:PROMPT][:CUSTOM] = IRB.conf[:PROMPT][:DEFAULT].merge(
    PROMPT_I: "#{banner}#{IRB.conf[:PROMPT][:DEFAULT][:PROMPT_I]}"
  )

  IRB.conf[:PROMPT_MODE] = :CUSTOM
end