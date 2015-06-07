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
      if v['id'].present? && !self.wide_puppets.exists?(v[:id])
        self.wide_puppets << WidePuppet.find(v[:id])
      end
    end
  end

  def mc_puppets_attributes=(attributes)
    attributes.each_pair do |k, v|
      if v['id'].present? && !self.mc_puppets.exists?(v[:id])
        self.mc_puppets << McPuppet.find(v[:id])
      end
    end
  end

  def props_attributes=(attributes)
    attributes.each_pair do |k, v|
      if v['id'].present? && !self.props.exists?(v[:id])
        self.props << Prop.find(v[:id])
      end
    end
  end
end
