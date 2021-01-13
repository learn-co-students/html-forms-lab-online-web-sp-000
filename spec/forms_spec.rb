 expect(input.attributes["placeholder"]).to match(/Owner Name/) , "The first input should have a placeholder set to 'Owner Name'"
    end

    it 'contains an "email" type <input> tag with an id of "email" and placeholder equal to "Owner Name" ' do
    it 'contains an "email" type <input> tag with an id of "email" and placeholder equal to "Owner Email" ' do
      input = parsed_html.search('input')[1]
      expect(input.attributes["type"]).to_not be_nil, "No type attribute was found on the second 'input' tag"
      expect(input.attributes["type"]).to match(/email/) , "The second input should have an type set to 'email'"
@@ -45,6 +45,14 @@
      expect(input.attributes["placeholder"].value).to eq("Owner Telephone (optional)") , "The third input should have a placeholder set to 'Owner Telephone (optional)'"
    end

    it 'contains an <textarea> tag with an id of "message" and placeholder equal to "Dog notes" ' do
      input = parsed_html.search('textarea')[0]
      expect(input.attributes["id"]).to_not be_nil, "No id attribute was found on the 'textarea' tag"
      expect(input.attributes["id"]).to match(/message/) , "The textarea tag should have an id set to 'message'"
      expect(input.attributes["placeholder"]).to_not be_nil, "No placeholder attribute was found on the 'textarea' tag"
      expect(input.attributes["placeholder"]).to match(/Dog notes/) , "The third input should have a placeholder set to 'Dog notes'"
    end

    it 'contains <label> tags for the ownername, email, phone and message form inputs ' do
      labels = parsed_html.search('label')
      expect(labels[0].attributes["for"]).to_not be_nil, "No label tags found"
@@ -57,14 +65,6 @@
      expect(labels[3].attributes["for"].value).to eq("message"), "Include a label with a 'for' attribute set to 'message'"
    end

    it 'contains an <textarea> tag with an id of "message" and placeholder equal to "Dog notes" ' do
      input = parsed_html.search('textarea')[0]
      expect(input.attributes["id"]).to_not be_nil, "No id attribute was found on the 'textarea' tag"
      expect(input.attributes["id"]).to match(/message/) , "The textarea tag should have an id set to 'message'"
      expect(input.attributes["placeholder"]).to_not be_nil, "No placeholder attribute was found on the 'textarea' tag"
      expect(input.attributes["placeholder"]).to match(/Dog notes/) , "The third input should have a placeholder set to 'Dog notes'"
    end

    it 'contains a checkbox' do
      inputs = parsed_html.search('input')
      expect(inputs.any? { |i| i.attributes["type"].value == "checkbox" }).to be true

