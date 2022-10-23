# frozen_string_literal: true

RSpec.describe TakeruunGem do
  it 'has a version number' do
    expect(TakeruunGem::VERSION).not_to be nil
  end

  describe 'Configuration' do
    context 'デフォルト設定' do
      it 'デフォルト値を返す' do
        expect(TakeruunGem.configuration.app_name).to eq('TakeruunGem')
      end
    end

    context 'デフォルトでない設定' do
      before do
        TakeruunGem.configure do |configure|
          configure.app_name = 'APP_NAME'
        end
      end

      it '設定値を返す' do
        expect(TakeruunGem.configuration.app_name).to eq('APP_NAME')
      end
    end
  end

  describe 'Instance method' do
    it 'def hello' do
      expect(TakeruunGem.hello).to eq('Hello')
    end

    it 'def hello_app_name' do
      expect(TakeruunGem.hello_app_name).to eq('Hello APP_NAME')
    end
  end
end
