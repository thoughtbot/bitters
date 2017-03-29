require "sass"
require "bourbon"
require "spec_helper"

describe Bitters do
  it "compiles to CSS" do
    Sass.compile_file("spec/fixtures/application.scss", "/tmp/output.css")

    expect(Pathname("/tmp/output.css")).to exist
  end
end
