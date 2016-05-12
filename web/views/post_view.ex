defmodule SimpleBlog.PostView do
  use SimpleBlog.Web, :view

  def render("index.json", %{posts: posts}) do
    %{posts: render_many(posts, SimpleBlog.PostView, "slim_post.json")}
  end

  def render("show.json", %{post: post}) do
    %{post: render_one(post, SimpleBlog.PostView, "post.json")}
  end

  def render("post.json", %{post: post}) do
    %{id: post.id,
      title: post.title,
      categories: post.categories,
      content: post.content}
  end

  def render("slim_post.json", %{post: post}) do
    %{id: post.id,
      title: post.title,
      categories: post.categories}
  end
end
