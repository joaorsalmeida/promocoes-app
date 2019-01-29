require 'rails_helper'


describe PromotionPresenter do
  describe '#status' do
    it 'should return pending status' do
      promotion = build(:promotion, status: :pending)
      presenter = PromotionPresenter.new(promotion, nil)
      expect(presenter.status).to eq('<span class="ls-tag-warning">Pendente</span>')
    end

    it 'should return pending status' do
      promotion = build(:promotion, status: :pending)
      presenter = PromotionPresenter.new(promotion, nil)
      expect(presenter.status).to eq('<span class="ls-tag-warning">Pendente</span>')
    end
  end
end
