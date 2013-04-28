#
# Set a magic shell environment_variable
#
RSpec::Matchers.define :set_a_magic_shell_environment_variable do |variable|
  match do |chef_run|
    @variable = variable
    chef_run.file(filepath) && chef_run.file(filepath).content.include?(content)
  end

  chain :with_value do |value|
    @value = value
  end

  failure_message_for_should do |chef_run|
    if chef_run.file(filepath)
      "expected `#{filepath}` to have content:\n\n   #{content}\n\nbut got:\n\n   #{chef_run.file(filepath).content.split("\n").join("\n   ")}"
    else
      "expected a file at `#{filepath}` to exist, but one was not"
    end
  end

  failure_message_for_should_not do |chef_run|
    if chef_run.file(filepath) && chef_run.file(filepath).content.include?(content)
      "did not expect `#{filepath}` to have content:\n\n   #{content}\n\nbut it did:\n\n   #{chef_run.file(filepath).content.split("\n").join("\n   ")}"
    else
      "did not expect `#{filepath}` to exist, but it did"
    end
  end

  # Helper Methods
  # -------------------------
  def filepath
    "/etc/profile.d/#{@variable}.sh"
  end

  def content
    @value ? "export #{@variable}='#{@value}'" : "export #{@variable}"
  end
end
