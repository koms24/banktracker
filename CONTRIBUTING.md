# Contribution Guide <!-- omit in toc -->
Thanks for your interest in contributing to this project!
The typical contribution process is outlined in order below, following a few words about generative AI.

## Use of Generative AI
It is now possible to generate "working" code in much less time than it takes to review it.
This changes the dynamics of contributions somewhat.

If I'm going to commit the time required to review, give feedback on, and ultimately merge and QA your PR, I need to know you are also committed to owning your change and doing the work to get the PR merged.

### Ownership
This means you have personally, with your own meat eyes, read, understood, and approved every line of your change. Responding to any question about your change with "I don't know, the AI did that" or similar will result in your PR being closed and all further PRs being ignored. It's fine if the AI wrote the code, but you need to understand it and accept it as an intentional part of your change. If you don't understand a section of your PR, ask the AI to explain it, then go verify yourself that what it said was true.

### Doing the Work
This means you're committed to responding to PR questions and feedback in a timely manner and being willing to make the requested changes. Throwing an AI generated PR at me and then ghosting me when I ask you to do more work to bring it up to my standards is not acceptable.

### Tests and Documentation
Automated tests and documentation have always been important, but have become even more so in the era of generative AI. I will have a fairly high standard for both in PRs. I encourage you to use gen AI to help you write tests and documentation, with the caveats described above.

## Contribution Process
### Issue Discussion
First off, see if an ask for a similar change has already been raised in the Github issue tracker.
If so, feel free to add a comment if you have new content to contribute.
If not, then please just add a supportive emoji to an existing comment to avoid cluttering
the discussion with "me too" comments.

If there are no existing issues related to your desired change, then create a new one with a clear
description of the problem you want to solve. How you want to solve it is optional.

If you don't intend to actually make code changes, then you're done.

### Dev Work Alignment
If you want to do the work yourself, then please make that clear in the issue discussion.
Ideally you'd get agreement/alignment from the repo maintainer before starting work to ensure
you're aligned with the goals of the project and not wasting your time, but that's up to you.

### Do the Work
Set up your dev environment per https://github.com/dvankley/firefly-plaid-connector-2#development.

As you're working, try to break your work up into meaningful commits.
That is, each commit should represent a logically distinct chunk of work with a meaningful commit
message. Try not to put a ton of work in one huge commit, or push lots of small "typo lol" commits if you can avoid it
(although we've all been there, I'm definitely not above it).

Once you're happy with your work, you should run it against your local Firefly/Plaid setup
to ensure it does what it's supposed to.

Please ensure you have some automated test coverage for your change if at all possible.
Bonus points for looking at actual test coverage numbers and ensuring your change at least doesn't decrease the coverage percentage.
If a framework doesn't already exist for the test you need to write, feel free to ask for help.

### Submit the Pull Request
Open a pull request with your changes.

It might take a few days, but I promise I will get to reviewing it at some point.
I will try to be as polite as possible, but please don't take review feedback as personal
criticism. As long as we're aligned on the goal and overall approach, we'll get it merged
eventually.

Here's an example of a very good PR: https://github.com/dvankley/firefly-plaid-connector-2/pull/96
