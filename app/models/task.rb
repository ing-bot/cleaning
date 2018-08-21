class Task < ApplicationRecord
  belongs_to :schedule
#  belongs_to :routine
#  validates :action, presence: true
#  validates :room, presence: true
#  validates :surface, presence: true
# attr_accessor :action, :surface, :room, :option
  before_save :downcase_fields

ACTIONS = ['Clean', 'Deep clean', 'Do', 'Dust', 'Empty', 'Fill', 'Fold',
  'Hand wash', 'Load', 'Organize', 'Rake', 'Refill', 'Shine', 'Spray', 'Start',
  'Steam mop', 'Stock', 'Straighten', 'Sweep', 'Take out', 'Tidy', 'Unload',
  'Vacuum', 'Water'
  ]

ROOMS = ['All', 'Bathroom', 'Dining Room', 'Hallway', 'Kitchen', 'Living Room', 'Music Room',
  'Office', 'Outside'
  ]

SURFACES = ['All', 'Appliances', 'Back Porch', 'Baseboards', 'Bathtub',
  'Big Recycling', 'Bird Feeder', 'Blinds', 'Bookshelves', 'Burner', 'Cabinets',
  'Coffee Station', 'Counters', 'Curtains', 'Desk', 'Dishes', 'Floors',
  'French Doors', 'Front Porch', 'Furniture', 'Island', 'Laundry', 'Plants',
  'Recycling', 'Refrigerator', 'Rug', 'Shopping', 'SinkStainless', 'Toilet', 'Trash', 'Treat',
  'Windows', 'Yard'
  ]

# Return each task associated with a schedule.
  def current_task
    self.current_task = Task.find_by(schedule_id: current_schedule.id)
  end


  private

    def downcase_fields
      room.downcase!
      surface.downcase!
      option.downcase!
    end
end
