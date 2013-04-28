#
# Add a magic shell alias
#
RSpec::Matchers.define :add_a_magic_shell_alias do |the_alias|
  match do |chef_run|
    @the_alias = the_alias
    chef_run.file(filepath) && chef_run.file(filepath).content.include?(content)
  end

  chain :with_command do |cmd|
    @cmd = cmd
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
    "/etc/profile.d/#{@the_alias}.sh"
  end

  def content
    @cmd ? "alias #{@the_alias}='#{@cmd}'" : "alias #{the_alias}"
  end
end
