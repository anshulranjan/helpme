class CreateStates < ActiveRecord::Migration[6.1]
  def change
    create_table :states do |t|
      t.string :name
      t.timestamps
    end
    State.create name: 'Maharashtra'
    State.create name: 'Kerala'
    State.create name: 'Karnataka'
    State.create name: 'Uttar Pradesh'
    State.create name: 'Tamil Nadu'
    State.create name: 'Delhi'
    State.create name: 'Andhra Pradesh'
    State.create name: 'West Bengal'
    State.create name: 'Chhattisgarh'
    State.create name: 'Rajasthan'
    State.create name: 'Gujarat'
    State.create name: 'Madhya Pradesh'
    State.create name: 'Haryana'
    State.create name: 'Bihar'
    State.create name: 'Odisha'
    State.create name: 'Telangana'
    State.create name: 'Punjab'
    State.create name: 'Assam'
    State.create name: 'Jharkhand'
    State.create name: 'Uttarakhand'
    State.create name: 'Jammu and Kashmir'
    State.create name: 'Himachal Pradesh'
    State.create name: 'Goa'
    State.create name: 'Puducherry'
    State.create name: 'Chandigarh'
    State.create name: 'Tripura'
    State.create name: 'Manipur'
    State.create name: 'Arunachal Pradesh'
    State.create name: 'Meghalaya'
    State.create name: 'Nagaland'
    State.create name: 'Ladakh'
    State.create name: 'Sikkim'
    State.create name: 'Dadra and Nagar Haveli'
    State.create name: 'Daman and Diu'
    State.create name: 'Mizoram'
    State.create name: 'Andaman and Nicobar Islands'
    State.create name: 'Lakshadweep'

  end
end
