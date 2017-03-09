require_relative '../lib/wutangify'
require 'spec_helper'

describe Wutangify do
  it 'should return Insane Wanderer for Maverick' do
    expect(Wutangify.unlamify('Maverick')).to eq('Insane Wanderer')
  end
end
