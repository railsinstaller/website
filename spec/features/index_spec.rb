# -*- coding: utf-8 -*-
require 'spec_helper'

describe 'Index page', type: :feature do
  context 'with English locale' do
    before do
      visit '/en'
    end

    it 'should have an English tagline' do
      expect(page).to have_content 'Get to work'
    end
  end

  context 'with Czech locale' do
    before do
      visit '/cs'
    end

    it 'should have a Czech tagline' do
      expect(page).to have_content 'Dej se do práce'
    end
  end

  context 'with French locale' do
    before do
      visit '/fr-FR'
    end

    it 'should have a French tagline' do
      expect(page).to have_content 'Au travail'
    end
  end

  context 'with Brazilian Portugese locale' do
    before do
      visit '/pt-BR'
    end

    it 'should have a Brazilian Portugese tagline' do
      expect(page).to have_content 'Ao trabalho'
    end
  end

  context 'with Russian locale' do
    before do
      visit '/ru-RU'
    end

    it 'should have a Russian tagline' do
      expect(page).to have_content 'За работу'
    end
  end
end
