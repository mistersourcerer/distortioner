module Distortioner
  class Say
    def version
      $stdout.puts Distortioner::VERSION
    end

    def hi(to: :mr_sourcerer)
      if to == :mr_sourcerer
        $stdout.puts "I am politely saying hi on behalf of Ricardo Valeriano!"
        $stdout.puts "  He sure hope you are having fun reading his book. 🙌"
        return
      end

      $stdout.puts "Hi, #{to}!"
    end
  end
end
