class HelperMethods
  def check_empty(*input)
    input.each do |i|
      binding.irb
      if i.empty? || i.nil?
        return false
      end
    end
  end
  
  def create_maker(name, email, password)
    maker = Maker.new
    maker.name = name
    maker.email = email
    maker.password = password
    
    return maker
  end
  
  # FIXME: Session not being created properly
  def create_session(maker_id, maker_name)
    session[:maker_id] = maker_record.id
    session[:maker_name] = maker_record.name
  end
end
