
require 'skilljar/string'

RSpec.describe String do
  it 'should have a kebabize method' do
    expect('').to respond_to(:kebabize)
  end

  it 'should convert underscores to hyphens' do
    expect('_'.kebabize).to eq('-')
  end

  it 'should convert spaces to hyphens' do
    expect(' '.kebabize).to eq('-')
  end
end
