# Newspaper

In this project, we build a newspaper subscription service.

## Phase I: `Newspaper`

Write a `Newspaper` model. It should have a title and editor. Write a
form to fill in these details.

## Phase II: `SubscriptionPlan`

Write a `SubscriptionPlan` model. It should have a price and a boolean
to indicate weekly or daily. Write a form at
`/newspapers/:newspaper_id/subscription/new` to build a new
subscription plan.

On the `Newspaper` show page, list the available `SubscriptionPlan`s.

## Phase III: Nested `SubscriptionPlan`

Allow creation of a few `SubscriptionPlan`s at the same time that you
build the `Newspaper`. Use a nested form for this.

## Phase IV: `User` and `Subscription`

Write a `User` model; it should contain a name. On signup, the `User`
should be able to select from many `SubscriptionPlan`s (use
checkboxes). Create `Subscription` records, which join `User` and
`SubscriptionPlan`.