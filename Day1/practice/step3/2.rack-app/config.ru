require "bundler/setup"
Bundler.require

require_relative "./app"
# call メソッドを持つインスタンスを run に食わせる
run App.new