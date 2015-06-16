class ShotBreakdown < ActiveRecord::Base
	has_many :layers
	accepts_nested_attributes_for :layers, allow_destroy: true

	belongs_to :movie

  def complete_wide_puppets
    puppets = []
    self.layers.each do |layer|
      layer.wide_puppets.each do |pup|
        puppets << pup if pup.status == WideStatus.find_by(stage: "Completed").id unless puppets.include?(pup)
      end
    end
    return puppets
  end

  def complete_mc_puppets
    puppets = []
    self.layers.each do |layer|
      layer.mc_puppets.each do |pup|
        puppets << pup if pup.status == McStatus.find_by(stage: "Completed").id unless puppets.include?(pup)
      end
    end
    return puppets
  end

  def complete_props
    puppets = []
    self.layers.each do |layer|
      layer.props.each do |pup|
        puppets << pup if pup.status == RegStatus.find_by(stage: "Completed").id unless puppets.include?(pup)
      end
    end
    return puppets
  end

    def incomplete_wide_puppets
    puppets = []
    self.layers.each do |layer|
      layer.wide_puppets.each do |pup|
        puppets << pup unless pup.status == WideStatus.find_by(stage: "Completed").id unless puppets.include?(pup)
      end
    end
    return puppets
  end

  def incomplete_mc_puppets
    puppets = []
    self.layers.each do |layer|
      layer.mc_puppets.each do |pup|
        puppets << pup unless pup.status == McStatus.find_by(stage: "Completed").id unless puppets.include?(pup)
      end
    end
    return puppets
  end

  def incomplete_props
    puppets = []
    self.layers.each do |layer|
      layer.props.each do |pup|
        puppets << pup unless pup.status == RegStatus.find_by(stage: "Completed").id unless puppets.include?(pup)
      end
    end
    return puppets
  end

end
