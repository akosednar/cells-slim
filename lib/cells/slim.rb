require 'slim'
require 'cells'

module Cell
  module Slim
    def template_options_for(options)
      {
        template_class: ::Slim::Template,
        suffix:         "slim"
      }
    end

    # attr_writer :output_buffer

    # include ActionView::Helpers::FormHelper

    # # From FormTagHelper. why do they escape every possible string? why?
    # def form_tag_in_block(html_options, &block)
    #   content = capture(&block)
    #   form_tag_with_body(html_options, content)
    # end

    # def form_tag_with_body(html_options, content)
    #   "#{form_tag_html(html_options)}" << content.to_s << "</form>"
    # end






    # class OutputBuffer < String
    # end

    # def with_output_buffer(buf = nil)
    #   unless buf
    #     buf = OutputBuffer.new
    #   end
    #   self.output_buffer, old_buffer = buf, output_buffer
    #   yield
    #   output_buffer
    # ensure
    #   self.output_buffer = old_buffer
    # end

    # def capture(*args,&block)
    #   value = nil
    #   buffer = with_output_buffer() { value = yield(*args) }
    #   if string = buffer.presence || value and string.is_a?(String)
    #     return string
    #   end
    # end

    # # From FormTagHelper. why do they escape every possible string? why?
    # def form_tag_in_block(html_options, &block)
    #   content = capture(&block)
    #   form_tag_with_body(html_options, content)
    # end

    # def form_tag_with_body(html_options, content)
    #   "#{form_tag_html(html_options)}" << content.to_s << "</form>"
    # end

    # def form_tag_html(html_options)
    #   extra_tags = extra_tags_for_form(html_options)
    #   "#{tag(:form, html_options, true) + extra_tags}"
    # end

    # # Rails 4.0, TagHelper.
    # def tag_option(key, value, escape)
    #   super(key, value, false)
    # end

    # def content_tag_string(name, content, options, escape=true)
    #   super(name, content, options, false)
    # end
  end
end
