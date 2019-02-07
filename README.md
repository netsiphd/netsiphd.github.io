# netsiphd.github.io

This currently hosts the page for the modern journal club. Perhaps in the
future we will have other uses for the netsiphd brand, but for now it should
suffice to have the root of the URL link to the journal club.

How to update this page:

0. You must be a collaborator on the repository before you have the
ability to push changes. If you need permissions, ask around (on Slack
or in person).
1. Update `journal_club.md`. For consistency, it would be nice to follow
Chicago author-date style when formatting the references to papers. Use
bare links (`<link.com>`) for URLs and italicize journal titles. For arXiv
papers, use the format `arXiv:$ID [$subject]`, using the subject in boldface
on the abstract page. **Use arXiv abs links, not pdf links.**
2. Run `make`. You must have [pandoc](https://pandoc.org/) installed. I don't
what minimum version is required, but prefer 2.0+.
3. Commit the changed markdown *and html* files and push. If you don't commit
the HTML file, the website won't change; if you don't commit the markdown, the
website and the repository will get out of sync.

