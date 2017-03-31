module ImageField
  def image_field(method, options ={})
    name = "#{self.object_name}[#{method.to_s}]"

    image_label = content_tag(:label, self.object.class.human_attribute_name(method)) + content_tag(:br)

    if self.object.send("#{method}_stored?")
      image_preview = content_tag(
        :img,
        nil,
        class: ["image-preview"].join(" "),
        src: self.object.send(method).thumb("100x100>").url,
      )
    end

    image_input = self.file_field(method, hide_label: true)

    content_tag(:div, class: "row") do
      content_tag(:div, class: "col-xs-12") do
        [image_label, image_preview, image_input].join(" ").html_safe
      end
    end
  end
end
