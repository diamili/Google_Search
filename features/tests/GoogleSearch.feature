Feature:
	'When user go to the Google search page, user want to see  result of search

Scenario:
	Given user is on Google.com home_page
	When user input "BDD" to the search box
	And click Search Button
	Then user see wiki_description of "BDD" on first search_result_page
