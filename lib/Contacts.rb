class Contact

  attr_accessor(:first_name, :last_name, :company, :job_title)

  define_method(:initialize) do |attributes|
    @first_name = attributes.fetch(:first_name)
    @last_name = attributes.fetch(:last_name)
    @company = attributes.fetch(:company)
    @job_title = attributes.fetch(:job_title)

  end

end
