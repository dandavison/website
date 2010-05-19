(setq org-publish-use-timestamps-flag nil)

(setq org-publish-project-alist 
      '(
	;; General website components
	
	("website-org"
	 :base-directory "~/website"
	 :base-extension "org"
	 :publishing-directory "~/pub_html"
	 :publishing-function org-publish-org-to-html
	 :completion-function (lambda() (rename-files-html-to-php '("~/pub_html/index")))
	 :headline-levels 3
	 :section-numbers nil
	 :table-of-contents nil
	 :style "<link rel=stylesheet
                       href=\"style.css\"
                       type=\"text/css\">"
	 :auto-preamble t
	 :auto-postamble nil
	 :recursive t)
     
	("website-images"
	 :base-directory "~/website"
	 :base-extension "jpg\\|gif\\|png"
	 :publishing-directory "~/pub_html"
	 :publishing-function org-publish-attachment)

	("website-etc"
	 :base-directory "~/website"
	 :base-extension "css"
	 :publishing-directory "~/pub_html"
	 :publishing-function org-publish-attachment
	 :recursive t)

	("software"
	 :base-directory "~/website/software"
	 :base-extension "."
	 :publishing-directory "~/pub_html/software"
	 :publishing-function org-publish-attachment
	 :completion-function (lambda() (rename-files-html-to-php '("~/pub_html/software"))))
	
	;; plants
	
	("floras"
	 :base-directory "~/plants/floras"
	 :base-extension "org"
	 :publishing-directory "~/pub_html/plants/floras"
	 :publishing-function org-publish-org-to-html
	 :preparation-function
	 (lambda () (plants-floras-preparation-function "~/plants/all.flora.org"
							'(("all" . nil)
							  ("romania" . "Romania_1|Romania_2|Romania_3|Romania_4|Romania_5")
							  ("garden" . "garden"))
							"~/plants/floras"))
	 ;; :completion-function plants-floras-completion-function
	 :completion-function (lambda() (rename-files-html-to-php '("~/pub_html/plants/floras/index")))
	 :headline-levels 1
	 :section-numbers nil
	 :table-of-contents nil
	 :style "<link rel=stylesheet
                       href=\"../plants.css\"
                       type=\"text/css\">"
	 :auto-preamble nil
	 :auto-postamble nil)

	("plants-taxon-pages-org"
	 :base-directory "~/plants/floras/taxon-pages"
	 :base-extension "org"
	 :publishing-directory "~/pub_html/plants/floras/taxon-pages"
	 :publishing-function org-publish-org-to-html
	 :preparation-function plants-taxon-pages-preparation-function
	 :completion-function plants-taxon-pages-completion-function
	 :headline-levels 3
	 :section-numbers nil
	 :table-of-contents nil
	 :style "<link rel=stylesheet
                       href=\"plants.css\"
                       type=\"text/css\">"
	 :auto-preamble t
	 :auto-postamble nil)

	("plants-etc"
	 :base-directory "~/plants"
	 :base-extension "css\\|html"
	 :publishing-directory "~/pub_html/plants"
	 :publishing-function org-publish-attachment)
	 
	
	("plants-floras-etc"
	 :base-directory "~/plants/floras"
	 :base-extension "css\\|html"
	 :publishing-directory "~/pub_html/plants/floras"
	 :publishing-function org-publish-attachment)
	
	;; 	("plants-lores"
	;; 	 :base-directory "~/plants/lores"
	;; 	 :base-extension "jpg\\|gif\\|png"
	;; 	 :publishing-directory "~/pub_html/plants/lores"
	;; 	 :publishing-function org-publish-attachment)

	;; 	("plants-hires"
	;; 	 :base-directory "~/plants/hires"
	;; 	 :base-extension "jpg\\|gif\\|png"
	;; 	 :publishing-directory "~/pub_html/plants/hires"
	;; 	 :publishing-function org-publish-attachment)
	
	
	;; ("plants" :components ("plants-org" "plants-taxon-pages-org" "plants-etc"))

	("litsearch-org"
	 :base-directory "~/website/mary/litsearch"
	 :publishing-directory "~/pub_html-mary/litsearch"
	 :base-extension "org"
	 :publishing-function org-publish-org-to-html
	 :completion-function (lambda() (rename-files-html-to-php '("~/pub_html-mary/litsearch/form" "~/pub_html-mary/litsearch/results-proximity" "~/pub_html-mary/litsearch/results-advanced" "~/pub_html-mary/litsearch/results-random")))
	 :headline-levels 3
	 :section-numbers nil
	 :table-of-contents nil
	 :style "<link rel=stylesheet
                       href=\"style.css\"
                       type=\"text/css\">"
	 :auto-preamble t
	 :auto-postamble nil)

	("litsearch-etc"
	 :base-directory "~/website/mary/litsearch"
	 :base-extension "txt\\|php\\|pl\\|css\\|sh\\|py"
	 :publishing-directory "~/pub_html-mary/litsearch"
	 :publishing-function org-publish-attachment)

	("mary-org"
	 :base-directory "~/website/mary"
	 :base-extension "org\\|txt"
	 :publishing-directory "~/pub_html-mary"
	 :publishing-function org-publish-org-to-html
	 ;; :completion-function (lambda() 
;; 				(rename-files-html-to-php '("~/pub_html-mary/index" "~/pub_html-mary/georgeeliot" ))
;; 				(copy-file "~/pub_html-mary/index.html.bak" "~/pub_html-mary/index.html"))
	 :headline-levels 3
	 :section-numbers nil
	 :table-of-contents nil
	 :style "<link rel=stylesheet
                       href=\"style.css\"
                         type=\"text/css\">"
	 :auto-preamble t
	 :auto-postamble nil
	 :recursive t)

	("mary-etc"
	 :base-directory "~/website/mary"
	 :base-extension "css\\|jpg\\|jpeg\\|gif\\|html\\|org"
	 :publishing-directory "~/pub_html-mary"
	 :publishing-function org-publish-attachment
	 :recursive t)
	
	("litsearch" :components ("litsearch-org" "litsearch-etc"))
	("mary-website" :components ("mary-org" "mary-etc"))
	("plants" :components ("floras" "plants-etc" "plants-floras-etc")) ;; "plants-taxon-pages-org"
	("website" :components ("website-org" "website-images" "website-etc" "software" "litsearch-etc" "litsearch-org"))))


(defun rename-files-html-to-php (files)
  (let (html)
    (while (setq file (pop files))
      (setq html (concat file ".html"))
      (when (file-exists-p html) (rename-file html (concat file ".php") t)))))

(load "~/src/plants/plants.el")

(defun plants-taxon-pages-preparation-function ()
  (shell-command "sed -i 's/jpg/gif/' ~/pub_html/plants/floras/taxon-pages/*.html"))

(defun plants-taxon-pages-completion-function ()
  (shell-command "sed -i 's/jpg/gif/' ~/pub_html/plants/floras/taxon-pages/*.html"))

(defun plants-insert-preamble (flora)
  "Insert title and links to different views at top of org file"
  (beginning-of-buffer)
  (insert (concat "#+title: Dan's plant photos:" flora "\n"))
  (insert (concat "[[file:" flora "-full-view.flora.org][full view]]\n"))
  (insert (concat "[[file:" flora "-family-view.flora.org][family view]]\n"))
  (insert (concat "[[file:" flora "-tree-view.flora.org][tree view]]\n")))

(defun plants-floras-preparation-function (master-flora-file floras-tags-alist output-dir)
  "Create sub-floras from the `master-flora-file', and for each sub-flora create the different views.
Specifically, `floras-tags-alist' contains a list of the
requested sub-floras, together with the strings necessary to
generate them via a tags sparse tree operation. Once the
sub-flora is generated, 3 org files are written into `output-dir'
corresponding to the 3 'views': 'full view' (unaltered), family
view (subterminal nodes receive a single photo from each leaf,
and the leaves are then deleted), and 'tree view' (The tree is
rendered directly into a tree diagram in html (not by org-mode);
each node in that diagram is a hyperlink to a page containing a
single representative photo from each descendent leaf of that
node. Thus clicking on sucessively more inclusive nodes reveals
successively more phylogenetically diverse collections of
images.) "
  (let (el flora tag buffer-copy)
    (while (setq el (pop floras-tags-alist))
      (setq flora (car el)) ; I don't know if an alist is the appropriate list type,
      (setq tag (cdr el)) ; and even if it is, this may well not be the best way to process them.
      (with-temp-buffer
	(insert-file-contents master-flora-file)
	(when tag
	  (org-tags-sparse-tree nil tag)
	  (outline-delete-invisible))
	(setq buffer-copy (buffer-string))
	;; create full view org file
	(with-temp-buffer
	  (insert buffer-copy)
	  (plants-insert-preamble flora)
	  (write-file (concat output-dir "/" flora "-full-view.flora.org")))
	;; create family view org file
	(with-temp-buffer
	  (insert buffer-copy)
	  (plants-make-subterminal-taxa-view)
	  (plants-insert-preamble flora)
	  (write-file (concat output-dir "/" flora "-family-view.flora.org")))
	;; create tree view org file
	(with-temp-buffer
	  (insert buffer-copy)
	  (org-mode) ;; otherwise org-complex-heading-regexp is undefined in org-export-parse; probably I'm doing something suboptimally
	  ;;	  (plants-insert-preamble flora) how to do this nicely when tree view is created directly in html?
	  (org-export-as-html-tree-view)
	  ;;	  (replace-regexp "href=\".*/\([^/]+\)/\"" "href=\"taxon-pages/\1.html\"" nil (point-min) (point-max))
	  ;;	  (while (re-search-forward "href=\".*/\([^/]+\)/\"") (replace-match  "href=\"taxon-pages/\1.html\""))
	  (write-file (concat output-dir "/" flora "-tree-view.flora.html")))))))
