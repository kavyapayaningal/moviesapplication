class Director
  attr_accessor :id, :name

  def initialize(params = {})
    @id   = params[:id]
    @name = params[:name]
  end

  LIST = [
    new(id: 1, name: 'Christopher Nolan'),
    new(id: 2, name: 'Gareth Edwards'),
    new(id: 3, name: 'Robert'),
    new(id: 4, name: 'Robert'),
    new(id: 5, name: 'Robert'),


  ]
end
