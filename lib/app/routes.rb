module ExercismWeb
  module Routes
    {
      Core: 'core',
      Languages: 'languages',
      Legacy: 'legacy',
      Main: 'main',
      OnboardingSteps: 'onboarding_steps',
      Stats: 'stats',
      Static: 'static',
      Conversations: 'conversations',
      Account: 'account',
      Backdoor: 'backdoor',
      Sessions: 'sessions',
      GithubCallback: 'github_callback',
      Notifications: 'notifications',
      Looks: 'looks',
      Solutions: 'solutions',
      Comments: 'comments',
      Nits: 'nits',
      Exercises: 'exercises',
      Metadata: 'metadata',
      Teams: 'teams',
      Styleguide: 'styleguide',
      User: 'user',
      CommentThreads: 'comment_threads',
      Errors: 'errors',
    }.each do |name, file|
      autoload name, Exercism.relative_to_root('lib', 'app', 'routes', file)
    end
  end
end
