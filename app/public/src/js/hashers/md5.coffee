define ['jquery'], ($) ->

    (input, callback) ->
        $.post '/hash/md5', {input: input}, (resp) -> callback(resp.hash)

