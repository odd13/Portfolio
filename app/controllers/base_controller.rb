class BaseController < ApplicationController
  http_basic_authenticate_with(
    name: "odd13",
    password: "Th!sisS3cret",
    except: [:index, :show]
  )
end
