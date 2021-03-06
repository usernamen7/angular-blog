use Rack::Static,
  :urls => ["/img", "/js", "/css", "/templates", "/json"],
  :root => "docs"

run lambda { |env|
  [
    200,
    {
      'Content-Type'  => 'text/html',
      'Cache-Control' => 'public, max-age=86400'
    },
    File.open('docs/index.html', File::RDONLY)
  ]
}
