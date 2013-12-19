class Student < ActiveRecord::Base
  attr_accessible :course, :name

  # Write code allows a student to have many urls
  has_many :urls
  # validate that :name is in the list of allowed students
  validates :name, presence: true
  validates :name, inclusion: { in: %w(dputnam adesilv1 ryaryy rgorreap ubenesch zng1 jswanner npachec2 avalenc7 bmckeand mpernabe dott bernst tcoffey1 gpaz ywun mweaver3 jsteele pkassian psakhark jsotobus bkrantzi crosales jmencha1 asushon kchan131 mhankins jmonto10 jreed13 ikim5 jpayne ktieu kposey1 dlouie11 zbazarra tho36 tparas amanayan jgarc166)}
  # validate that :course is correct 
  validates :course, inclusion: { in: %w(cs132a)}
end
