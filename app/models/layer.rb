class Layer < ActiveRecord::Base
	belongs_to :shot_breakdown

  has_and_belongs_to_many :wide_puppets
  accepts_nested_attributes_for :wide_puppets, :reject_if => lambda { |a| a[:content].blank? }

  has_and_belongs_to_many :mc_puppets
  accepts_nested_attributes_for :mc_puppets, :reject_if => lambda { |a| a[:content].blank? }

  has_and_belongs_to_many :props
  accepts_nested_attributes_for :props, :reject_if => lambda { |a| a[:content].blank? }

  def wide_puppets_attributes=(attributes)
    attributes.each_pair do |k, v|
      if v['id'].present? 
        self.wide_puppets << WidePuppet.find(v[:id]) unless v[:_destroy] == "1" || self.wide_puppets.exists?(v[:id])
      end
    end
  end

  def mc_puppets_attributes=(attributes)
    self.mc_puppets = []
    attributes.each_pair do |k, v|
      if v['id'].present? 
        self.mc_puppets << McPuppet.find(v[:id]) unless v[:_destroy] == "1" || self.mc_puppets.exists?(v[:id])
      end
    end
  end

  def props_attributes=(attributes)
    self.props = []
    attributes.each_pair do |k, v|
      if v['id'].present? 
        self.props << Prop.find(v[:id]) unless v[:_destroy] == "1" || self.props.exists?(v[:id])
      end
    end
  end


  def time
    if(self.seconds == nil || self.difficulty == nil)
      self.seconds = 0
    elsif(Difficulty.find_by(id: self.difficulty).name == "Mid-Close Medium")
      return "#{(self.seconds + 4) * 2.5 + (20)} min"
    elsif(Difficulty.find_by(id: self.difficulty).name == "Mid-Close Difficult" || Difficulty.find_by(id: self.difficulty).name == "Wide")
      return "#{(self.seconds + 4) * 5 + (45)} min"
    else
      self.seconds
      return "#{(self.seconds + 4) * 1.5 + (10)} min"
    end
  end

end
