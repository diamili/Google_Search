Feature:
	'When user go to the Google search page, user want to see  result of search

Scenario:
	Given user is on Google.com home_page
	When user input "Fuck" to the search box
	And click Search Button
	Then user see wiki_description of "Fuck" on first search_result_page
