When (/^I send message (.*) to (.*)$/) do |message, user|
	step "When I am chatting with #{user}"
	step "And I fill in \"message_body\" with #{message}"
    step "And I press \"Send\""
end

When (/^I log out$/) do
	steps %{
		When I follow "Log out"
	}
end

Given(/^I am logged in as (.*) with (.*)$/) do |email1,password|
  steps %{
    When I am on the Sign In page
    And I fill in "Email" with "#{email1}"
    And I fill in "Password" with "#{password}"
    And I press "Log in"
  }
  @current_user = User.find_by(email: email1 )
end

When (/I am chatting with (.*)$/) do |user2|
	params = ActionController::Parameters.new({
		sender_id: @current_user.id,
		recipient_id: User.find_by(username: user2).id
		})
	@conversation = Conversation.create!(params.permit(:sender_id,:recipient_id))
	visit conversation_messages_path(@conversation)
end


