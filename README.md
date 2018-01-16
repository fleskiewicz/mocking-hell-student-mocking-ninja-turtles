![TMNT](https://img.purch.com/o/aHR0cDovL3d3dy5uZXdzYXJhbWEuY29tL2ltYWdlcy9pLzAwMC8xOTIvNjgyL2kwMi9UTU5ULmpwZw==)

## Mocking Hell - Projekt zespołowy aplikacji Ruby 2017/2018

### Prowadzący: 
| [<img src="https://avatars1.githubusercontent.com/u/8049?v=3" width="100px;"/><br /><sub>dr Włodzimierz Bzyl</sub>](https://github.com/wbzyl)<br />|
| :---: |

[![Build Status](https://travis-ci.org/my-rspec/mocking-hell-student-mocking-ninja-turtles.svg?branch=master)](https://travis-ci.org/my-rspec/mocking-hell-student-mocking-ninja-turtles) 
[![Maintainability](https://api.codeclimate.com/v1/badges/f27dbc5ba0a3ee2d95ad/maintainability)](https://codeclimate.com/github/my-rspec/mocking-hell-student-mocking-ninja-turtles/maintainability)
[![Test Coverage](https://api.codeclimate.com/v1/badges/f27dbc5ba0a3ee2d95ad/test_coverage)](https://codeclimate.com/github/my-rspec/mocking-hell-student-mocking-ninja-turtles/test_coverage)

### Ice Cream Parlor
Program umożliwiający zarządzanie lodziarnią za pośrednictwem aplikacji konsolowej. Użytkownik posiada możliwość zarządzania smakami lodów, które natomiast składają się na całe lody, a te po przyjęciu zamówienia trafiają na łączny rachunek dla klienta.
Do testów został użyty RSpec w wersji 3.7.0. Liczymy że nasza lodziarnia przypadnie wszystkim do gustu :). Przykłado

 ```
    let(:id) { 1 }
    let(:name) { 'John' }
    let(:flavor1) { double('Flavor', id: 1, name: 'Czekoladowe', price: 22) }
    let(:flavor2) { double('Flavor', id: 2, name: 'Pistacjowe', price: 10) }
    let(:products) { [flavor1, flavor2] }
    subject(:bill) { Bill.new 1, 'John', products }
    
    [...]
    
    expect(bill.products).to eq(products)
    allow(products).to receive(:kind_of?).and_return(products)
    expect(bill.products).to be_a_kind_of(products)
    expect(bill.products.to_s).to be_a(String).and include(products.to_s)
 ```



### Członkowie zespołu: 
| [<img src="https://avatars3.githubusercontent.com/u/16317532?v=3" width="100px;"/><br /><sub>Filip Leśkiewicz</sub>](https://github.com/fleskiewicz)<br />| [<img src="https://avatars1.githubusercontent.com/u/32486835?v=3" width="100px;"/><br /><sub>Marcin Więckowski</sub>](https://github.com/mwieckowsk)<br />| [<img src="https://avatars0.githubusercontent.com/u/32486117?v=3" width="100px;"/><br /><sub>Adam Zbrowski</sub>](https://github.com/azbrowski)<br />| [<img src="https://avatars1.githubusercontent.com/u/16317542?v=3" width="100px;"/><br /><sub>Bartosz Mazurkiewicz</sub>](https://github.com/GitGod)<br />|
| :---: | :---: | :---: | :---: |
