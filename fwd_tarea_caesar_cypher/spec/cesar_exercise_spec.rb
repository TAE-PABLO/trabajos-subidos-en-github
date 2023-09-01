require 'spec_helper'
require_relative './../caesar_cipher.rb'


RSpec.describe 'Caesar Cipher' do
    describe 'create caesar cipher' do

        context 'with a string and a left shift' do
            it 'returns proper result' do
                result = "Bmfy f xywnsl!"
                expect(caesar_cipher("What a string!", 5)).to eq(result)
            end
        end

        context 'with an empty string' do
            it 'returns proper result' do
                result = ""
                expect(caesar_cipher("", 5)).to eq("")
            end
        end

        context 'with a nil value' do
            it 'returns proper result' do
                result = nil
                expect(caesar_cipher(nil, 5)).to eq("")
            end
        end
    end
end