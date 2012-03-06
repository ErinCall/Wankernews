Wankernews::Application.config.middleware.use ExceptionNotifier,
  :ignore_exceptions    => [],
  :email_prefix         => "[Wankernews] ",
  :sender_address       => [ 'andrew.lorente@gmail.com' ],
  :exception_recipients => [ 'andrew.lorente+wn@gmail.com' ]
