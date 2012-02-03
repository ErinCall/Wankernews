class WankerController < ApplicationController
  def wank
    render :inline => <<HERE
<!doctype html>
<head>
  <title>here</title>
</head>
<body>
  <p>Hello!</p>
</body>
HERE
  end
end
