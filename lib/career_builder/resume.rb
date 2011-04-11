module CareerBuilder

  class Resume < BasicObject

    def initialize(client, partial_resume)
      @client = client
      @partial_resume = partial_resume
    end

    def real_contact_email
      full_resume.contact_email
    end

    def home_location
      full_resume.home_location
    end

    def full_resume
      @full_resume ||= fetch_full_resume
    end

    private

    def method_missing(meth, *args, &block)
      if @partial_resume.respond_to?(meth)
        @partial_resume.send(meth, *args, &block)
      else
        if full_resume.respond_to?(meth)
          full_resume.send(meth, *args, &block)
        else
          super
        end
      end
    end

    def fetch_full_resume
      @client.get_resume(:resume_id => @partial_resume.id)
    rescue Errno::ECONNRESET => e
      count ||= 0
      count += 1
      retry unless count > @client.connection_retry_count
      raise e
    end

  end

end
