ActiveAdmin.register Lecture do
	permit_params :contents, :attachments,  :course_id, :user_id

		form do |f|
	    	  f.inputs "Lecture Details" do
		      f.input :contents
		      f.input :attachments, :as => :file
		      f.input :course_id, as: :select , multiple: false, collection: Course.all.map{|c| [c.title, c.id]}

	    end
	    f.actions
	  end
end