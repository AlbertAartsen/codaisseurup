require 'rails_helper'

  RSpec.describe Event, type: :model do
    describe "validations" do
      let(:user) { create :user }
      let(:event) { create :event, user: user }


    it { is_expected.to validate_presence_of(:name)}
    it { is_expected.to validate_presence_of(:location)}
    it { is_expected.to validate_presence_of(:description)}
    it { is_expected.to validate_presence_of(:description)}
    it { is_expected.to validate_presence_of(:location)}
    it { is_expected.to validate_presence_of(:price)}
    it { is_expected.to validate_presence_of(:capacity)}

    describe "#bargain?" do
      let(:bargain_event) { create :event, price: 3 }
      let(:non_bargain_event) { create :event, price: 4 }

      it "returns true if the price is smaller than 4 EUR" do
        expect(bargain_event.bargain?).to eq(true)
        expect(non_bargain_event.bargain?).to eq(false)
      end
    end

    describe ".order_by_price" do
        let!(:event1) { create :event, price: 2 }
        let!(:event2) { create :event, price: 4 }
        let!(:event3) { create :event, price: 1 }

        it "returns a sorted array of events by prices" do
          expect(Event.order_by_price).to match_array([event2, event3, event1])
        end
      end

      describe "association with user" do
        let(:user) { create :user }

        it "belongs to a user" do
          event = user.events.new(name: "Timmy!")

        end
      end

        describe "association with theme" do
          let(:event) { create :event }

          let(:theme1) { create :theme, name: "Bright", events: [event] }
          let(:theme2) { create :theme, name: "Clean lines", events: [event] }
          let(:theme3) { create :theme, name: "A Man's Touch", events: [event] }

          it { is_expected.to have_and_belong_to_many :themes }
        end

        describe "association with registration" do
          let(:guest_user) { create :user, email: "guest@user.com" }
          let(:host_user) { create :user, email: "host@user.com" }

          let!(:event) { create :event, user: host_user }
          let!(:registration) { create :registration, event: event, user: guest_user }

          it "has guests" do
            expect(event.guests).to include(guest_user)
          end
        end

    end
  end
