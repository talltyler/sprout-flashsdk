Sprout::Specification.new do |s|
  # This is the Specification that loads the Flex 3 SDK,
  # To use the Flex 3 SDK from your build tasks, you can
  # simply update the pkg_name parameter of your build
  # task as follows:
  #
  #   mxmlc 'bin/SomeProject.swf' do |t|
  #     t.input       = 'src/SomeProject.as'
  #     t.pkg_name    = 'flex3'
  #   end
  #
  s.name    = 'flex3'
  s.version = FlashSDK::VERSION

  s.add_remote_file_target do |t|
    t.platform = :universal
    t.archive_type = :zip
    t.url          = "http://ppchef.s3.amazonaws.com/flex_sdk_3.5_rebundled.zip"
    t.md5          = "2095fdded0f29dce455c1877634ddf37"

    # Executables: (add .exe suffix if it was passed in)
    t.add_executable :aasdoc,     "bin/aasdoc"
    t.add_executable :acompc,     "bin/acompc"
    t.add_executable :adl,        "bin/adl"
    t.add_executable :adt,        "bin/adt"
    t.add_executable :amxmlc,     "bin/amxmlc"
    t.add_executable :asdoc,      "bin/asdoc"
    t.add_executable :compc,      "bin/compc"
    t.add_executable :copylocale, "bin/compc"
    t.add_executable :digest,     "bin/digest"
    t.add_executable :fcsh,       "bin/fcsh"
    t.add_executable :fdb,        "bin/fdb"
    t.add_executable :mxmlc,      "bin/mxmlc"
    t.add_executable :optimizer,  "bin/optimizer"

    # Flex framework SWCs:
    t.add_library :flex,            "frameworks/libs/flex.swc"
    t.add_library :framework,       "frameworks/libs/framework.swc"
    t.add_library :rpc,             "frameworks/libs/rpc.swc"
    t.add_library :utilities,       "frameworks/libs/utilities.swc"
    t.add_library :playerglobal_9,  "frameworks/libs/player/9/playerglobal.swc"
    t.add_library :playerglobal_10, "frameworks/libs/player/10/playerglobal.swc"

    # AsDoc templates:
    t.add_library :asdoc_templates, "asdoc/templates"

    # Locale-Specific Flex SWCs:
    t.add_library :airframework_en_US, "frameworks/locale/en_US/airframework_rb.swc"
    t.add_library :framework_en_US, "frameworks/locale/en_US/framework_rb.swc"
    t.add_library :rpc_en_US, "frameworks/locale/en_US/rpc_rb.swc"
  end
end
