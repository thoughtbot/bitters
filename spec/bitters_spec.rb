require 'spec_helper'
require 'sass'
require 'bourbon'

describe Bitters do
  after do
    `rm -rf spec/fixtures/base`
  end

  it 'compiles to valid css' do
    `bitters install --path spec/fixtures`

    Sass.compile_file('spec/fixtures/application.scss', '/tmp/output.css')

    expect(Pathname('/tmp/output.css')).to exist
  end
end
